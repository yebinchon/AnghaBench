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
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asymbol ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (bfd *output_bfd, bfd_vma *pgp)
{
  unsigned int count;
  asymbol **sym;
  unsigned int i;

  /* If we've already figured out what GP will be, just return it.  */
  *pgp = FUNC0 (output_bfd);
  if (*pgp)
    return TRUE;

  count = FUNC5 (output_bfd);
  sym = FUNC4 (output_bfd);

  /* The linker script will have created a symbol named `_gp' with the
     appropriate value.  */
  if (sym == NULL)
    i = count;
  else
    {
      for (i = 0; i < count; i++, sym++)
	{
	  const char *name;

	  name = FUNC2 (*sym);
	  if (*name == '_' && FUNC6 (name, "_gp") == 0)
	    {
	      *pgp = FUNC3 (*sym);
	      FUNC1 (output_bfd, *pgp);
	      break;
	    }
	}
    }

  if (i >= count)
    {
      /* Only get the error once.  */
      *pgp = 4;
      FUNC1 (output_bfd, *pgp);
      return FALSE;
    }

  return TRUE;
}