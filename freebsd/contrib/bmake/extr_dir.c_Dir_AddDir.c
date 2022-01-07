
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct dirent {scalar_t__ d_fileno; int d_name; } ;
struct TYPE_9__ {int refCount; } ;
struct TYPE_8__ {int refCount; int files; scalar_t__ hits; int name; } ;
typedef TYPE_1__ Path ;
typedef int * LstNode ;
typedef int * Lst ;


 scalar_t__ DEBUG (int) ;
 int DIR ;
 int DirFindName ;
 int Hash_CreateEntry (int *,int ,int *) ;
 int Hash_InitTable (int *,int) ;
 int Lst_AtEnd (int *,TYPE_1__*) ;
 int Lst_AtFront (int *,TYPE_2__*) ;
 scalar_t__ Lst_Datum (int *) ;
 int * Lst_Find (int *,char const*,int ) ;
 int * Lst_Member (int *,TYPE_1__*) ;
 TYPE_1__* bmake_malloc (int) ;
 int bmake_strdup (char const*) ;
 int closedir (int) ;
 int d ;
 int debug_file ;
 TYPE_2__* dotLast ;
 int fprintf (int ,char*,...) ;
 int * openDirectories ;
 int opendir (char const*) ;
 struct dirent* readdir (int) ;
 scalar_t__ strcmp (char const*,char*) ;

Path *
Dir_AddDir(Lst path, const char *name)
{
    LstNode ln = ((void*)0);
    Path *p = ((void*)0);
    DIR *d;
    struct dirent *dp;

    if (strcmp(name, ".DOTLAST") == 0) {
 ln = Lst_Find(path, name, DirFindName);
 if (ln != ((void*)0))
     return (Path *)Lst_Datum(ln);
 else {
     dotLast->refCount += 1;
     (void)Lst_AtFront(path, dotLast);
 }
    }

    if (path)
 ln = Lst_Find(openDirectories, name, DirFindName);
    if (ln != ((void*)0)) {
 p = (Path *)Lst_Datum(ln);
 if (path && Lst_Member(path, p) == ((void*)0)) {
     p->refCount += 1;
     (void)Lst_AtEnd(path, p);
 }
    } else {
 if (DEBUG(DIR)) {
     fprintf(debug_file, "Caching %s ...", name);
 }

 if ((d = opendir(name)) != ((void*)0)) {
     p = bmake_malloc(sizeof(Path));
     p->name = bmake_strdup(name);
     p->hits = 0;
     p->refCount = 1;
     Hash_InitTable(&p->files, -1);

     while ((dp = readdir(d)) != ((void*)0)) {
  (void)Hash_CreateEntry(&p->files, dp->d_name, ((void*)0));
     }
     (void)closedir(d);
     (void)Lst_AtEnd(openDirectories, p);
     if (path != ((void*)0))
  (void)Lst_AtEnd(path, p);
 }
 if (DEBUG(DIR)) {
     fprintf(debug_file, "done\n");
 }
    }
    return p;
}
