
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ prec; int assoc; } ;
typedef TYPE_1__ bucket ;


 int IS_IDENT (int) ;
 scalar_t__ UNDEFINED ;
 int* cptr ;
 TYPE_1__* get_literal () ;
 TYPE_1__* get_name () ;
 scalar_t__ isalpha (int) ;
 int line ;
 int lineno ;
 int nextc () ;
 size_t nrules ;
 int prec_redeclared () ;
 int * rassoc ;
 scalar_t__* rprec ;
 int syntax_error (int ,int ,int*) ;

__attribute__((used)) static int
mark_symbol(void)
{
    int c;
    bucket *bp = ((void*)0);

    c = cptr[1];
    if (c == '%' || c == '\\')
    {
 cptr += 2;
 return (1);
    }

    if (c == '=')
 cptr += 2;
    else if ((c == 'p' || c == 'P') &&
      ((c = cptr[2]) == 'r' || c == 'R') &&
      ((c = cptr[3]) == 'e' || c == 'E') &&
      ((c = cptr[4]) == 'c' || c == 'C') &&
      ((c = cptr[5], !IS_IDENT(c))))
 cptr += 5;
    else
 syntax_error(lineno, line, cptr);

    c = nextc();
    if (isalpha(c) || c == '_' || c == '.' || c == '$')
 bp = get_name();
    else if (c == '\'' || c == '"')
 bp = get_literal();
    else
    {
 syntax_error(lineno, line, cptr);

    }

    if (rprec[nrules] != UNDEFINED && bp->prec != rprec[nrules])
 prec_redeclared();

    rprec[nrules] = bp->prec;
    rassoc[nrules] = bp->assoc;
    return (0);
}
