
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int anon_inode_getfd (char*,int *,struct kvm_vcpu*,int ) ;
 int kvm_vcpu_fops ;

__attribute__((used)) static int create_vcpu_fd(struct kvm_vcpu *vcpu)
{
 return anon_inode_getfd("kvm-vcpu", &kvm_vcpu_fops, vcpu, 0);
}
