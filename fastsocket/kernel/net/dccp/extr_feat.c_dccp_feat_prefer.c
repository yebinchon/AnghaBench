
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;



__attribute__((used)) static u8 dccp_feat_prefer(u8 preferred_value, u8 *array, u8 array_len)
{
 u8 i, does_occur = 0;

 if (array != ((void*)0)) {
  for (i = 0; i < array_len; i++)
   if (array[i] == preferred_value) {
    array[i] = array[0];
    does_occur++;
   }
  if (does_occur)
   array[0] = preferred_value;
 }
 return does_occur;
}
