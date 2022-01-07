
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int nodemask_t ;


 int ENOSYS ;

int do_migrate_pages(struct mm_struct *mm,
 const nodemask_t *from, const nodemask_t *to, int flags)
{
 return -ENOSYS;
}
