
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sle64 ;


 int current_kernel_time () ;
 int utc2ntfs (int ) ;

__attribute__((used)) static inline sle64 get_current_ntfs_time(void)
{
 return utc2ntfs(current_kernel_time());
}
