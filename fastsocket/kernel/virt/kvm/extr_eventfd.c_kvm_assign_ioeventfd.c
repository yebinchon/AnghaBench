
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_ioeventfd {int flags; int len; scalar_t__ addr; int datamatch; int fd; } ;
struct kvm {int slots_lock; int ioeventfds; } ;
struct eventfd_ctx {int dummy; } ;
struct _ioeventfd {scalar_t__ addr; int length; int wildcard; int list; int dev; int datamatch; struct eventfd_ctx* eventfd; } ;
typedef enum kvm_bus { ____Placeholder_kvm_bus } kvm_bus ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct eventfd_ctx*) ;
 int KVM_IOEVENTFD_FLAG_DATAMATCH ;
 int KVM_IOEVENTFD_FLAG_PIO ;
 int KVM_IOEVENTFD_VALID_FLAG_MASK ;
 int KVM_MMIO_BUS ;
 int KVM_PIO_BUS ;
 int PTR_ERR (struct eventfd_ctx*) ;
 struct eventfd_ctx* eventfd_ctx_fdget (int ) ;
 int eventfd_ctx_put (struct eventfd_ctx*) ;
 scalar_t__ ioeventfd_check_collision (struct kvm*,struct _ioeventfd*) ;
 int ioeventfd_ops ;
 int kfree (struct _ioeventfd*) ;
 int kvm_io_bus_register_dev (struct kvm*,int,int *) ;
 int kvm_iodevice_init (int *,int *) ;
 struct _ioeventfd* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
kvm_assign_ioeventfd(struct kvm *kvm, struct kvm_ioeventfd *args)
{
 int pio = args->flags & KVM_IOEVENTFD_FLAG_PIO;
 enum kvm_bus bus_idx = pio ? KVM_PIO_BUS : KVM_MMIO_BUS;
 struct _ioeventfd *p;
 struct eventfd_ctx *eventfd;
 int ret;


 switch (args->len) {
 case 1:
 case 2:
 case 4:
 case 8:
  break;
 default:
  return -EINVAL;
 }


 if (args->addr + args->len < args->addr)
  return -EINVAL;


 if (args->flags & ~KVM_IOEVENTFD_VALID_FLAG_MASK)
  return -EINVAL;

 eventfd = eventfd_ctx_fdget(args->fd);
 if (IS_ERR(eventfd))
  return PTR_ERR(eventfd);

 p = kzalloc(sizeof(*p), GFP_KERNEL);
 if (!p) {
  ret = -ENOMEM;
  goto fail;
 }

 INIT_LIST_HEAD(&p->list);
 p->addr = args->addr;
 p->length = args->len;
 p->eventfd = eventfd;


 if (args->flags & KVM_IOEVENTFD_FLAG_DATAMATCH)
  p->datamatch = args->datamatch;
 else
  p->wildcard = 1;

 mutex_lock(&kvm->slots_lock);


 if (ioeventfd_check_collision(kvm, p)) {
  ret = -EEXIST;
  goto unlock_fail;
 }

 kvm_iodevice_init(&p->dev, &ioeventfd_ops);

 ret = kvm_io_bus_register_dev(kvm, bus_idx, &p->dev);
 if (ret < 0)
  goto unlock_fail;

 list_add_tail(&p->list, &kvm->ioeventfds);

 mutex_unlock(&kvm->slots_lock);

 return 0;

unlock_fail:
 mutex_unlock(&kvm->slots_lock);

fail:
 kfree(p);
 eventfd_ctx_put(eventfd);

 return ret;
}
