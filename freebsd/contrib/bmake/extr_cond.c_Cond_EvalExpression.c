
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct If {scalar_t__* form; } ;
typedef int Token ;
typedef int Boolean ;


 int COND_INVALID ;
 int PARSE_FATAL ;
 int Parse_Error (int ,char*,char*) ;
 int TOK_NONE ;
 int assert (int ) ;
 char* condExpr ;
 int condPushBack ;
 int do_Cond_EvalExpression (int *) ;
 struct If const* if_info ;
 struct If* ifs ;
 int lhsStrict ;

int
Cond_EvalExpression(const struct If *info, char *line, Boolean *value, int eprint, Boolean strictLHS)
{
    static const struct If *dflt_info;
    const struct If *sv_if_info = if_info;
    char *sv_condExpr = condExpr;
    Token sv_condPushBack = condPushBack;
    int rval;

    lhsStrict = strictLHS;

    while (*line == ' ' || *line == '\t')
 line++;

    if (info == ((void*)0) && (info = dflt_info) == ((void*)0)) {

 for (info = ifs; ; info++)
     if (info->form[0] == 0)
  break;
 dflt_info = info;
    }
    assert(info != ((void*)0));

    if_info = info;
    condExpr = line;
    condPushBack = TOK_NONE;

    rval = do_Cond_EvalExpression(value);

    if (rval == COND_INVALID && eprint)
 Parse_Error(PARSE_FATAL, "Malformed conditional (%s)", line);

    if_info = sv_if_info;
    condExpr = sv_condExpr;
    condPushBack = sv_condPushBack;

    return rval;
}
