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
struct pr_handle {char* filename; int /*<<< orphan*/  f; TYPE_1__* stack; } ;
typedef  int /*<<< orphan*/  bfd_signed_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_2__ {char* type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (void*,char const*,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (void *p, const char *tag, const char **names,
	      bfd_signed_vma *values)
{
  struct pr_handle *info = (struct pr_handle *) p;
  unsigned int i;
  const char *name;
  char ab[20];

  if (! FUNC1 (p, tag, names, values))
    return FALSE;

  name = tag ? tag : "unknown";
  /* Generate an entry for the enum.  */
  if (tag)
    FUNC0 (info->f, "%s\t%s\t0;\"\tkind:e\ttype:%s\n", tag,
	     info->filename, info->stack->type);

  /* Generate entries for the values.  */
  if (names != NULL)
    {
      for (i = 0; names[i] != NULL; i++)
	{
	  FUNC2 (values[i], ab, FALSE, FALSE);
	  FUNC0 (info->f, "%s\t%s\t0;\"\tkind:g\tenum:%s\tvalue:%s\n",
		   names[i], info->filename, name, ab);
	}
    }

  return TRUE;
}