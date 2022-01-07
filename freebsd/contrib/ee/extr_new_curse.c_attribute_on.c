
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int String_Out (scalar_t__,int*,int) ;
 scalar_t__* String_table ;
 int* attributes_set ;
 size_t sa__ ;
 size_t so__ ;

void
attribute_on()
{
 if (String_table[sa__])
 {
  attributes_set[0] = 1;
  String_Out(String_table[sa__], attributes_set, 1);
 }
 else if (String_table[so__])
  String_Out(String_table[so__], ((void*)0), 0);
}
