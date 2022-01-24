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
typedef  int /*<<< orphan*/  tree ;
struct TYPE_2__ {char* (* strip_name_encoding ) (char const*) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ VISIBILITY_HIDDEN ; 
 char* FUNC7 (char*,int /*<<< orphan*/ ,char const*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC12 (char const*) ; 
 TYPE_1__ targetm ; 
 int /*<<< orphan*/  user_label_prefix ; 

void
FUNC13 (FILE *file, tree decl, int for_eh, int empty)
{
  const char *base;
  char *lab;
  bool need_quotes;

  if (FUNC1 (decl))
    base = FUNC5 (FUNC0 (decl));
  else
    base = FUNC5 (FUNC2 (decl));

  base = targetm.strip_name_encoding (base);
  need_quotes = FUNC10 (base);

  if (! for_eh)
    return;

  lab = FUNC7 (need_quotes ? "\"" : "", user_label_prefix, base, ".eh",
		need_quotes ? "\"" : "", NULL);

  if (FUNC6 (decl))
    FUNC8 (file, "\t%s %s\n",
	     (FUNC3 (decl) != VISIBILITY_HIDDEN
	      ? ".globl"
	      : ".private_extern"),
	     lab);

  if (FUNC4 (decl))
    FUNC8 (file, "\t.weak_definition %s\n", lab);

  if (empty)
    {
      FUNC8 (file, "%s = 0\n", lab);

      /* Mark the absolute .eh and .eh1 style labels as needed to
	 ensure that we don't dead code strip them and keep such
	 labels from another instantiation point until we can fix this
	 properly with group comdat support.  */
      FUNC11 (file, lab);
    }
  else
    FUNC8 (file, "%s:\n", lab);

  FUNC9 (lab);
}