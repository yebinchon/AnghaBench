
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; char* path; } ;
typedef int Lst ;
typedef TYPE_1__ GNode ;


 char* Dir_FindFile (char*,int ) ;
 int TARGET ;
 int Var_Set (int ,char*,TYPE_1__*,int ) ;
 char* bmake_malloc (size_t) ;
 int free (char*) ;
 int snprintf (char*,size_t,char*,char*) ;
 int strlen (char*) ;

void
Arch_FindLib(GNode *gn, Lst path)
{
    char *libName;
    size_t sz = strlen(gn->name) + 6 - 2;

    libName = bmake_malloc(sz);
    snprintf(libName, sz, "lib%s.a", &gn->name[2]);

    gn->path = Dir_FindFile(libName, path);

    free(libName);




    Var_Set(TARGET, gn->path == ((void*)0) ? gn->name : gn->path, gn, 0);

}
