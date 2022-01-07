
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int String_Out (scalar_t__,scalar_t__*,int) ;
 scalar_t__* String_table ;
 scalar_t__* attributes_set ;
 size_t me__ ;
 size_t sa__ ;
 size_t se__ ;

void
attribute_off()
{
 if (String_table[me__])
  String_Out(String_table[me__], ((void*)0), 0);
 else if (String_table[sa__])
 {
  attributes_set[0] = 0;
  String_Out(String_table[sa__], attributes_set, 1);
 }
 else if (String_table[se__])
  String_Out(String_table[se__], ((void*)0), 0);
}
