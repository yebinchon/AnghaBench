
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct proc_dir_entry {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int selinux_proc_get_sid(struct proc_dir_entry *de,
    u16 tclass,
    u32 *sid)
{
 return -EINVAL;
}
