
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int type; char* name; int commands; int children; } ;
struct TYPE_10__ {int children; int cp; TYPE_3__* node; struct TYPE_10__* parent; TYPE_1__* suff; int pref; int file; } ;
struct TYPE_9__ {int refCount; int parents; } ;
typedef TYPE_1__ Suff ;
typedef TYPE_2__ Src ;
typedef int * LstNode ;
typedef int Lst ;
typedef TYPE_3__ GNode ;


 scalar_t__ DEBUG (int ) ;
 int FALSE ;
 int Lst_AtEnd (int ,TYPE_2__*) ;
 int Lst_Close (int ) ;
 scalar_t__ Lst_Datum (int *) ;
 int * Lst_Find (int ,char*,int ) ;
 int Lst_Init (int ) ;
 scalar_t__ Lst_IsEmpty (int ) ;
 int * Lst_Member (int ,TYPE_1__*) ;
 int * Lst_Next (int ) ;
 int Lst_Open (int ) ;
 int OP_OPTIONAL ;
 int SUFF ;
 int SuffSuffHasNameP ;
 TYPE_2__* bmake_malloc (int) ;
 int bmake_strdup (char*) ;
 int debug_file ;
 int fprintf (int ,char*,...) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int) ;
 char* strrchr (char*,char) ;
 int sufflist ;

__attribute__((used)) static Src *
SuffFindCmds(Src *targ, Lst slst)
{
    LstNode ln;
    GNode *t,
         *s;
    int prefLen;
    Suff *suff;
    Src *ret;
    char *cp;

    t = targ->node;
    (void)Lst_Open(t->children);
    prefLen = strlen(targ->pref);

    for (;;) {
 ln = Lst_Next(t->children);
 if (ln == ((void*)0)) {
     Lst_Close(t->children);
     return ((void*)0);
 }
 s = (GNode *)Lst_Datum(ln);

 if (s->type & OP_OPTIONAL && Lst_IsEmpty(t->commands)) {







     continue;
 }

 cp = strrchr(s->name, '/');
 if (cp == ((void*)0)) {
     cp = s->name;
 } else {
     cp++;
 }
 if (strncmp(cp, targ->pref, prefLen) != 0)
     continue;




 ln = Lst_Find(sufflist, &cp[prefLen], SuffSuffHasNameP);
 if (ln == ((void*)0))
     continue;






 suff = (Suff *)Lst_Datum(ln);

 if (Lst_Member(suff->parents, targ->suff) != ((void*)0))
     break;
    }







    ret = bmake_malloc(sizeof(Src));
    ret->file = bmake_strdup(s->name);
    ret->pref = targ->pref;
    ret->suff = suff;
    suff->refCount++;
    ret->parent = targ;
    ret->node = s;
    ret->children = 0;
    targ->children += 1;





    Lst_AtEnd(slst, ret);
    if (DEBUG(SUFF)) {
 fprintf(debug_file, "\tusing existing source %s\n", s->name);
    }
    return (ret);
}
