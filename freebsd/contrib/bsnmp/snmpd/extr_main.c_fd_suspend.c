
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdesc {int id; } ;


 int evDeselectFD (int ,int) ;
 int evInitID (int*) ;
 scalar_t__ evTestID (int) ;
 int evctx ;
 int poll_unregister (int) ;

void
fd_suspend(void *p)
{
 struct fdesc *f = p;







 if (evTestID(f->id)) {
  (void)evDeselectFD(evctx, f->id);
  evInitID(&f->id);
 }

}
