
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sym_head {int dummy; } ;
struct sym_entry {TYPE_3__* sym; struct sym_entry* name; } ;
struct TYPE_6__ {int st_value; } ;
struct TYPE_5__ {scalar_t__ st_shndx; int st_size; } ;
typedef TYPE_1__ GElf_Sym ;


 scalar_t__ SHN_COMMON ;
 int STAILQ_INSERT_TAIL (struct sym_head*,struct sym_entry*,int ) ;
 int free (struct sym_entry*) ;
 void* malloc (int) ;
 int memcpy (TYPE_3__*,TYPE_1__ const*,int) ;
 struct sym_entry* strdup (char const*) ;
 int sym_entries ;
 int warn (char*) ;

__attribute__((used)) static int
sym_list_insert(struct sym_head *headp, const char *name, const GElf_Sym *sym)
{
 struct sym_entry *e;

 if (headp == ((void*)0) || name == ((void*)0) || sym == ((void*)0))
  return (0);
 if ((e = malloc(sizeof(struct sym_entry))) == ((void*)0)) {
  warn("malloc");
  return (0);
 }
 if ((e->name = strdup(name)) == ((void*)0)) {
  warn("strdup");
  free(e);
  return (0);
 }
 if ((e->sym = malloc(sizeof(GElf_Sym))) == ((void*)0)) {
  warn("malloc");
  free(e->name);
  free(e);
  return (0);
 }

 memcpy(e->sym, sym, sizeof(GElf_Sym));


 if (sym->st_shndx == SHN_COMMON)
  e->sym->st_value = sym->st_size;

 STAILQ_INSERT_TAIL(headp, e, sym_entries);

 return (1);
}
