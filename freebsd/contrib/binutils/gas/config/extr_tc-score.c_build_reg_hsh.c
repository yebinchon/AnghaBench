
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_map {int * htab; struct reg_entry* names; } ;
struct reg_entry {int * name; } ;


 int _ (char*) ;
 int as_fatal (int ) ;
 int * hash_new () ;
 int insert_reg (struct reg_entry const*,int *) ;

__attribute__((used)) static void
build_reg_hsh (struct reg_map *map)
{
  const struct reg_entry *r;

  if ((map->htab = hash_new ()) == ((void*)0))
    {
      as_fatal (_("virtual memory exhausted"));
    }
  for (r = map->names; r->name != ((void*)0); r++)
    {
      insert_reg (r, map->htab);
    }
}
