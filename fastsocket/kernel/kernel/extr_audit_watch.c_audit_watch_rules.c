
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct audit_watch {struct list_head rules; } ;



struct list_head *audit_watch_rules(struct audit_watch *watch)
{
 return &watch->rules;
}
