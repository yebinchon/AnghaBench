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
struct arcDisState {scalar_t__ commentBuffer; int commNum; int /*<<< orphan*/ * comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  comment_prefix ; 
 char* FUNC1 (struct arcDisState*,long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct arcDisState * state,
		int shimm,
		int is_limm,
		long limm_value)
{
  if (state->commentBuffer != 0)
    {
      int i;

      if (is_limm)
	{
	  const char *name = FUNC1 (state, limm_value + shimm);

	  if (*name != 0)
	    FUNC0 (name);
	}
      for (i = 0; i < state->commNum; i++)
	{
	  if (i == 0)
	    FUNC3 (state->commentBuffer, comment_prefix);
	  else
	    FUNC2 (state->commentBuffer, ", ");
	  FUNC4 (state->commentBuffer, state->comm[i],
		   sizeof (state->commentBuffer));
	}
    }
}