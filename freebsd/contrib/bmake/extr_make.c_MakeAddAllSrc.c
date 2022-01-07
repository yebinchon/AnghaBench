
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; char* path; char* name; scalar_t__ made; scalar_t__ mtime; } ;
typedef TYPE_1__ GNode ;


 int ALLSRC ;
 scalar_t__ MADE ;
 int MEMBER ;
 int OODATE ;
 int OP_ARCHV ;
 int OP_EXEC ;
 int OP_INVISIBLE ;
 int OP_JOIN ;
 int OP_MARK ;
 int OP_USE ;
 int OP_USEBEFORE ;
 int Var_Append (int ,char*,TYPE_1__*) ;
 char* Var_Value (int ,TYPE_1__*,char**) ;
 int free (char*) ;
 scalar_t__ now ;

__attribute__((used)) static int
MakeAddAllSrc(void *cgnp, void *pgnp)
{
    GNode *cgn = (GNode *)cgnp;
    GNode *pgn = (GNode *)pgnp;

    if (cgn->type & OP_MARK)
 return (0);
    cgn->type |= OP_MARK;

    if ((cgn->type & (OP_EXEC|OP_USE|OP_USEBEFORE|OP_INVISIBLE)) == 0) {
 char *child, *allsrc;
 char *p1 = ((void*)0), *p2 = ((void*)0);

 if (cgn->type & OP_ARCHV)
     child = Var_Value(MEMBER, cgn, &p1);
 else
     child = cgn->path ? cgn->path : cgn->name;
 if (cgn->type & OP_JOIN) {
     allsrc = Var_Value(ALLSRC, cgn, &p2);
 } else {
     allsrc = child;
 }
 if (allsrc != ((void*)0))
  Var_Append(ALLSRC, allsrc, pgn);
 free(p2);
 if (pgn->type & OP_JOIN) {
     if (cgn->made == MADE) {
  Var_Append(OODATE, child, pgn);
     }
 } else if ((pgn->mtime < cgn->mtime) ||
     (cgn->mtime >= now && cgn->made == MADE))
 {
     Var_Append(OODATE, child, pgn);
 }
 free(p1);
    }
    return (0);
}
