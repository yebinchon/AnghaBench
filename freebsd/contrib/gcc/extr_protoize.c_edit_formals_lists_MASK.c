#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  formals_list; struct TYPE_10__* chain_next; } ;
typedef  TYPE_4__ f_list_chain_item ;
struct TYPE_11__ {TYPE_4__* f_list_chain; int /*<<< orphan*/  formal_names; TYPE_3__* file; TYPE_1__* hash_entry; } ;
typedef  TYPE_5__ def_dec_info ;
struct TYPE_9__ {TYPE_2__* hash_entry; } ;
struct TYPE_8__ {int /*<<< orphan*/  symbol; } ;
struct TYPE_7__ {char* symbol; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC1 (int,char const*) ; 
 char const* clean_read_ptr ; 
 int /*<<< orphan*/  FUNC2 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC11 (const char *end_formals, unsigned int f_list_count,
		    const def_dec_info *def_dec_p)
{
  const char *start_formals;
  int depth;

  start_formals = end_formals - 1;
  depth = 1;
  for (; depth; FUNC1 (--start_formals > clean_read_ptr, 0))
    {
      switch (*start_formals)
	{
	case '(':
	  depth--;
	  break;
	case ')':
	  depth++;
	  break;
	}
    }
  start_formals++;

  /* start_formals now points to the opening left paren of the formals list.  */

  f_list_count--;

  if (f_list_count)
    {
      const char *next_end;

      /* There should be more formal lists to the left of here.  */

      next_end = start_formals - 1;
      FUNC1 (next_end > clean_read_ptr, 0);
      while (FUNC0 ((const unsigned char)*next_end))
	FUNC1 (--next_end > clean_read_ptr, 0);
      FUNC1 (*next_end == ')', next_end);
      FUNC1 (--next_end > clean_read_ptr, 0);
      FUNC1 (*next_end == ')', next_end);
      if (FUNC11 (next_end, f_list_count, def_dec_p))
	return 1;
    }

  /* Check that the function name in the header we are working on is the same
     as the one we would expect to find.  If not, issue a warning and return
     nonzero.  */

  if (f_list_count == 0)
    {
      const char *expected = def_dec_p->hash_entry->symbol;
      const char *func_name_start;
      const char *func_name_limit;
      size_t func_name_len;

      for (func_name_limit = start_formals-1;
	   FUNC0 ((const unsigned char)*func_name_limit); )
	FUNC1 (--func_name_limit > clean_read_ptr, 0);

      for (func_name_start = func_name_limit++;
	   FUNC4 (*func_name_start);
	   func_name_start--)
	FUNC1 (func_name_start > clean_read_ptr, 0);
      func_name_start++;
      func_name_len = func_name_limit - func_name_start;
      if (func_name_len == 0)
	FUNC1 (0, func_name_start);
      if (func_name_len != FUNC9 (expected)
	  || FUNC10 (func_name_start, expected, func_name_len))
	{
	  FUNC5 ("%s: %d: warning: found '%s' but expected '%s'\n",
		  FUNC8 (NULL, def_dec_p->file->hash_entry->symbol),
		  FUNC3 (func_name_start),
		  FUNC2 (func_name_start, func_name_len),
		  expected);
	  return 1;
	}
    }

  FUNC7 (start_formals);

#ifdef UNPROTOIZE
  if (f_list_count == 0)
    output_string (def_dec_p->formal_names);
#else /* !defined (UNPROTOIZE) */
  {
    unsigned f_list_depth;
    const f_list_chain_item *flci_p = def_dec_p->f_list_chain;

    /* At this point, the current value of f_list count says how many
       links we have to follow through the f_list_chain to get to the
       particular formals list that we need to output next.  */

    for (f_list_depth = 0; f_list_depth < f_list_count; f_list_depth++)
      flci_p = flci_p->chain_next;
    FUNC6 (flci_p->formals_list);
  }
#endif /* !defined (UNPROTOIZE) */

  clean_read_ptr = end_formals - 1;
  return 0;
}