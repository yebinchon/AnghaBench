
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_CODE (struct type*) ;




__attribute__((used)) static int
discrete_type_p (struct type *type)
{
  if (type == ((void*)0))
    return 0;
  else
    {
      switch (TYPE_CODE (type))
 {
 case 129:
 case 128:
 case 130:
   return 1;
 default:
   return 0;
 }
    }
}
