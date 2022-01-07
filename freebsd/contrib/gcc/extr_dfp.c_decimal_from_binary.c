
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string ;
typedef int REAL_VALUE_TYPE ;


 int decimal_real_from_string (int *,char*) ;
 int real_to_decimal (char*,int const*,int,int ,int) ;

__attribute__((used)) static void
decimal_from_binary (REAL_VALUE_TYPE *to, const REAL_VALUE_TYPE *from)
{
  char string[256];


  real_to_decimal (string, from, sizeof (string), 0, 1);
  decimal_real_from_string (to, string);
}
