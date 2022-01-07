
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kvm_vcpu {int cpu; unsigned int vcpu_id; int preempted; scalar_t__ run; int wq; int * pid; struct kvm* kvm; int mutex; } ;
struct kvm {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __GFP_ZERO ;
 struct page* alloc_page (int) ;
 int free_page (unsigned long) ;
 int init_waitqueue_head (int *) ;
 int kvm_arch_vcpu_init (struct kvm_vcpu*) ;
 int kvm_vcpu_set_dy_eligible (struct kvm_vcpu*,int) ;
 int kvm_vcpu_set_in_spin_loop (struct kvm_vcpu*,int) ;
 int mutex_init (int *) ;
 scalar_t__ page_address (struct page*) ;

int kvm_vcpu_init(struct kvm_vcpu *vcpu, struct kvm *kvm, unsigned id)
{
 struct page *page;
 int r;

 mutex_init(&vcpu->mutex);
 vcpu->cpu = -1;
 vcpu->kvm = kvm;
 vcpu->vcpu_id = id;
 vcpu->pid = ((void*)0);
 init_waitqueue_head(&vcpu->wq);

 page = alloc_page(GFP_KERNEL | __GFP_ZERO);
 if (!page) {
  r = -ENOMEM;
  goto fail;
 }
 vcpu->run = page_address(page);

 kvm_vcpu_set_in_spin_loop(vcpu, 0);
 kvm_vcpu_set_dy_eligible(vcpu, 0);
 vcpu->preempted = 0;

 r = kvm_arch_vcpu_init(vcpu);
 if (r < 0)
  goto fail_free_run;
 return 0;

fail_free_run:
 free_page((unsigned long)vcpu->run);
fail:
 return r;
}
