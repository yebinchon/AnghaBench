
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lang_statement_header_type ;
typedef enum statement_enum { ____Placeholder_statement_enum } statement_enum ;


 int new_statement (int,int,int ) ;
 int stat_ptr ;

void
lang_add_attribute (enum statement_enum attribute)
{
  new_statement (attribute, sizeof (lang_statement_header_type), stat_ptr);
}
