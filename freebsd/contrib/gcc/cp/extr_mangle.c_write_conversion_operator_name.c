
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int write_string (char*) ;
 int write_type (int const) ;

__attribute__((used)) static void
write_conversion_operator_name (const tree type)
{
  write_string ("cv");
  write_type (type);
}
