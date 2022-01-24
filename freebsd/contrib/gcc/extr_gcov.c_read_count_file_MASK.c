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
struct function_info {unsigned int ident; unsigned int checksum; unsigned int num_counts; int /*<<< orphan*/ * counts; int /*<<< orphan*/  name; struct function_info* next; } ;
typedef  struct function_info function_t ;

/* Variables and functions */
 int /*<<< orphan*/  GCOV_COUNTER_ARCS ; 
 int /*<<< orphan*/  GCOV_DATA_MAGIC ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int GCOV_TAG_FUNCTION ; 
 unsigned int GCOV_TAG_OBJECT_SUMMARY ; 
 unsigned int GCOV_TAG_PROGRAM_SUMMARY ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 unsigned int GCOV_VERSION ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int bbg_stamp ; 
 int /*<<< orphan*/  da_file_name ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 struct function_info* functions ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  gcov_type ; 
 int no_data_file ; 
 int /*<<< orphan*/  object_summary ; 
 int /*<<< orphan*/  program_count ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC14 (void)
{
  unsigned ix;
  unsigned version;
  unsigned tag;
  function_t *fn = NULL;
  int error = 0;

  if (!FUNC8 (da_file_name, 1))
    {
      FUNC4 (stderr, "%s:cannot open data file, assuming not executed\n",
	       da_file_name);
      no_data_file = 1;
      return 0;
    }
  if (!FUNC7 (FUNC12 (), GCOV_DATA_MAGIC))
    {
      FUNC4 (stderr, "%s:not a gcov data file\n", da_file_name);
    cleanup:;
      FUNC5 ();
      return 1;
    }
  version = FUNC12 ();
  if (version != GCOV_VERSION)
    {
      char v[4], e[4];

      FUNC2 (v, version);
      FUNC2 (e, GCOV_VERSION);
      
      FUNC4 (stderr, "%s:version '%.4s', prefer version '%.4s'\n",
	       da_file_name, v, e);
    }
  tag = FUNC12 ();
  if (tag != bbg_stamp)
    {
      FUNC4 (stderr, "%s:stamp mismatch with graph file\n", da_file_name);
      goto cleanup;
    }

  while ((tag = FUNC12 ()))
    {
      unsigned length = FUNC12 ();
      unsigned long base = FUNC9 ();

      if (tag == GCOV_TAG_OBJECT_SUMMARY)
	FUNC11 (&object_summary);
      else if (tag == GCOV_TAG_PROGRAM_SUMMARY)
	program_count++;
      else if (tag == GCOV_TAG_FUNCTION)
	{
	  unsigned ident = FUNC12 ();
	  struct function_info *fn_n = functions;

	  for (fn = fn ? fn->next : NULL; ; fn = fn->next)
	    {
	      if (fn)
		;
	      else if ((fn = fn_n))
		fn_n = NULL;
	      else
		{
		  FUNC4 (stderr, "%s:unknown function '%u'\n",
			   da_file_name, ident);
		  break;
		}
	      if (fn->ident == ident)
		break;
	    }

	  if (!fn)
	    ;
	  else if (FUNC12 () != fn->checksum)
	    {
	    mismatch:;
	      FUNC4 (stderr, "%s:profile mismatch for '%s'\n",
		       da_file_name, fn->name);
	      goto cleanup;
	    }
	}
      else if (tag == FUNC1 (GCOV_COUNTER_ARCS) && fn)
	{
	  if (length != FUNC0 (fn->num_counts))
	    goto mismatch;

	  if (!fn->counts)
	    fn->counts = FUNC3 (gcov_type, fn->num_counts);

	  for (ix = 0; ix != fn->num_counts; ix++)
	    fn->counts[ix] += FUNC10 ();
	}
      FUNC13 (base, length);
      if ((error = FUNC6 ()))
	{
	  FUNC4 (stderr, error < 0 ? "%s:overflowed\n" : "%s:corrupted\n",
		   da_file_name);
	  goto cleanup;
	}
    }

  FUNC5 ();
  return 0;
}