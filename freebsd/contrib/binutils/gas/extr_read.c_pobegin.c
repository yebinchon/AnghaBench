
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfi_pop_insert () ;
 int hash_new () ;
 int md_pop_insert () ;
 int obj_pop_insert () ;
 int po_hash ;
 int pop_insert (int ) ;
 int pop_override_ok ;
 char* pop_table_name ;
 int potable ;

__attribute__((used)) static void
pobegin (void)
{
  po_hash = hash_new ();


  pop_table_name = "md";
  md_pop_insert ();


  pop_table_name = "obj";
  pop_override_ok = 1;
  obj_pop_insert ();


  pop_table_name = "standard";
  pop_insert (potable);






}
