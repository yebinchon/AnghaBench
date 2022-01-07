
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {unsigned int num; int state; int * parray; } ;


 int LOOPS_HAVE_PREHEADERS ;
 int create_preheader (int ,int) ;

void
create_preheaders (struct loops *loops, int flags)
{
  unsigned i;
  for (i = 1; i < loops->num; i++)
    create_preheader (loops->parray[i], flags);
  loops->state |= LOOPS_HAVE_PREHEADERS;
}
