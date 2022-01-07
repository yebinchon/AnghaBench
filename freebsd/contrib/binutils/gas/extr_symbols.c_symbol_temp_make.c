
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;


 int FAKE_LABEL_NAME ;
 int * symbol_make (int ) ;

symbolS *
symbol_temp_make (void)
{
  return symbol_make (FAKE_LABEL_NAME);
}
