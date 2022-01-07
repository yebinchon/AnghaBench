
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 scalar_t__ IS_ERR (struct kvm*) ;
 int PTR_ERR (struct kvm*) ;
 int anon_inode_getfd (char*,int *,struct kvm*,int ) ;
 struct kvm* kvm_create_vm () ;
 int kvm_put_kvm (struct kvm*) ;
 int kvm_vm_fops ;

__attribute__((used)) static int kvm_dev_ioctl_create_vm(void)
{
 int fd;
 struct kvm *kvm;

 kvm = kvm_create_vm();
 if (IS_ERR(kvm))
  return PTR_ERR(kvm);
 fd = anon_inode_getfd("kvm-vm", &kvm_vm_fops, kvm, 0);
 if (fd < 0)
  kvm_put_kvm(kvm);

 return fd;
}
