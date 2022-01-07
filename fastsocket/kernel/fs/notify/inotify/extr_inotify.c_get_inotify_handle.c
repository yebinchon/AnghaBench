
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotify_handle {int count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void get_inotify_handle(struct inotify_handle *ih)
{
 atomic_inc(&ih->count);
}
