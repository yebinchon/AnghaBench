
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IT_dbt_CODE ;
 int IT_dsy_CODE ;
 int IT_dty_CODE ;
 int derived_type () ;
 int must (int ) ;
 scalar_t__ opt (int ) ;
 int tab (int,char*) ;

__attribute__((used)) static void
dump_symbol_info (void)
{
  tab (1, "SYMBOL INFO");

  while (opt (IT_dsy_CODE))
    {
      if (opt (IT_dty_CODE))
 {
   must (IT_dbt_CODE);
   derived_type ();
   must (IT_dty_CODE);
 }
    }

  tab (-1, "");
}
