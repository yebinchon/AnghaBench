
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_CODE (struct type*) ;


 int TYPE_LOW_BOUND (struct type*) ;
 int TYPE_UNSIGNED (struct type*) ;

__attribute__((used)) static int
has_negatives (struct type *type)
{
  switch (TYPE_CODE (type))
    {
    default:
      return 0;
    case 129:
      return !TYPE_UNSIGNED (type);
    case 128:
      return TYPE_LOW_BOUND (type) < 0;
    }
}
