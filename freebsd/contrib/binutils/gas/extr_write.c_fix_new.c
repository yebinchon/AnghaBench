
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
typedef int offsetT ;
typedef int fragS ;
typedef int fixS ;
typedef int RELOC_ENUM ;


 int * fix_new_internal (int *,int,int,int *,int *,int ,int,int ) ;

fixS *
fix_new (fragS *frag,
  int where,
  int size,
  symbolS *add_symbol,
  offsetT offset,
  int pcrel,
  RELOC_ENUM r_type )
{
  return fix_new_internal (frag, where, size, add_symbol,
      (symbolS *) ((void*)0), offset, pcrel, r_type);
}
