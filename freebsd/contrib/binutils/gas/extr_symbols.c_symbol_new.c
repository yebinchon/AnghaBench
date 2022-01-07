
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valueT ;
typedef int symbolS ;
typedef int segT ;
typedef int fragS ;


 int abort () ;
 int symbol_append (int *,int ,int *,int *) ;
 int * symbol_create (char const*,int ,int ,int *) ;
 int symbol_lastP ;
 int symbol_rootP ;

symbolS *
symbol_new (const char *name, segT segment, valueT valu, fragS *frag)
{
  symbolS *symbolP = symbol_create (name, segment, valu, frag);


  {
    extern int symbol_table_frozen;
    if (symbol_table_frozen)
      abort ();
  }
  symbol_append (symbolP, symbol_lastP, &symbol_rootP, &symbol_lastP);

  return symbolP;
}
