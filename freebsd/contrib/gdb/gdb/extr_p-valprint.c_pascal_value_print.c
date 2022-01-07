
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_PTR ;
 scalar_t__ TYPE_CODE_REF ;
 int * TYPE_NAME (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 struct type* VALUE_TYPE (struct value*) ;
 int common_val_print (struct value*,struct ui_file*,int,int,int ,int) ;
 int fprintf_filtered (struct ui_file*,char*) ;
 scalar_t__ strcmp (int *,char*) ;
 int type_print (struct type*,char*,struct ui_file*,int) ;

int
pascal_value_print (struct value *val, struct ui_file *stream, int format,
      enum val_prettyprint pretty)
{
  struct type *type = VALUE_TYPE (val);







  if (TYPE_CODE (type) == TYPE_CODE_PTR ||
      TYPE_CODE (type) == TYPE_CODE_REF)
    {


      if (TYPE_CODE (type) == TYPE_CODE_PTR &&
   TYPE_NAME (type) == ((void*)0) &&
   TYPE_NAME (TYPE_TARGET_TYPE (type)) != ((void*)0)
   && strcmp (TYPE_NAME (TYPE_TARGET_TYPE (type)), "char") == 0)
 {

 }
      else
 {
   fprintf_filtered (stream, "(");
   type_print (type, "", stream, -1);
   fprintf_filtered (stream, ") ");
 }
    }
  return common_val_print (val, stream, format, 1, 0, pretty);
}
