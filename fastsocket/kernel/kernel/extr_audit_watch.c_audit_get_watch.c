
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_watch {int count; } ;


 int atomic_inc (int *) ;

void audit_get_watch(struct audit_watch *watch)
{
 atomic_inc(&watch->count);
}
