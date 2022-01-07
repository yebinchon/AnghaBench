
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; } ;
struct inode {int dummy; } ;
struct file {struct kvm_vcpu* private_data; } ;


 int kvm_put_kvm (int ) ;

__attribute__((used)) static int kvm_vcpu_release(struct inode *inode, struct file *filp)
{
 struct kvm_vcpu *vcpu = filp->private_data;

 kvm_put_kvm(vcpu->kvm);
 return 0;
}
