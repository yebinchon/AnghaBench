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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  TFF_PLAIN_IDENTIFIER ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ base_dtor_identifier ; 
 scalar_t__ complete_dtor_identifier ; 
 char* FUNC4 (char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ deleting_dtor_identifier ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC7 (tree name, tree type, bool *free_p)
{
  char *pretty_name;

  /* Assume that we will not allocate memory.  */
  *free_p = false;
  /* Constructors and destructors are special.  */
  if (FUNC0 (name))
    {
      pretty_name
	= (char *) FUNC1 (FUNC5 (type));
      /* For a destructor, add the '~'.  */
      if (name == complete_dtor_identifier
	  || name == base_dtor_identifier
	  || name == deleting_dtor_identifier)
	{
	  pretty_name = FUNC4 ("~", pretty_name, NULL);
	  /* Remember that we need to free the memory allocated.  */
	  *free_p = true;
	}
    }
  else if (FUNC2 (name))
    {
      pretty_name = FUNC4 ("operator ",
			    FUNC6 (FUNC3 (name),
					    TFF_PLAIN_IDENTIFIER),
			    NULL);
      /* Remember that we need to free the memory allocated.  */
      *free_p = true;
    }
  else
    pretty_name = (char *) FUNC1 (name);

  return pretty_name;
}