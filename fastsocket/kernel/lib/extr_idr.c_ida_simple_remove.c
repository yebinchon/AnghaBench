
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int dummy; } ;


 int BUG_ON (int) ;
 int ida_remove (struct ida*,unsigned int) ;
 int simple_ida_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ida_simple_remove(struct ida *ida, unsigned int id)
{
 BUG_ON((int)id < 0);
 spin_lock(&simple_ida_lock);
 ida_remove(ida, id);
 spin_unlock(&simple_ida_lock);
}
