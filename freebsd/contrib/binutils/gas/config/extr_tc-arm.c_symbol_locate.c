
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valueT ;
typedef int symbolS ;
typedef int segT ;
typedef int fragS ;


 int S_SET_NAME (int *,char*) ;
 int S_SET_SEGMENT (int *,int ) ;
 int S_SET_VALUE (int *,int ) ;
 int abort () ;
 int notes ;
 int obj_symbol_new_hook (int *) ;
 char* obstack_finish (int *) ;
 int obstack_grow (int *,char const*,unsigned int) ;
 int strlen (char const*) ;
 int symbol_append (int *,int ,int *,int *) ;
 int symbol_clear_list_pointers (int *) ;
 int symbol_lastP ;
 int symbol_rootP ;
 int symbol_set_frag (int *,int *) ;
 char* tc_canonicalize_symbol_name (char*) ;
 int tc_symbol_new_hook (int *) ;
 int verify_symbol_chain (int ,int ) ;

__attribute__((used)) static void
symbol_locate (symbolS * symbolP,
        const char * name,
        segT segment,
        valueT valu,
        fragS * frag)
{
  unsigned int name_length;
  char * preserved_copy_of_name;

  name_length = strlen (name) + 1;
  obstack_grow (&notes, name, name_length);
  preserved_copy_of_name = obstack_finish (&notes);






  S_SET_NAME (symbolP, preserved_copy_of_name);

  S_SET_SEGMENT (symbolP, segment);
  S_SET_VALUE (symbolP, valu);
  symbol_clear_list_pointers (symbolP);

  symbol_set_frag (symbolP, frag);


  {
    extern int symbol_table_frozen;

    if (symbol_table_frozen)
      abort ();
  }

  symbol_append (symbolP, symbol_lastP, & symbol_rootP, & symbol_lastP);

  obj_symbol_new_hook (symbolP);
}
