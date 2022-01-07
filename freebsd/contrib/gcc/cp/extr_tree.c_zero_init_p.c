
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ CLASSTYPE_NON_ZERO_INIT_P (scalar_t__) ;
 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 scalar_t__ TYPE_PTRMEM_P (scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ strip_array_types (scalar_t__) ;

int
zero_init_p (tree t)
{
  t = strip_array_types (t);

  if (t == error_mark_node)
    return 1;


  if (TYPE_PTRMEM_P (t))
    return 0;



  if (CLASS_TYPE_P (t) && CLASSTYPE_NON_ZERO_INIT_P (t))
    return 0;

  return 1;
}
