
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct super_block {int s_time_gran; } ;


 struct timespec current_kernel_time () ;
 struct timespec timespec_trunc (struct timespec,int ) ;

struct timespec current_fs_time(struct super_block *sb)
{
 struct timespec now = current_kernel_time();
 return timespec_trunc(now, sb->s_time_gran);
}
