
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef TYPE_1__* cap_user_header_t ;
typedef int __u32 ;
struct TYPE_3__ {int version; } ;


 int EFAULT ;
 int EINVAL ;
 int _KERNEL_CAPABILITY_VERSION ;
 unsigned int _LINUX_CAPABILITY_U32S_1 ;
 unsigned int _LINUX_CAPABILITY_U32S_3 ;



 scalar_t__ get_user (int,int *) ;
 int put_user (int ,int *) ;
 int warn_deprecated_v2 () ;
 int warn_legacy_capability_use () ;

__attribute__((used)) static int cap_validate_magic(cap_user_header_t header, unsigned *tocopy)
{
 __u32 version;

 if (get_user(version, &header->version))
  return -EFAULT;

 switch (version) {
 case 130:
  warn_legacy_capability_use();
  *tocopy = _LINUX_CAPABILITY_U32S_1;
  break;
 case 129:
  warn_deprecated_v2();



 case 128:
  *tocopy = _LINUX_CAPABILITY_U32S_3;
  break;
 default:
  if (put_user((u32)_KERNEL_CAPABILITY_VERSION, &header->version))
   return -EFAULT;
  return -EINVAL;
 }

 return 0;
}
