
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int sigset_active; int sigset; } ;
typedef int sigset_t ;


 int SIGKILL ;
 int SIGSTOP ;
 int sigdelsetmask (int *,int) ;
 int sigmask (int ) ;

__attribute__((used)) static int kvm_vcpu_ioctl_set_sigmask(struct kvm_vcpu *vcpu, sigset_t *sigset)
{
 if (sigset) {
  sigdelsetmask(sigset, sigmask(SIGKILL)|sigmask(SIGSTOP));
  vcpu->sigset_active = 1;
  vcpu->sigset = *sigset;
 } else
  vcpu->sigset_active = 0;
 return 0;
}
