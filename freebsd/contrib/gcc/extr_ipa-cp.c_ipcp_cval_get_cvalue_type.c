
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipcp_formal {int cval_type; } ;
typedef enum cvalue_type { ____Placeholder_cvalue_type } cvalue_type ;



__attribute__((used)) static inline enum cvalue_type
ipcp_cval_get_cvalue_type (struct ipcp_formal *cval)
{
  return cval->cval_type;
}
