
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_PTR ;
 char* TYPE_FIELD_NAME (struct type*,int) ;
 int TYPE_FIELD_TYPE (struct type*,int) ;
 int * strstr (char const*,char*) ;

__attribute__((used)) static int
is_dynamic_field (struct type *templ_type, int field_num)
{
  const char *name = TYPE_FIELD_NAME (templ_type, field_num);
  return name != ((void*)0)
    && TYPE_CODE (TYPE_FIELD_TYPE (templ_type, field_num)) == TYPE_CODE_PTR
    && strstr (name, "___XVL") != ((void*)0);
}
