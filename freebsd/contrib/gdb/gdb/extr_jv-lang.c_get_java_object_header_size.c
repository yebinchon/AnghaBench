
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TARGET_CHAR_BIT ;
 int TARGET_PTR_BIT ;
 int TYPE_LENGTH (struct type*) ;
 struct type* get_java_object_type () ;

int
get_java_object_header_size (void)
{
  struct type *objtype = get_java_object_type ();
  if (objtype == ((void*)0))
    return (2 * TARGET_PTR_BIT / TARGET_CHAR_BIT);
  else
    return TYPE_LENGTH (objtype);
}
