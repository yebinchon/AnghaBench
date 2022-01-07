
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; int hits; int files; } ;
typedef TYPE_1__ Path ;


 scalar_t__ DEBUG (int ) ;
 int DIR ;
 int * Hash_FindEntry (int *,char const*) ;
 char* bmake_strdup (char const*) ;
 int debug_file ;
 int fprintf (int ,char*,...) ;
 int hits ;

__attribute__((used)) static char *
DirLookupAbs(Path *p, const char *name, const char *cp)
{
 char *p1;
 const char *p2;

 if (DEBUG(DIR)) {
  fprintf(debug_file, "   %s ...\n", p->name);
 }







 for (p1 = p->name, p2 = name; *p1 && *p1 == *p2; p1++, p2++) {
  continue;
 }
 if (*p1 != '\0' || p2 != cp - 1) {
  return ((void*)0);
 }

 if (Hash_FindEntry(&p->files, cp) == ((void*)0)) {
  if (DEBUG(DIR)) {
   fprintf(debug_file, "   must be here but isn't -- returning\n");
  }

  return bmake_strdup("");
 }

 p->hits += 1;
 hits += 1;
 if (DEBUG(DIR)) {
  fprintf(debug_file, "   returning %s\n", name);
 }
 return (bmake_strdup(name));
}
