
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union parameter_info {int value; } ;
struct TYPE_2__ {int value; } ;
struct ipcp_formal {TYPE_1__ cvalue; } ;
typedef enum cvalue_type { ____Placeholder_cvalue_type } cvalue_type ;


 int CONST_VALUE ;
 int CONST_VALUE_REF ;

__attribute__((used)) static inline void
ipcp_cval_set_cvalue (struct ipcp_formal *cval, union parameter_info *value,
        enum cvalue_type type)
{
  if (type == CONST_VALUE || type == CONST_VALUE_REF)
    cval->cvalue.value = value->value;
}
