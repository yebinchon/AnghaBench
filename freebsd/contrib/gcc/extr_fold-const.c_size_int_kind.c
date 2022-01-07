
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum size_type_kind { ____Placeholder_size_type_kind } size_type_kind ;
typedef int HOST_WIDE_INT ;


 int build_int_cst (int ,int ) ;
 int * sizetype_tab ;

tree
size_int_kind (HOST_WIDE_INT number, enum size_type_kind kind)
{
  return build_int_cst (sizetype_tab[(int) kind], number);
}
