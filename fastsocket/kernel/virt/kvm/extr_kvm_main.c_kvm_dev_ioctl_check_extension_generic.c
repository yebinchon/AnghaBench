
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long KVM_MAX_IRQ_ROUTES ;
 long kvm_dev_ioctl_check_extension (long) ;

__attribute__((used)) static long kvm_dev_ioctl_check_extension_generic(long arg)
{
 switch (arg) {
 case 128:
 case 133:
 case 130:



 case 132:
  return 1;




 default:
  break;
 }
 return kvm_dev_ioctl_check_extension(arg);
}
