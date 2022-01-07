
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int type; char* name; int parents; int children; int unmade; int order_succ; int order_pred; } ;
typedef int LstNode ;
typedef int Lst ;
typedef TYPE_1__ GNode ;


 int Arch_ParseArchive (char**,int ,TYPE_1__*) ;
 scalar_t__ DEBUG (int ) ;
 int FALSE ;
 int Lst_AtEnd (int ,TYPE_1__*) ;
 scalar_t__ Lst_Datum (int ) ;
 scalar_t__ Lst_DeQueue (int ) ;
 int Lst_Destroy (int ,int *) ;
 int Lst_Init (int ) ;
 int Lst_InsertBefore (int ,int ,TYPE_1__*) ;
 int Lst_IsEmpty (int ) ;
 int Lst_Member (int ,TYPE_1__*) ;
 int Lst_Prev (int ) ;
 int Lst_Remove (int ,int ) ;
 int OP_ARCHV ;
 int OP_WAIT ;
 int SUFF ;
 int SuffExpandWildcards (int ,TYPE_1__*) ;
 int TARG_CREATE ;
 TYPE_1__* Targ_FindNode (char*,int ) ;
 int VARF_UNDEFERR ;
 int VARF_WANTRES ;
 char* Var_Parse (char*,TYPE_1__*,int,int*,void**) ;
 char* Var_Subst (int *,char*,TYPE_1__*,int) ;
 int debug_file ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int * strchr (char*,char) ;
 char* var_Error ;

__attribute__((used)) static void
SuffExpandChildren(LstNode cln, GNode *pgn)
{
    GNode *cgn = (GNode *)Lst_Datum(cln);
    GNode *gn;
    char *cp;

    if (!Lst_IsEmpty(cgn->order_pred) || !Lst_IsEmpty(cgn->order_succ))

 return;

    if (cgn->type & OP_WAIT)

 return;







    if (strchr(cgn->name, '$') == ((void*)0)) {
 SuffExpandWildcards(cln, pgn);
 return;
    }

    if (DEBUG(SUFF)) {
 fprintf(debug_file, "Expanding \"%s\"...", cgn->name);
    }
    cp = Var_Subst(((void*)0), cgn->name, pgn, VARF_UNDEFERR|VARF_WANTRES);

    if (cp != ((void*)0)) {
 Lst members = Lst_Init(FALSE);

 if (cgn->type & OP_ARCHV) {





     char *sacrifice = cp;

     (void)Arch_ParseArchive(&sacrifice, members, pgn);
 } else {







     char *start;
     char *initcp = cp;

     for (start = cp; *start == ' ' || *start == '\t'; start++)
  continue;
     for (cp = start; *cp != '\0'; cp++) {
  if (*cp == ' ' || *cp == '\t') {




      *cp++ = '\0';
      gn = Targ_FindNode(start, TARG_CREATE);
      (void)Lst_AtEnd(members, gn);
      while (*cp == ' ' || *cp == '\t') {
   cp++;
      }




      start = cp--;
  } else if (*cp == '$') {




      char *junk;
      int len;
      void *freeIt;

      junk = Var_Parse(cp, pgn, VARF_UNDEFERR|VARF_WANTRES,
   &len, &freeIt);
      if (junk != var_Error) {
   cp += len - 1;
      }

      free(freeIt);
  } else if (*cp == '\\' && cp[1] != '\0') {



      cp++;
  }
     }

     if (cp != start) {



  gn = Targ_FindNode(start, TARG_CREATE);
  (void)Lst_AtEnd(members, gn);
     }




     cp = initcp;
 }




 while(!Lst_IsEmpty(members)) {
     gn = (GNode *)Lst_DeQueue(members);

     if (DEBUG(SUFF)) {
  fprintf(debug_file, "%s...", gn->name);
     }

     (void)Lst_InsertBefore(pgn->children, cln, gn);
     (void)Lst_AtEnd(gn->parents, pgn);
     pgn->unmade++;

     SuffExpandWildcards(Lst_Prev(cln), pgn);
 }
 Lst_Destroy(members, ((void*)0));




 free(cp);
    }
    if (DEBUG(SUFF)) {
 fprintf(debug_file, "\n");
    }





    pgn->unmade--;
    Lst_Remove(pgn->children, cln);
    Lst_Remove(cgn->parents, Lst_Member(cgn->parents, pgn));
}
