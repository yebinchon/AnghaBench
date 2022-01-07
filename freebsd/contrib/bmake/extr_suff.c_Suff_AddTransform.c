
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int type; void* children; void* commands; } ;
struct TYPE_9__ {char* name; int parents; int children; } ;
typedef TYPE_1__ Suff ;
typedef int * LstNode ;
typedef TYPE_2__ GNode ;


 scalar_t__ DEBUG (int ) ;
 int FALSE ;
 int Lst_AtEnd (int ,TYPE_2__*) ;
 scalar_t__ Lst_Datum (int *) ;
 int Lst_Destroy (void*,int *) ;
 int * Lst_Find (int ,char*,int ) ;
 void* Lst_Init (int ) ;
 int OP_TRANSFORM ;
 int SUFF ;
 int SuffGNHasNameP ;
 int SuffInsert (int ,TYPE_1__*) ;
 int SuffParseTransform (char*,TYPE_1__**,TYPE_1__**) ;
 TYPE_2__* Targ_NewGN (char*) ;
 int debug_file ;
 int fprintf (int ,char*,char*,char*) ;
 int transforms ;

GNode *
Suff_AddTransform(char *line)
{
    GNode *gn;
    Suff *s,
                  *t;
    LstNode ln;

    ln = Lst_Find(transforms, line, SuffGNHasNameP);
    if (ln == ((void*)0)) {




 gn = Targ_NewGN(line);
 (void)Lst_AtEnd(transforms, gn);
    } else {






 gn = (GNode *)Lst_Datum(ln);
 Lst_Destroy(gn->commands, ((void*)0));
 Lst_Destroy(gn->children, ((void*)0));
 gn->commands = Lst_Init(FALSE);
 gn->children = Lst_Init(FALSE);
    }

    gn->type = OP_TRANSFORM;

    (void)SuffParseTransform(line, &s, &t);




    if (DEBUG(SUFF)) {
 fprintf(debug_file, "defining transformation from `%s' to `%s'\n",
  s->name, t->name);
    }
    SuffInsert(t->children, s);
    SuffInsert(s->parents, t);

    return (gn);
}
