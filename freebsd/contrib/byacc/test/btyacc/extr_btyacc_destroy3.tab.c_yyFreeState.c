
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int yystack; } ;
typedef TYPE_1__ YYParseState ;


 int free (TYPE_1__*) ;
 int yyfreestack (int *) ;

__attribute__((used)) static void
yyFreeState(YYParseState *p)
{
    yyfreestack(&p->yystack);
    free(p);
}
