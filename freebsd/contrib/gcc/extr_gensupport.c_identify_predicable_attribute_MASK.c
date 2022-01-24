#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct queue_elem {int /*<<< orphan*/  lineno; int /*<<< orphan*/  data; struct queue_elem* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  lineno; } ;

/* Variables and functions */
#define  CONST 129 
#define  CONST_STRING 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 char const* FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct queue_elem* define_attr_queue ; 
 TYPE_1__* define_cond_exec_queue ; 
 int errors ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int predicable_default ; 
 char* predicable_false ; 
 char* predicable_true ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 char* FUNC7 (char const*) ; 

__attribute__((used)) static void
FUNC8 (void)
{
  struct queue_elem *elem;
  char *p_true, *p_false;
  const char *value;

  /* Look for the DEFINE_ATTR for `predicable', which must exist.  */
  for (elem = define_attr_queue; elem ; elem = elem->next)
    if (FUNC6 (FUNC2 (elem->data, 0), "predicable") == 0)
      goto found;

  FUNC4 (define_cond_exec_queue->lineno,
		     "attribute `predicable' not defined");
  errors = 1;
  return;

 found:
  value = FUNC2 (elem->data, 1);
  p_false = FUNC7 (value);
  p_true = FUNC5 (p_false, ',');
  if (p_true == NULL || FUNC5 (++p_true, ',') != NULL)
    {
      FUNC4 (elem->lineno,
			 "attribute `predicable' is not a boolean");
      errors = 1;
      if (p_false)
        FUNC3 (p_false);
      return;
    }
  p_true[-1] = '\0';

  predicable_true = p_true;
  predicable_false = p_false;

  switch (FUNC0 (FUNC1 (elem->data, 2)))
    {
    case CONST_STRING:
      value = FUNC2 (FUNC1 (elem->data, 2), 0);
      break;

    case CONST:
      FUNC4 (elem->lineno,
			 "attribute `predicable' cannot be const");
      errors = 1;
      if (p_false)
	FUNC3 (p_false);
      return;

    default:
      FUNC4 (elem->lineno,
			 "attribute `predicable' must have a constant default");
      errors = 1;
      if (p_false)
	FUNC3 (p_false);
      return;
    }

  if (FUNC6 (value, p_true) == 0)
    predicable_default = 1;
  else if (FUNC6 (value, p_false) == 0)
    predicable_default = 0;
  else
    {
      FUNC4 (elem->lineno,
			 "unknown value `%s' for `predicable' attribute",
			 value);
      errors = 1;
      if (p_false)
	FUNC3 (p_false);
    }
}