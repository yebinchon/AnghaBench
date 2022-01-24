#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_12__ ;

/* Type definitions */
struct line_maps {int used; struct line_map* maps; } ;
struct line_map {char* to_file; unsigned int sysp; } ;
typedef  enum lc_reason { ____Placeholder_lc_reason } lc_reason ;
struct TYPE_21__ {int /*<<< orphan*/  len; int /*<<< orphan*/  text; } ;
struct TYPE_22__ {TYPE_12__ str; } ;
struct TYPE_24__ {scalar_t__ type; TYPE_1__ val; } ;
typedef  TYPE_3__ cpp_token ;
struct TYPE_25__ {scalar_t__ text; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ cpp_string ;
struct TYPE_26__ {TYPE_2__* buffer; struct line_maps* line_table; } ;
typedef  TYPE_5__ cpp_reader ;
struct TYPE_23__ {unsigned int sysp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DL_ERROR ; 
 scalar_t__ CPP_EOF ; 
 scalar_t__ CPP_NUMBER ; 
 scalar_t__ CPP_STRING ; 
 int LC_ENTER ; 
 int LC_LEAVE ; 
 int LC_RENAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int,char const*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (TYPE_5__*) ; 
 scalar_t__ FUNC6 (TYPE_5__*,TYPE_12__*,int,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_3__ const*) ; 
 int FUNC8 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static void
FUNC11 (cpp_reader *pfile)
{
  const struct line_maps *line_table = pfile->line_table;
  const struct line_map *map = &line_table->maps[line_table->used - 1];
  const cpp_token *token;
  const char *new_file = map->to_file;
  unsigned long new_lineno;
  unsigned int new_sysp = map->sysp;
  enum lc_reason reason = LC_RENAME;
  int flag;

  /* Back up so we can get the number again.  Putting this in
     _cpp_handle_directive risks two calls to _cpp_backup_tokens in
     some circumstances, which can segfault.  */
  FUNC0 (pfile, 1);

  /* #line commands expand macros.  */
  token = FUNC5 (pfile);
  if (token->type != CPP_NUMBER
      || FUNC10 (token->val.str.text, token->val.str.len,
			   &new_lineno))
    {
      FUNC4 (pfile, CPP_DL_ERROR,
		 "\"%s\" after # is not a positive integer",
		 FUNC7 (pfile, token));
      return;
    }

  token = FUNC5 (pfile);
  if (token->type == CPP_STRING)
    {
      cpp_string s = { 0, 0 };
      if (FUNC6 (pfile, &token->val.str,
					    1, &s, false))
	new_file = (const char *)s.text;

      new_sysp = 0;
      flag = FUNC8 (pfile, 0);
      if (flag == 1)
	{
	  reason = LC_ENTER;
	  /* Fake an include for cpp_included ().  */
	  FUNC2 (pfile, new_file);
	  flag = FUNC8 (pfile, flag);
	}
      else if (flag == 2)
	{
	  reason = LC_LEAVE;
	  flag = FUNC8 (pfile, flag);
	}
      if (flag == 3)
	{
	  new_sysp = 1;
	  flag = FUNC8 (pfile, flag);
	  if (flag == 4)
	    new_sysp = 2;
	}
      pfile->buffer->sysp = new_sysp;

      FUNC3 (pfile);
    }
  else if (token->type != CPP_EOF)
    {
      FUNC4 (pfile, CPP_DL_ERROR, "\"%s\" is not a valid filename",
		 FUNC7 (pfile, token));
      return;
    }

  FUNC9 (pfile);
  FUNC1 (pfile, reason, new_file, new_lineno, new_sysp);
}