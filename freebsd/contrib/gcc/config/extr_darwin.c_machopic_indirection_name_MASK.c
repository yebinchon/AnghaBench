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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_2__ {char const* ptr_name; int stub_p; int used; int /*<<< orphan*/  symbol; } ;
typedef  TYPE_1__ machopic_indirection ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  INSERT ; 
 char* NON_LAZY_POINTER_SUFFIX ; 
 char* STUB_SUFFIX ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void** FUNC7 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  machopic_indirection_eq ; 
 int /*<<< orphan*/  machopic_indirection_hash ; 
 scalar_t__ machopic_indirections ; 
 scalar_t__ FUNC9 (char const*) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char const*,char const*,char const*,char const*,char const*) ; 
 int FUNC12 (char const*) ; 
 char* user_label_prefix ; 
 char const* FUNC13 (char*) ; 

const char *
FUNC14 (rtx sym_ref, bool stub_p)
{
  char *buffer;
  const char *name = FUNC3 (sym_ref, 0);
  size_t namelen = FUNC12 (name);
  machopic_indirection *p;
  void ** slot;
  bool saw_star = false;
  bool needs_quotes;
  const char *suffix;
  const char *prefix = user_label_prefix;
  const char *quote = "";
  tree id;

  id = FUNC9 (name);
  if (id)
    {
      tree id_orig = id;

      while (FUNC1 (id))
	id = FUNC2 (id);
      if (id != id_orig)
	{
	  name = FUNC0 (id);
	  namelen = FUNC12 (name);
	}
    }

  if (name[0] == '*')
    {
      saw_star = true;
      prefix = "";
      ++name;
      --namelen;
    }

  needs_quotes = FUNC10 (name);
  if (needs_quotes)
    {
      quote = "\"";
    }

  if (stub_p)
    suffix = STUB_SUFFIX;
  else
    suffix = NON_LAZY_POINTER_SUFFIX;

  buffer = FUNC4 (FUNC12 ("&L")
		   + FUNC12 (prefix)
		   + namelen
		   + FUNC12 (suffix)
		   + 2 * FUNC12 (quote)
		   + 1 /* '\0' */);

  /* Construct the name of the non-lazy pointer or stub.  */
  FUNC11 (buffer, "&%sL%s%s%s%s", quote, prefix, name, suffix, quote);

  if (!machopic_indirections)
    machopic_indirections = FUNC6 (37,
					     machopic_indirection_hash,
					     machopic_indirection_eq,
					     /*htab_del=*/NULL);

  slot = FUNC7 (machopic_indirections, buffer,
				   FUNC8 (buffer), INSERT);
  if (*slot)
    {
      p = (machopic_indirection *) *slot;
    }
  else
    {
      p = (machopic_indirection *) FUNC5 (sizeof (machopic_indirection));
      p->symbol = sym_ref;
      p->ptr_name = FUNC13 (buffer);
      p->stub_p = stub_p;
      p->used = false;
      *slot = p;
    }

  return p->ptr_name;
}