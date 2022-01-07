
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int YYSTYPE ;
struct TYPE_3__ {unsigned int stacksize; int * s_base; int * s_last; int * p_mark; int * p_base; int * l_mark; int * l_base; int * s_mark; } ;
typedef TYPE_1__ YYSTACKDATA ;
typedef int YYLTYPE ;
typedef int YYINT ;


 int YYENOMEM ;
 unsigned int YYINITSTACKSIZE ;
 unsigned int YYMAXDEPTH ;
 char* YYPREFIX ;
 int fprintf (int ,char*,char*,unsigned int) ;
 scalar_t__ realloc (int *,unsigned int) ;
 int stderr ;
 scalar_t__ yydebug ;

__attribute__((used)) static int yygrowstack(YYSTACKDATA *data)
{
    int i;
    unsigned newsize;
    YYINT *newss;
    YYSTYPE *newvs;




    if ((newsize = data->stacksize) == 0)
        newsize = YYINITSTACKSIZE;
    else if (newsize >= YYMAXDEPTH)
        return YYENOMEM;
    else if ((newsize *= 2) > YYMAXDEPTH)
        newsize = YYMAXDEPTH;

    i = (int) (data->s_mark - data->s_base);
    newss = (YYINT *)realloc(data->s_base, newsize * sizeof(*newss));
    if (newss == 0)
        return YYENOMEM;

    data->s_base = newss;
    data->s_mark = newss + i;

    newvs = (YYSTYPE *)realloc(data->l_base, newsize * sizeof(*newvs));
    if (newvs == 0)
        return YYENOMEM;

    data->l_base = newvs;
    data->l_mark = newvs + i;
    data->stacksize = newsize;
    data->s_last = data->s_base + newsize - 1;





    return 0;
}
