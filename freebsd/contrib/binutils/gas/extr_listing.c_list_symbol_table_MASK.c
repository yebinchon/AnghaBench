#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ valueT ;
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  symbolS ;
struct TYPE_6__ {TYPE_2__* line; } ;
struct TYPE_5__ {int line; TYPE_1__* file; } ;
struct TYPE_4__ {char* filename; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ absolute_section ; 
 int eject ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  list_file ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_page ; 
 char* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 
 scalar_t__ FUNC10 (char*) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ undefined_section ; 

__attribute__((used)) static void
FUNC14 (void)
{
  extern symbolS *symbol_rootP;
  int got_some = 0;

  symbolS *ptr;
  eject = 1;
  FUNC6 (0);

  for (ptr = symbol_rootP; ptr != (symbolS *) NULL; ptr = FUNC12 (ptr))
    {
      if (FUNC0 (FUNC2 (ptr))
	  || FUNC2 (ptr) == absolute_section)
	{
	  /* Don't report section symbols.  They are not interesting.  */
	  if (FUNC13 (ptr))
	    continue;

	  if (FUNC1 (ptr))
	    {
	      char buf[30], fmt[8];
	      valueT val = FUNC3 (ptr);

	      /* @@ Note that this is dependent on the compilation options,
		 not solely on the target characteristics.  */
	      if (sizeof (val) == 4 && sizeof (int) == 4)
		FUNC8 (buf, "%08lx", (unsigned long) val);
	      else if (sizeof (val) <= sizeof (unsigned long))
		{
		  FUNC8 (fmt, "%%0%lulx",
			   (unsigned long) (sizeof (val) * 2));
		  FUNC8 (buf, fmt, (unsigned long) val);
		}
#if defined (BFD64)
	      else if (sizeof (val) > 4)
		sprintf_vma (buf, val);
#endif
	      else
		FUNC4 ();

	      if (!got_some)
		{
		  FUNC5 (list_file, "DEFINED SYMBOLS\n");
		  on_page++;
		  got_some = 1;
		}

	      if (FUNC11 (ptr) && FUNC11 (ptr)->line)
		{
		  FUNC5 (list_file, "%20s:%-5d  %s:%s %s\n",
			   FUNC11 (ptr)->line->file->filename,
			   FUNC11 (ptr)->line->line,
			   FUNC7 (FUNC2 (ptr)),
			   buf, FUNC1 (ptr));
		}
	      else
		{
		  FUNC5 (list_file, "%33s:%s %s\n",
			   FUNC7 (FUNC2 (ptr)),
			   buf, FUNC1 (ptr));
		}

	      on_page++;
	      FUNC6 (0);
	    }
	}

    }
  if (!got_some)
    {
      FUNC5 (list_file, "NO DEFINED SYMBOLS\n");
      on_page++;
    }
  FUNC5 (list_file, "\n");
  on_page++;
  FUNC6 (0);

  got_some = 0;

  for (ptr = symbol_rootP; ptr != (symbolS *) NULL; ptr = FUNC12 (ptr))
    {
      if (FUNC1 (ptr) && FUNC10 (FUNC1 (ptr)) != 0)
	{
	  if (FUNC2 (ptr) == undefined_section)
	    {
	      if (!got_some)
		{
		  got_some = 1;
		  FUNC5 (list_file, "UNDEFINED SYMBOLS\n");
		  on_page++;
		  FUNC6 (0);
		}
	      FUNC5 (list_file, "%s\n", FUNC1 (ptr));
	      on_page++;
	      FUNC6 (0);
	    }
	}
    }
  if (!got_some)
    {
      FUNC5 (list_file, "NO UNDEFINED SYMBOLS\n");
      on_page++;
      FUNC6 (0);
    }
}