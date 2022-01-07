
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cvalue_type { ____Placeholder_cvalue_type } cvalue_type ;


 int CONST_VALUE ;
 int CONST_VALUE_REF ;

__attribute__((used)) static bool
ipcp_type_is_const (enum cvalue_type type)
{
  if (type == CONST_VALUE || type == CONST_VALUE_REF)
    return 1;
  else
    return 0;
}
