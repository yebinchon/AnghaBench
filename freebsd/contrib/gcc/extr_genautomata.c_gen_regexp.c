
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regexp_t ;


 int gen_regexp_sequence (char const*) ;
 char const* reserv_str ;

__attribute__((used)) static regexp_t
gen_regexp (const char *str)
{
  reserv_str = str;
  return gen_regexp_sequence (str);;
}
