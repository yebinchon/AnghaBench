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
struct pr_handle {TYPE_1__* stack; } ;
typedef  int bfd_boolean ;
struct TYPE_2__ {char const* type; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (struct pr_handle*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pr_handle*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (char const*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC10 (struct pr_handle *info, const char *s)
{
  char *u;

  FUNC1 (info->stack != NULL);

  u = FUNC6 (info->stack->type, '|');
  if (u != NULL)
    {
      char *n;

      n = (char *) FUNC9 (FUNC8 (info->stack->type) + FUNC8 (s));

      FUNC3 (n, info->stack->type, u - info->stack->type);
      FUNC7 (n + (u - info->stack->type), s);
      FUNC5 (n, u + 1);

      FUNC2 (info->stack->type);
      info->stack->type = n;

      return TRUE;
    }

  if (FUNC6 (s, '|') != NULL
      && (FUNC6 (info->stack->type, '{') != NULL
	  || FUNC6 (info->stack->type, '(') != NULL))
    {
      if (! FUNC4 (info, "(")
	  || ! FUNC0 (info, ")"))
	return FALSE;
    }

  if (*s == '\0')
    return TRUE;

  return (FUNC0 (info, " ")
	  && FUNC0 (info, s));
}