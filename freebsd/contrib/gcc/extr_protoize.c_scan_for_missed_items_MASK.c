#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* hash_entry; TYPE_3__* defs_decs; } ;
typedef  TYPE_2__ file_info ;
struct TYPE_7__ {int const line; scalar_t__ is_func_def; struct TYPE_7__* next_in_file; } ;
typedef  TYPE_3__ def_dec_info ;
struct TYPE_5__ {int /*<<< orphan*/  symbol; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char const) ; 
 scalar_t__ FUNC1 (unsigned char const) ; 
 char* FUNC2 (size_t) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char const*) ; 
 char* clean_text_base ; 
 char* clean_text_limit ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  pname ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  source_confusion_recovery ; 
 int /*<<< orphan*/  FUNC10 (char*,char const* const) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,size_t) ; 

__attribute__((used)) static void
FUNC12 (const file_info *file_p)
{
  static const char *scan_p;
  const char *limit = clean_text_limit - 3;
  static const char *backup_limit;

  backup_limit = clean_text_base - 1;

  for (scan_p = clean_text_base; scan_p < limit; scan_p++)
    {
      if (*scan_p == ')')
	{
	  static const char *last_r_paren;
	  const char *ahead_p;

	  last_r_paren = scan_p;

	  for (ahead_p = scan_p + 1; FUNC1 ((const unsigned char)*ahead_p); )
	    FUNC4 (++ahead_p < limit, limit);

	  scan_p = ahead_p - 1;

	  if (FUNC0 ((const unsigned char)*ahead_p) || *ahead_p == '{')
	    {
	      const char *last_l_paren;
	      const int lineno = FUNC5 (ahead_p);

	      if (FUNC8 (source_confusion_recovery))
		continue;

	      /* We know we have a function definition header.  Now skip
	         leftwards over all of its associated formals lists.  */

	      do
		{
		  last_l_paren = FUNC3 (last_r_paren);
		  for (last_r_paren = last_l_paren-1;
		       FUNC1 ((const unsigned char)*last_r_paren); )
		    FUNC4 (--last_r_paren >= backup_limit, backup_limit);
		}
	      while (*last_r_paren == ')');

	      if (FUNC6 (*last_r_paren))
		{
		  const char *id_limit = last_r_paren + 1;
		  const char *id_start;
		  size_t id_length;
		  const def_dec_info *dd_p;

		  for (id_start = id_limit-1; FUNC6 (*id_start); )
		    FUNC4 (--id_start >= backup_limit, backup_limit);
		  id_start++;
		  backup_limit = id_start;
		  if ((id_length = (size_t) (id_limit - id_start)) == 0)
		    goto not_missed;

		  {
		    char *func_name = FUNC2 (id_length + 1);
		    static const char * const stmt_keywords[]
		      = { "if", "else", "do", "while", "for", "switch", "case", "return", 0 };
		    const char * const *stmt_keyword;

		    FUNC11 (func_name, id_start, id_length);
		    func_name[id_length] = '\0';

		    /* We must check here to see if we are actually looking at
		       a statement rather than an actual function call.  */

		    for (stmt_keyword = stmt_keywords; *stmt_keyword; stmt_keyword++)
		      if (!FUNC10 (func_name, *stmt_keyword))
			goto not_missed;

#if 0
		    notice ("%s: found definition of '%s' at %s(%d)\n",
			    pname,
			    func_name,
			    shortpath (NULL, file_p->hash_entry->symbol),
			    identify_lineno (id_start));
#endif				/* 0 */
		    /* We really should check for a match of the function name
		       here also, but why bother.  */

		    for (dd_p = file_p->defs_decs; dd_p; dd_p = dd_p->next_in_file)
		      if (dd_p->is_func_def && dd_p->line == lineno)
			goto not_missed;

		    /* If we make it here, then we did not know about this
		       function definition.  */

		    FUNC7 ("%s: %d: warning: '%s' excluded by preprocessing\n",
			    FUNC9 (NULL, file_p->hash_entry->symbol),
			    FUNC5 (id_start), func_name);
		    FUNC7 ("%s: function definition not converted\n",
			    pname);
		  }
		not_missed: ;
	        }
	    }
	}
    }
}