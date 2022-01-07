
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {char* name; char* newname; scalar_t__ loadable; scalar_t__ pseudo; } ;
struct sec_action {char* newname; scalar_t__ rename; } ;
struct elfcopy {char* prefix_alloc; char* prefix_sec; } ;


 int EXIT_FAILURE ;
 int err (int ,char*) ;
 struct sec_action* lookup_sec_act (struct elfcopy*,char*,int ) ;
 char* malloc (size_t) ;
 int snprintf (char*,size_t,char*,char*,char*) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
check_section_rename(struct elfcopy *ecp, struct section *s)
{
 struct sec_action *sac;
 char *prefix;
 size_t namelen;

 if (s->pseudo)
  return;

 sac = lookup_sec_act(ecp, s->name, 0);
 if (sac != ((void*)0) && sac->rename)
  s->name = sac->newname;

 if (!strcmp(s->name, ".symtab") ||
     !strcmp(s->name, ".strtab") ||
     !strcmp(s->name, ".shstrtab"))
  return;

 prefix = ((void*)0);
 if (s->loadable && ecp->prefix_alloc != ((void*)0))
  prefix = ecp->prefix_alloc;
 else if (ecp->prefix_sec != ((void*)0))
  prefix = ecp->prefix_sec;

 if (prefix != ((void*)0)) {
  namelen = strlen(s->name) + strlen(prefix) + 1;
  if ((s->newname = malloc(namelen)) == ((void*)0))
   err(EXIT_FAILURE, "malloc failed");
  snprintf(s->newname, namelen, "%s%s", prefix, s->name);
  s->name = s->newname;
 }
}
