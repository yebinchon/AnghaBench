#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* op; } ;
struct TYPE_6__ {TYPE_2__ s_operator; } ;
struct demangle_component {scalar_t__ type; TYPE_3__ u; } ;
struct d_info {int /*<<< orphan*/  expansion; } ;
struct TYPE_4__ {int len; } ;

/* Variables and functions */
 scalar_t__ DEMANGLE_COMPONENT_OPERATOR ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (struct d_info*,int) ; 
 struct demangle_component* FUNC3 (struct d_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct d_info*) ; 
 struct demangle_component* FUNC5 (struct d_info*) ; 
 char FUNC6 (struct d_info*) ; 
 struct demangle_component* FUNC7 (struct d_info*) ; 

__attribute__((used)) static struct demangle_component *
FUNC8 (struct d_info *di)
{
  char peek;

  peek = FUNC6 (di);
  if (FUNC0 (peek))
    return FUNC7 (di);
  else if (FUNC1 (peek))
    {
      struct demangle_component *ret;

      ret = FUNC5 (di);
      if (ret != NULL && ret->type == DEMANGLE_COMPONENT_OPERATOR)
	di->expansion += sizeof "operator" + ret->u.s_operator.op->len - 2;
      return ret;
    }
  else if (peek == 'C' || peek == 'D')
    return FUNC3 (di);
  else if (peek == 'L')
    {
      struct demangle_component * ret;

      FUNC2 (di, 1);

      ret = FUNC7 (di);
      if (ret == NULL)
	return NULL;
      if (! FUNC4 (di))
	return NULL;
      return ret;
    }
  else
    return NULL;
}