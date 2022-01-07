
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ DEPRECATED_STREQN (int *,char*,int) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_INT ;
 scalar_t__ TYPE_CODE_RANGE ;
 int * ada_type_name (struct type*) ;
 int strlen (int *) ;

int
ada_is_vax_floating_type (struct type *type)
{
  int name_len =
    (ada_type_name (type) == ((void*)0)) ? 0 : strlen (ada_type_name (type));
  return
    name_len > 6
    && (TYPE_CODE (type) == TYPE_CODE_INT
 || TYPE_CODE (type) == TYPE_CODE_RANGE)
    && DEPRECATED_STREQN (ada_type_name (type) + name_len - 6, "___XF", 5);
}
