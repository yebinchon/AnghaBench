
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int flags; } ;



int get_dumpable(struct mm_struct *mm)
{
 int ret;

 ret = mm->flags & 0x3;
 return (ret >= 2) ? 2 : ret;
}
