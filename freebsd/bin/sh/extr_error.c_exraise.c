
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int loc; } ;


 int INTOFF ;
 int abort () ;
 int exception ;
 TYPE_1__* handler ;
 int longjmp (int ,int) ;

void
exraise(int e)
{
 INTOFF;
 if (handler == ((void*)0))
  abort();
 exception = e;
 longjmp(handler->loc, 1);
}
