
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef short YYSTYPE ;
struct TYPE_3__ {unsigned int stacksize; short* s_mark; short* s_base; short* l_base; short* l_mark; short* p_base; short* p_mark; short* s_last; } ;
typedef TYPE_1__ YYSTACKDATA ;
typedef short YYLTYPE ;


 int YYENOMEM ;
 unsigned int YYINITSTACKSIZE ;
 unsigned int YYMAXDEPTH ;
 char* YYPREFIX ;
 int fprintf (int ,char*,char*,unsigned int) ;
 scalar_t__ realloc (short*,unsigned int) ;
 int stderr ;
 scalar_t__ yydebug ;

__attribute__((used)) static int yygrowstack(YYSTACKDATA *data)
{
    int i;
    unsigned newsize;
    short *newss;
    YYSTYPE *newvs;




    if ((newsize = data->stacksize) == 0)
        newsize = YYINITSTACKSIZE;
    else if (newsize >= YYMAXDEPTH)
        return YYENOMEM;
    else if ((newsize *= 2) > YYMAXDEPTH)
        newsize = YYMAXDEPTH;

    i = (int) (data->s_mark - data->s_base);
    newss = (short *)realloc(data->s_base, newsize * sizeof(*newss));
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
