
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdesc {int dummy; } ;


 int LIST_REMOVE (struct fdesc*,int ) ;
 int fd_suspend (struct fdesc*) ;
 int free (struct fdesc*) ;
 int link ;

void
fd_deselect(void *p)
{
 struct fdesc *f = p;

 LIST_REMOVE(f, link);
 fd_suspend(f);
 free(f);
}
