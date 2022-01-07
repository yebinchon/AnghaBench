
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union parameter_info {int formal_id; } ;
struct ipcp_formal {int dummy; } ;
struct cgraph_node {int dummy; } ;
typedef enum jump_func_type { ____Placeholder_jump_func_type } jump_func_type ;
typedef enum cvalue_type { ____Placeholder_cvalue_type } cvalue_type ;


 int BOTTOM ;
 int CONST_IPATYPE ;
 int CONST_IPATYPE_REF ;
 int CONST_VALUE ;
 int CONST_VALUE_REF ;
 int FORMAL_IPATYPE ;
 int UNKNOWN_IPATYPE ;
 union parameter_info* ipcp_cval_get_cvalue (int ) ;
 int ipcp_cval_get_cvalue_type (int ) ;
 int ipcp_cval_set_cvalue (struct ipcp_formal*,union parameter_info*,int) ;
 int ipcp_cval_set_cvalue_type (struct ipcp_formal*,int) ;
 int ipcp_method_cval (struct cgraph_node*,int ) ;

__attribute__((used)) static void
ipcp_cval_compute (struct ipcp_formal *cval, struct cgraph_node *mt,
     enum jump_func_type type, union parameter_info *info_type)
{
  if (type == UNKNOWN_IPATYPE)
    ipcp_cval_set_cvalue_type (cval, BOTTOM);
  else if (type == CONST_IPATYPE)
    {
      ipcp_cval_set_cvalue_type (cval, CONST_VALUE);
      ipcp_cval_set_cvalue (cval, info_type, CONST_VALUE);
    }
  else if (type == CONST_IPATYPE_REF)
    {
      ipcp_cval_set_cvalue_type (cval, CONST_VALUE_REF);
      ipcp_cval_set_cvalue (cval, info_type, CONST_VALUE_REF);
    }
  else if (type == FORMAL_IPATYPE)
    {
      enum cvalue_type type =
 ipcp_cval_get_cvalue_type (ipcp_method_cval
       (mt, info_type->formal_id));
      ipcp_cval_set_cvalue_type (cval, type);
      ipcp_cval_set_cvalue (cval,
       ipcp_cval_get_cvalue (ipcp_method_cval
        (mt, info_type->formal_id)),
       type);
    }
}
