
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int YYSTYPE ;
struct TYPE_4__ {unsigned int stacksize; int * p_base; int * l_base; int * s_base; } ;
struct TYPE_5__ {TYPE_1__ yystack; } ;
typedef TYPE_2__ YYParseState ;
typedef int YYLTYPE ;
typedef int YYINT ;


 scalar_t__ malloc (unsigned int) ;
 int memset (int *,int ,unsigned int) ;

__attribute__((used)) static YYParseState *
yyNewState(unsigned size)
{
    YYParseState *p = (YYParseState *) malloc(sizeof(YYParseState));
    if (p == ((void*)0)) return ((void*)0);

    p->yystack.stacksize = size;
    if (size == 0)
    {
        p->yystack.s_base = ((void*)0);
        p->yystack.l_base = ((void*)0);



        return p;
    }
    p->yystack.s_base = (YYINT *) malloc(size * sizeof(YYINT));
    if (p->yystack.s_base == ((void*)0)) return ((void*)0);
    p->yystack.l_base = (YYSTYPE *) malloc(size * sizeof(YYSTYPE));
    if (p->yystack.l_base == ((void*)0)) return ((void*)0);
    memset(p->yystack.l_base, 0, size * sizeof(YYSTYPE));






    return p;
}
