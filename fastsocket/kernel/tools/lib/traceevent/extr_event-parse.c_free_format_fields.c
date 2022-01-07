
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_field {struct format_field* name; struct format_field* type; struct format_field* next; } ;


 int free (struct format_field*) ;

__attribute__((used)) static void free_format_fields(struct format_field *field)
{
 struct format_field *next;

 while (field) {
  next = field->next;
  free(field->type);
  free(field->name);
  free(field);
  field = next;
 }
}
