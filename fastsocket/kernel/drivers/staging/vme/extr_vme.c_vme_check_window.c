
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vme_address_t ;


 int EFAULT ;
 int EINVAL ;

 unsigned long long VME_A16_MAX ;

 unsigned long long VME_A24_MAX ;

 unsigned long long VME_A32_MAX ;


 unsigned long long VME_CRCSR_MAX ;




 int printk (char*) ;

__attribute__((used)) static int vme_check_window(vme_address_t aspace, unsigned long long vme_base,
 unsigned long long size)
{
 int retval = 0;

 switch (aspace) {
 case 136:
  if (((vme_base + size) > VME_A16_MAX) ||
    (vme_base > VME_A16_MAX))
   retval = -EFAULT;
  break;
 case 135:
  if (((vme_base + size) > VME_A24_MAX) ||
    (vme_base > VME_A24_MAX))
   retval = -EFAULT;
  break;
 case 134:
  if (((vme_base + size) > VME_A32_MAX) ||
    (vme_base > VME_A32_MAX))
   retval = -EFAULT;
  break;
 case 133:




  break;
 case 132:
  if (((vme_base + size) > VME_CRCSR_MAX) ||
    (vme_base > VME_CRCSR_MAX))
   retval = -EFAULT;
  break;
 case 131:
 case 130:
 case 129:
 case 128:

  break;
 default:
  printk("Invalid address space\n");
  retval = -EINVAL;
  break;
 }

 return retval;
}
