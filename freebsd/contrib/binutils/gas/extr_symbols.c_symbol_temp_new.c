
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valueT ;
typedef int symbolS ;
typedef int segT ;
typedef int fragS ;


 int FAKE_LABEL_NAME ;
 int * symbol_new (int ,int ,int ,int *) ;

symbolS *
symbol_temp_new (segT seg, valueT ofs, fragS *frag)
{
  return symbol_new (FAKE_LABEL_NAME, seg, ofs, frag);
}
