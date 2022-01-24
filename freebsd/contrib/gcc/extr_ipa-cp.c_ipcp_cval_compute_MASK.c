#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
union parameter_info {int /*<<< orphan*/  formal_id; } ;
struct ipcp_formal {int dummy; } ;
struct cgraph_node {int dummy; } ;
typedef  enum jump_func_type { ____Placeholder_jump_func_type } jump_func_type ;
typedef  enum cvalue_type { ____Placeholder_cvalue_type } cvalue_type ;

/* Variables and functions */
 int BOTTOM ; 
 int CONST_IPATYPE ; 
 int CONST_IPATYPE_REF ; 
 int CONST_VALUE ; 
 int CONST_VALUE_REF ; 
 int FORMAL_IPATYPE ; 
 int UNKNOWN_IPATYPE ; 
 union parameter_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipcp_formal*,union parameter_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ipcp_formal*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cgraph_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (struct ipcp_formal *cval, struct cgraph_node *mt,
		   enum jump_func_type type, union parameter_info *info_type)
{
  if (type == UNKNOWN_IPATYPE)
    FUNC3 (cval, BOTTOM);
  else if (type == CONST_IPATYPE)
    {
      FUNC3 (cval, CONST_VALUE);
      FUNC2 (cval, info_type, CONST_VALUE);
    }
  else if (type == CONST_IPATYPE_REF)
    {
      FUNC3 (cval, CONST_VALUE_REF);
      FUNC2 (cval, info_type, CONST_VALUE_REF);
    }
  else if (type == FORMAL_IPATYPE)
    {
      enum cvalue_type type =
	FUNC1 (FUNC4
				   (mt, info_type->formal_id));
      FUNC3 (cval, type);
      FUNC2 (cval,
			    FUNC0 (FUNC4
						  (mt, info_type->formal_id)),
			    type);
    }
}