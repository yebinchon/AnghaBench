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
typedef  int /*<<< orphan*/  lang_output_section_phdr_list ;
typedef  int /*<<< orphan*/  fill_type ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_MEMORY_REGION ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  LOADADDR ; 
 int /*<<< orphan*/  SIZEOF ; 
 TYPE_1__* current_section ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*) ; 
 int FUNC8 (char const*) ; 
 char* FUNC9 (int) ; 

void
FUNC10 (fill_type *fill,
			    lang_output_section_phdr_list *phdrs)
{
  const char *name;
  char *clean, *s2;
  const char *s1;
  char *buf;

  name = current_section->name;

  /* For now, assume that DEFAULT_MEMORY_REGION is the run-time memory
     region and that no load-time region has been specified.  It doesn't
     really matter what we say here, since lang_leave_overlay will
     override it.  */
  FUNC6 (fill, DEFAULT_MEMORY_REGION, phdrs, 0);

  /* Define the magic symbols.  */

  clean = FUNC9 (FUNC8 (name) + 1);
  s2 = clean;
  for (s1 = name; *s1 != '\0'; s1++)
    if (FUNC0 (*s1) || *s1 == '_')
      *s2++ = *s1;
  *s2 = '\0';

  buf = FUNC9 (FUNC8 (clean) + sizeof "__load_start_");
  FUNC7 (buf, "__load_start_%s", clean);
  FUNC5 (FUNC3 (buf,
				    FUNC2 (LOADADDR, name),
				    FALSE));

  buf = FUNC9 (FUNC8 (clean) + sizeof "__load_stop_");
  FUNC7 (buf, "__load_stop_%s", clean);
  FUNC5 (FUNC3 (buf,
				    FUNC1 ('+',
					       FUNC2 (LOADADDR, name),
					       FUNC2 (SIZEOF, name)),
				    FALSE));

  FUNC4 (clean);
}