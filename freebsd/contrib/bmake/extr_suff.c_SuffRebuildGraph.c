
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {char* name; } ;
struct TYPE_8__ {char* name; int parents; int children; } ;
struct TYPE_7__ {int len; char* ename; } ;
typedef TYPE_1__ SuffixCmpData ;
typedef TYPE_2__ Suff ;
typedef int * LstNode ;
typedef TYPE_3__ GNode ;


 scalar_t__ Lst_Datum (int *) ;
 int * Lst_Find (int ,char*,int ) ;
 int SuffInsert (int ,TYPE_2__*) ;
 int SuffStrIsPrefix (char*,char*) ;
 int SuffSuffHasNameP ;
 char* SuffSuffIsSuffix (TYPE_2__*,TYPE_1__*) ;
 char* UNCONST (int ) ;
 int strlen (char*) ;
 int sufflist ;

__attribute__((used)) static int
SuffRebuildGraph(void *transformp, void *sp)
{
    GNode *transform = (GNode *)transformp;
    Suff *s = (Suff *)sp;
    char *cp;
    LstNode ln;
    Suff *s2;
    SuffixCmpData sd;




    cp = UNCONST(SuffStrIsPrefix(s->name, transform->name));
    if (cp != ((void*)0)) {
 ln = Lst_Find(sufflist, cp, SuffSuffHasNameP);
 if (ln != ((void*)0)) {




     s2 = (Suff *)Lst_Datum(ln);
     SuffInsert(s2->children, s);
     SuffInsert(s->parents, s2);
     return(0);
 }
    }




    sd.len = strlen(transform->name);
    sd.ename = transform->name + sd.len;
    cp = SuffSuffIsSuffix(s, &sd);
    if (cp != ((void*)0)) {



 cp[1] = '\0';
 ln = Lst_Find(sufflist, transform->name, SuffSuffHasNameP);



 cp[1] = s->name[0];
 if (ln != ((void*)0)) {



     s2 = (Suff *)Lst_Datum(ln);
     SuffInsert(s->children, s2);
     SuffInsert(s2->parents, s);
 }
    }
    return(0);
}
