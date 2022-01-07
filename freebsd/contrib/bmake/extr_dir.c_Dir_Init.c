
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refCount; int files; int name; scalar_t__ hits; } ;
typedef int Path ;


 int Dir_InitCur (char const*) ;
 int FALSE ;
 int Hash_InitTable (int *,int) ;
 void* Lst_Init (int ) ;
 TYPE_1__* bmake_malloc (int) ;
 int bmake_strdup (char*) ;
 void* dirSearchPath ;
 TYPE_1__* dotLast ;
 int lmtimes ;
 int mtimes ;
 void* openDirectories ;

void
Dir_Init(const char *cdname)
{
    if (!cdname) {
 dirSearchPath = Lst_Init(FALSE);
 openDirectories = Lst_Init(FALSE);
 Hash_InitTable(&mtimes, 0);
 Hash_InitTable(&lmtimes, 0);
 return;
    }
    Dir_InitCur(cdname);

    dotLast = bmake_malloc(sizeof(Path));
    dotLast->refCount = 1;
    dotLast->hits = 0;
    dotLast->name = bmake_strdup(".DOTLAST");
    Hash_InitTable(&dotLast->files, -1);
}
