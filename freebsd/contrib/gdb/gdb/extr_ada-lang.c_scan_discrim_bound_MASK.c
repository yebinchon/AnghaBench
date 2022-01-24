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
struct value {int dummy; } ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct value*) ; 
 struct value* FUNC2 (char*,struct value*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct value*) ; 

__attribute__((used)) static int
FUNC7 (char *str, int k, struct value *dval, LONGEST * px,
		    int *pnew_k)
{
  static char *bound_buffer = NULL;
  static size_t bound_buffer_len = 0;
  char *bound;
  char *pend;
  struct value *bound_val;

  if (dval == NULL || str == NULL || str[k] == '\0')
    return 0;

  pend = FUNC5 (str + k, "__");
  if (pend == NULL)
    {
      bound = str + k;
      k += FUNC3 (bound);
    }
  else
    {
      FUNC0 (bound_buffer, bound_buffer_len, pend - (str + k) + 1);
      bound = bound_buffer;
      FUNC4 (bound_buffer, str + k, pend - (str + k));
      bound[pend - (str + k)] = '\0';
      k = pend - str;
    }

  bound_val = FUNC2 (bound, dval, 0, FUNC1 (dval));
  if (bound_val == NULL)
    return 0;

  *px = FUNC6 (bound_val);
  if (pnew_k != NULL)
    *pnew_k = k;
  return 1;
}