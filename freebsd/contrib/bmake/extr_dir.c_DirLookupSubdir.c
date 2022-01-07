
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_4__ {int name; } ;
typedef TYPE_1__ Path ;


 scalar_t__ DEBUG (int ) ;
 int DIR ;
 int STR_ADDSLASH ;
 char* bmake_strdup (char const*) ;
 scalar_t__ cached_stat (char*,struct stat*) ;
 int debug_file ;
 TYPE_1__* dot ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int nearmisses ;
 char* str_concat (int ,char const*,int ) ;

__attribute__((used)) static char *
DirLookupSubdir(Path *p, const char *name)
{
    struct stat stb;
    char *file;

    if (p != dot) {
 file = str_concat(p->name, name, STR_ADDSLASH);
    } else {



 file = bmake_strdup(name);
    }

    if (DEBUG(DIR)) {
 fprintf(debug_file, "checking %s ...\n", file);
    }

    if (cached_stat(file, &stb) == 0) {
 nearmisses += 1;
 return (file);
    }
    free(file);
    return ((void*)0);
}
