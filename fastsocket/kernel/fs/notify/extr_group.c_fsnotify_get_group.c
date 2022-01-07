
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_group {int refcnt; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void fsnotify_get_group(struct fsnotify_group *group)
{
 atomic_inc(&group->refcnt);
}
