#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regset {int /*<<< orphan*/  (* supply_regset ) (struct regset const*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ;} ;
struct bfd_section {int dummy; } ;
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int /*<<< orphan*/  bfd_size_type ;
struct TYPE_3__ {int /*<<< orphan*/  (* core_read_registers ) (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 struct bfd_section* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bfd_section*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct bfd_section*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct bfd_section*) ; 
 int /*<<< orphan*/  core_bfd ; 
 scalar_t__ core_gdbarch ; 
 TYPE_1__* core_vec ; 
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 struct regset* FUNC7 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC9 (struct regset const*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (char*) ; 
 char* FUNC14 (char*,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC15 (char *name,
			   int which,
			   char *human_name,
			   int required)
{
  static char *section_name = NULL;
  struct bfd_section *section;
  bfd_size_type size;
  char *contents;

  FUNC12 (section_name);
  if (FUNC0 (inferior_ptid))
    section_name = FUNC14 ("%s/%d", name, FUNC0 (inferior_ptid));
  else
    section_name = FUNC13 (name);

  section = FUNC2 (core_bfd, section_name);
  if (! section)
    {
      if (required)
	FUNC11 ("Couldn't find %s registers in core file.\n", human_name);
      return;
    }

  size = FUNC4 (core_bfd, section);
  contents = FUNC1 (size);
  if (! FUNC3 (core_bfd, section, contents,
				  (file_ptr) 0, size))
    {
      FUNC11 ("Couldn't read %s registers from `%s' section in core file.\n",
	       human_name, name);
      return;
    }

  if (core_gdbarch && FUNC8 (core_gdbarch))
    {
      const struct regset *regset;

      regset = FUNC7 (core_gdbarch, name, size);
      if (regset == NULL)
	{
	  if (required)
	    FUNC11 ("Couldn't recognize %s registers in core file.\n",
		     human_name);
	  return;
	}

      regset->supply_regset (regset, current_regcache, -1, contents, size);
      return;
    }

  FUNC6 (core_vec);
  core_vec->core_read_registers (contents, size, which,
				 ((CORE_ADDR)
				  FUNC5 (core_bfd, section)));
}