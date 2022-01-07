
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int st_mtime; } ;
struct TYPE_6__ {int type; int mtime; char* path; char* name; int flags; char* fname; int lineno; int iParents; } ;
typedef TYPE_1__ GNode ;
typedef scalar_t__ Boolean ;


 int Arch_MTime (TYPE_1__*) ;
 int Arch_MemMTime (TYPE_1__*) ;
 int CST_UPDATE ;
 scalar_t__ DEBUG (int ) ;
 int DIR ;
 char* Dir_FindFile (char*,int ) ;
 int FROM_DEPEND ;
 int Job_RunTarget (char*,char*) ;
 int Lst_IsEmpty (int ) ;
 int OP_ARCHV ;
 int OP_MEMBER ;
 int OP_NOPATH ;
 int OP_PHONY ;
 int Suff_FindPath (TYPE_1__*) ;
 void* bmake_strdup (char*) ;
 scalar_t__ cached_stats (int *,char*,struct stat*,int ) ;
 int debug_file ;
 int fprintf (int ,char*,char*,char*,...) ;
 int free (char*) ;
 char* makeDependfile ;
 int mtimes ;
 char* progname ;
 int stdout ;
 char* strrchr (char*,char) ;

int
Dir_MTime(GNode *gn, Boolean recheck)
{
    char *fullName;
    struct stat stb;

    if (gn->type & OP_ARCHV) {
 return Arch_MTime(gn);
    } else if (gn->type & OP_PHONY) {
 gn->mtime = 0;
 return 0;
    } else if (gn->path == ((void*)0)) {
 if (gn->type & OP_NOPATH)
     fullName = ((void*)0);
 else {
     fullName = Dir_FindFile(gn->name, Suff_FindPath(gn));
     if (fullName == ((void*)0) && gn->flags & FROM_DEPEND &&
  !Lst_IsEmpty(gn->iParents)) {
  char *cp;

  cp = strrchr(gn->name, '/');
  if (cp) {




      cp++;

      fullName = Dir_FindFile(cp, Suff_FindPath(gn));
      if (fullName) {




   gn->path = bmake_strdup(fullName);
   if (!Job_RunTarget(".STALE", gn->fname))
       fprintf(stdout,
    "%s: %s, %d: ignoring stale %s for %s, "
    "found %s\n", progname, gn->fname, gn->lineno,
    makeDependfile, gn->name, fullName);
      }
  }
     }
     if (DEBUG(DIR))
  fprintf(debug_file, "Found '%s' as '%s'\n",
   gn->name, fullName ? fullName : "(not found)" );
 }
    } else {
 fullName = gn->path;
    }

    if (fullName == ((void*)0)) {
 fullName = bmake_strdup(gn->name);
    }

    if (cached_stats(&mtimes, fullName, &stb, recheck ? CST_UPDATE : 0) < 0) {
 if (gn->type & OP_MEMBER) {
     if (fullName != gn->path)
  free(fullName);
     return Arch_MemMTime(gn);
 } else {
     stb.st_mtime = 0;
 }
    }

    if (fullName && gn->path == ((void*)0)) {
 gn->path = fullName;
    }

    gn->mtime = stb.st_mtime;
    return (gn->mtime);
}
