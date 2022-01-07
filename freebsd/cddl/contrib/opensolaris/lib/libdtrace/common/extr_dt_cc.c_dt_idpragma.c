
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dt_idhash_t ;
struct TYPE_3__ {scalar_t__ di_iarg; int di_lineno; } ;
typedef TYPE_1__ dt_ident_t ;


 int D_PRAGMA_UNUSED ;
 int xyerror (int ,char*,char*) ;
 int yylineno ;

__attribute__((used)) static int
dt_idpragma(dt_idhash_t *dhp, dt_ident_t *idp, void *ignored)
{
 yylineno = idp->di_lineno;
 xyerror(D_PRAGMA_UNUSED, "unused #pragma %s\n", (char *)idp->di_iarg);
 return (0);
}
