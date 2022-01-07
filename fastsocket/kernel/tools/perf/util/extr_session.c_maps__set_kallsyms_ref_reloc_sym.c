
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ref_reloc_sym {int addr; int * name; } ;
struct map {int dummy; } ;
struct kmap {struct ref_reloc_sym* ref_reloc_sym; } ;
typedef enum map_type { ____Placeholder_map_type } map_type ;


 int ENOMEM ;
 int MAP__NR_TYPES ;
 int free (struct ref_reloc_sym*) ;
 struct kmap* map__kmap (struct map*) ;
 char* strchr (int *,char) ;
 int * strdup (char const*) ;
 struct ref_reloc_sym* zalloc (int) ;

int maps__set_kallsyms_ref_reloc_sym(struct map **maps,
         const char *symbol_name, u64 addr)
{
 char *bracket;
 enum map_type i;
 struct ref_reloc_sym *ref;

 ref = zalloc(sizeof(struct ref_reloc_sym));
 if (ref == ((void*)0))
  return -ENOMEM;

 ref->name = strdup(symbol_name);
 if (ref->name == ((void*)0)) {
  free(ref);
  return -ENOMEM;
 }

 bracket = strchr(ref->name, ']');
 if (bracket)
  *bracket = '\0';

 ref->addr = addr;

 for (i = 0; i < MAP__NR_TYPES; ++i) {
  struct kmap *kmap = map__kmap(maps[i]);
  kmap->ref_reloc_sym = ref;
 }

 return 0;
}
