
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_CODE (struct type*) ;


 struct type* TYPE_TARGET_TYPE (struct type*) ;

__attribute__((used)) static int
integer_type_p (struct type *type)
{
  if (type == ((void*)0))
    return 0;
  else
    {
      switch (TYPE_CODE (type))
 {
 case 129:
   return 1;
 case 128:
   return (type == TYPE_TARGET_TYPE (type)
    || integer_type_p (TYPE_TARGET_TYPE (type)));
 default:
   return 0;
 }
    }
}
