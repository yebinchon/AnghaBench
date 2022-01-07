
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ADDR_EXPR ;
 int CONVERT_EXPR ;
 char const* N_ (char*) ;
 scalar_t__ RFmode ;
 scalar_t__ TYPE_MODE (int ) ;

__attribute__((used)) static const char *
ia64_invalid_unary_op (int op, tree type)
{

  if (TYPE_MODE (type) == RFmode
      && op != CONVERT_EXPR
      && op != ADDR_EXPR)
    return N_("invalid operation on %<__fpreg%>");
  return ((void*)0);
}
