
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* file; TYPE_1__* suff; } ;
struct TYPE_6__ {int searchPath; } ;
typedef TYPE_2__ Src ;
typedef int Lst ;


 scalar_t__ DEBUG (int ) ;
 char* Dir_FindFile (char*,int ) ;
 int Lst_AtEnd (int ,TYPE_2__*) ;
 scalar_t__ Lst_DeQueue (int ) ;
 int Lst_IsEmpty (int ) ;
 int SUFF ;
 int SuffAddLevel (int ,TYPE_2__*) ;
 int TARG_NOCREATE ;
 int * Targ_FindNode (char*,int ) ;
 int debug_file ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;

__attribute__((used)) static Src *
SuffFindThem(Lst srcs, Lst slst)
{
    Src *s;
    Src *rs;
    char *ptr;

    rs = ((void*)0);

    while (!Lst_IsEmpty (srcs)) {
 s = (Src *)Lst_DeQueue(srcs);

 if (DEBUG(SUFF)) {
     fprintf(debug_file, "\ttrying %s...", s->file);
 }





 if (Targ_FindNode(s->file, TARG_NOCREATE) != ((void*)0)) {



     rs = s;
     break;
 }

 if ((ptr = Dir_FindFile(s->file, s->suff->searchPath)) != ((void*)0)) {
     rs = s;



     free(ptr);
     break;
 }

 if (DEBUG(SUFF)) {
     fprintf(debug_file, "not there\n");
 }

 SuffAddLevel(srcs, s);
 Lst_AtEnd(slst, s);
    }

    if (DEBUG(SUFF) && rs) {
 fprintf(debug_file, "got it\n");
    }
    return (rs);
}
