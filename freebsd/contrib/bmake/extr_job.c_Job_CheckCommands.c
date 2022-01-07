
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int commands; } ;
struct TYPE_9__ {int type; int flags; char* fname; int lineno; char* name; int children; int commands; } ;
typedef TYPE_1__ GNode ;
typedef int Boolean ;


 TYPE_4__* DEFAULT ;
 scalar_t__ Dir_MTime (TYPE_1__*,int ) ;
 int FALSE ;
 int FROM_DEPEND ;
 int IMPSRC ;
 int Job_RunTarget (char*,char*) ;
 scalar_t__ Lst_IsEmpty (int ) ;
 int Make_HandleUse (TYPE_4__*,TYPE_1__*) ;
 int OP_LIB ;
 scalar_t__ OP_NOP (int) ;
 int OP_OPTIONAL ;
 int OP_SPECIAL ;
 int TARGET ;
 int TRUE ;
 int Var_Set (int ,int ,TYPE_1__*,int ) ;
 int Var_Value (int ,TYPE_1__*,char**) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*,char const*,...) ;
 int free (char*) ;
 scalar_t__ keepgoing ;
 char* makeDependfile ;
 char* progname ;
 int stdout ;
 void stub1 (char const*,...) ;

Boolean
Job_CheckCommands(GNode *gn, void (*abortProc)(const char *, ...))
{
    if (OP_NOP(gn->type) && Lst_IsEmpty(gn->commands) &&
 ((gn->type & OP_LIB) == 0 || Lst_IsEmpty(gn->children))) {




 if ((DEFAULT != ((void*)0)) && !Lst_IsEmpty(DEFAULT->commands) &&
  (gn->type & OP_SPECIAL) == 0) {
     char *p1;
     Make_HandleUse(DEFAULT, gn);
     Var_Set(IMPSRC, Var_Value(TARGET, gn, &p1), gn, 0);
     free(p1);
 } else if (Dir_MTime(gn, 0) == 0 && (gn->type & OP_SPECIAL) == 0) {







     static const char msg[] = ": don't know how to make";

     if (gn->flags & FROM_DEPEND) {
  if (!Job_RunTarget(".STALE", gn->fname))
      fprintf(stdout, "%s: %s, %d: ignoring stale %s for %s\n",
   progname, gn->fname, gn->lineno, makeDependfile,
   gn->name);
  return TRUE;
     }

     if (gn->type & OP_OPTIONAL) {
  (void)fprintf(stdout, "%s%s %s (ignored)\n", progname,
      msg, gn->name);
  (void)fflush(stdout);
     } else if (keepgoing) {
  (void)fprintf(stdout, "%s%s %s (continuing)\n", progname,
      msg, gn->name);
  (void)fflush(stdout);
    return FALSE;
     } else {
  (*abortProc)("%s%s %s. Stop", progname, msg, gn->name);
  return FALSE;
     }
 }
    }
    return TRUE;
}
