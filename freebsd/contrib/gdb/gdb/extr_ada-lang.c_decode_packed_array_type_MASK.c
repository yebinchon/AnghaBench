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
struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ LOC_TYPEDEF ; 
 scalar_t__ FUNC1 (struct symbol*) ; 
 struct type* FUNC2 (struct symbol*) ; 
 scalar_t__ FUNC3 (struct type*) ; 
 scalar_t__ TYPE_CODE_ARRAY ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct symbol***,struct block***) ; 
 char* FUNC5 (struct type*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 struct type* FUNC7 (struct type*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 struct type* FUNC10 (struct type*,long*) ; 
 int FUNC11 (char*,char*,long*) ; 
 scalar_t__ FUNC12 (char const*) ; 
 char* FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static struct type *
FUNC15 (struct type *type)
{
  struct symbol **syms;
  struct block **blocks;
  const char *raw_name = FUNC5 (FUNC7 (type));
  char *name = (char *) FUNC6 (FUNC12 (raw_name) + 1);
  char *tail = FUNC13 (raw_name, "___XP");
  struct type *shadow_type;
  long bits;
  int i, n;

  FUNC9 (name, raw_name, tail - raw_name);
  name[tail - raw_name] = '\000';

  /* NOTE: Use ada_lookup_symbol_list because of bug in some versions
   * of gcc (Solaris, e.g.). FIXME when compiler is fixed. */
  n = FUNC4 (name, FUNC8 (NULL),
			      VAR_DOMAIN, &syms, &blocks);
  for (i = 0; i < n; i += 1)
    if (syms[i] != NULL && FUNC1 (syms[i]) == LOC_TYPEDEF
	&& FUNC0 (name, FUNC5 (FUNC2 (syms[i]))))
      break;
  if (i >= n)
    {
      FUNC14 ("could not find bounds information on packed array");
      return NULL;
    }
  shadow_type = FUNC2 (syms[i]);

  if (FUNC3 (shadow_type) != TYPE_CODE_ARRAY)
    {
      FUNC14 ("could not understand bounds information on packed array");
      return NULL;
    }

  if (FUNC11 (tail + sizeof ("___XP") - 1, "%ld", &bits) != 1)
    {
      FUNC14 ("could not understand bit size information on packed array");
      return NULL;
    }

  return FUNC10 (shadow_type, &bits);
}