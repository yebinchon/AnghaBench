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
struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ strip; void* keep_hash; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  bfd_error_system_call ; 
 int /*<<< orphan*/ * FUNC2 (void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfd_hash_newfunc ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__ link_info ; 
 scalar_t__ strip_none ; 
 scalar_t__ strip_some ; 
 void* FUNC9 (size_t) ; 
 char* FUNC10 (char*,size_t) ; 

void
FUNC11 (const char *filename)
{
  FILE *file;
  char *buf;
  size_t bufsize;
  int c;

  if (link_info.strip == strip_some)
    FUNC5 (FUNC1("%X%P: error: duplicate retain-symbols-file\n"));

  file = FUNC6 (filename, "r");
  if (file == NULL)
    {
      FUNC4 (bfd_error_system_call);
      FUNC5 ("%X%P: %s: %E\n", filename);
      return;
    }

  link_info.keep_hash = FUNC9 (sizeof (struct bfd_hash_table));
  if (!FUNC3 (link_info.keep_hash, bfd_hash_newfunc,
			    sizeof (struct bfd_hash_entry)))
    FUNC5 (FUNC1("%P%F: bfd_hash_table_init failed: %E\n"));

  bufsize = 100;
  buf = FUNC9 (bufsize);

  c = FUNC8 (file);
  while (c != EOF)
    {
      while (FUNC0 (c))
	c = FUNC8 (file);

      if (c != EOF)
	{
	  size_t len = 0;

	  while (! FUNC0 (c) && c != EOF)
	    {
	      buf[len] = c;
	      ++len;
	      if (len >= bufsize)
		{
		  bufsize *= 2;
		  buf = FUNC10 (buf, bufsize);
		}
	      c = FUNC8 (file);
	    }

	  buf[len] = '\0';

	  if (FUNC2 (link_info.keep_hash, buf, TRUE, TRUE) == NULL)
	    FUNC5 (FUNC1("%P%F: bfd_hash_lookup for insertion failed: %E\n"));
	}
    }

  if (link_info.strip != strip_none)
    FUNC5 (FUNC1("%P: `-retain-symbols-file' overrides `-s' and `-S'\n"));

  FUNC7 (buf);
  link_info.strip = strip_some;
}