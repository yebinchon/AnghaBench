
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int path ;
typedef int name ;
struct TYPE_5__ {scalar_t__ fts_level; char* fts_name; TYPE_1__* fts_parent; } ;
struct TYPE_4__ {char* fts_accpath; } ;
typedef TYPE_2__ FTSENT ;


 scalar_t__ FTS_ROOTLEVEL ;
 int MAXPATHLEN ;
 int errno ;
 int fprintf (int ,char*,char*,char*) ;
 int printf (char*) ;
 int printname (char*) ;
 int readlink (char*,char*,int) ;
 int snprintf (char*,int,char*,char*,...) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void
printlink(const FTSENT *p)
{
 int lnklen;
 char name[MAXPATHLEN + 1];
 char path[MAXPATHLEN + 1];

 if (p->fts_level == FTS_ROOTLEVEL)
  (void)snprintf(name, sizeof(name), "%s", p->fts_name);
 else
  (void)snprintf(name, sizeof(name),
      "%s/%s", p->fts_parent->fts_accpath, p->fts_name);
 if ((lnklen = readlink(name, path, sizeof(path) - 1)) == -1) {
  (void)fprintf(stderr, "\nls: %s: %s\n", name, strerror(errno));
  return;
 }
 path[lnklen] = '\0';
 (void)printf(" -> ");
 (void)printname(path);
}
