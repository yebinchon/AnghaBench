
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipcp_formal {int dummy; } ;


 scalar_t__ CONST_VALUE ;
 scalar_t__ CONST_VALUE_REF ;
 scalar_t__ ipcp_cval_equal_cvalues (int ,int ,scalar_t__,scalar_t__) ;
 int ipcp_cval_get_cvalue (struct ipcp_formal*) ;
 scalar_t__ ipcp_cval_get_cvalue_type (struct ipcp_formal*) ;

__attribute__((used)) static bool
ipcp_cval_changed (struct ipcp_formal *cval1, struct ipcp_formal *cval2)
{
  if (ipcp_cval_get_cvalue_type (cval1) == ipcp_cval_get_cvalue_type (cval2))
    {
      if (ipcp_cval_get_cvalue_type (cval1) != CONST_VALUE &&
   ipcp_cval_get_cvalue_type (cval1) != CONST_VALUE_REF)
 return 0;
      if (ipcp_cval_equal_cvalues (ipcp_cval_get_cvalue (cval1),
       ipcp_cval_get_cvalue (cval2),
       ipcp_cval_get_cvalue_type (cval1),
       ipcp_cval_get_cvalue_type (cval2)))
 return 0;
    }
  return 1;
}
