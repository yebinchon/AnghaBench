
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_field {int type; } ;


 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static int field_is_dynamic(struct format_field *field)
{
 if (strncmp(field->type, "__data_loc", 10) == 0)
  return 1;

 return 0;
}
