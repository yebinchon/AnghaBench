
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGEST ;


 char* local_hex_string_custom (int ,char*) ;

char *
local_hex_string (LONGEST num)
{
  return local_hex_string_custom (num, "l");
}
