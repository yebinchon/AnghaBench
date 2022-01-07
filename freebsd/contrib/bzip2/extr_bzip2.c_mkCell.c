
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * link; int * name; } ;
typedef TYPE_1__ Cell ;


 scalar_t__ myMalloc (int) ;

__attribute__((used)) static
Cell *mkCell ( void )
{
   Cell *c;

   c = (Cell*) myMalloc ( sizeof ( Cell ) );
   c->name = ((void*)0);
   c->link = ((void*)0);
   return c;
}
