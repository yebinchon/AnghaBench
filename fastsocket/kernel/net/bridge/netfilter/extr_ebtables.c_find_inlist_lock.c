
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int dummy; } ;
struct list_head {int dummy; } ;


 int find_inlist_lock_noload (struct list_head*,char const*,int*,struct mutex*) ;
 void* try_then_request_module (int ,char*,char const*,char const*) ;

__attribute__((used)) static void *
find_inlist_lock(struct list_head *head, const char *name, const char *prefix,
   int *error, struct mutex *mutex)
{
 return try_then_request_module(
   find_inlist_lock_noload(head, name, error, mutex),
   "%s%s", prefix, name);
}
