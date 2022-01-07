
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 struct type* TYPE_BASECLASS (struct type*,int) ;
 int * TYPE_CPLUS_SPECIFIC (struct type*) ;
 int TYPE_NFN_FIELDS_TOTAL (struct type*) ;
 int TYPE_N_BASECLASSES (struct type*) ;

__attribute__((used)) static int
total_number_of_methods (struct type *type)
{
  int n;
  int count;

  CHECK_TYPEDEF (type);
  if (TYPE_CPLUS_SPECIFIC (type) == ((void*)0))
    return 0;
  count = TYPE_NFN_FIELDS_TOTAL (type);

  for (n = 0; n < TYPE_N_BASECLASSES (type); n++)
    count += total_number_of_methods (TYPE_BASECLASS (type, n));

  return count;
}
