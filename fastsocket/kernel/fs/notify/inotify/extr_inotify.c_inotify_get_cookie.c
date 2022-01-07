
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int atomic_inc_return (int *) ;
 int inotify_cookie ;

u32 inotify_get_cookie(void)
{
 return atomic_inc_return(&inotify_cookie);
}
