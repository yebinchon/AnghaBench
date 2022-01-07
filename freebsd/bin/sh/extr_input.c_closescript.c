
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fd; } ;


 int close (scalar_t__) ;
 TYPE_1__* parsefile ;
 int popallfiles () ;

void
closescript(void)
{
 popallfiles();
 if (parsefile->fd > 0) {
  close(parsefile->fd);
  parsefile->fd = 0;
 }
}
