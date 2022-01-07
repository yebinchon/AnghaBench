
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itbl_entry {int value; int name; struct itbl_entry* next; } ;
typedef scalar_t__ e_type ;
typedef scalar_t__ e_processor ;


 int append_insns_as_macros () ;
 scalar_t__ e_nprocs ;
 scalar_t__ e_nregtypes ;
 scalar_t__ e_p0 ;
 scalar_t__ e_regtype0 ;
 struct itbl_entry** get_entries (scalar_t__,scalar_t__) ;
 int itbl_have_entries ;
 int reg_section ;
 int symbol_create (int ,int ,int ,int *) ;
 int symbol_table_insert (int ) ;
 int zero_address_frag ;

void
itbl_init (void)
{
  struct itbl_entry *e, **es;
  e_processor procn;
  e_type type;

  if (!itbl_have_entries)
    return;







  for (type = e_regtype0; type < e_nregtypes; type++)
    for (procn = e_p0; procn < e_nprocs; procn++)
      {
 es = get_entries (procn, type);
 for (e = *es; e; e = e->next)
   {
     symbol_table_insert (symbol_create (e->name, reg_section,
      e->value, &zero_address_frag));
   }
      }
  append_insns_as_macros ();
}
