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
struct bfd_link_info {char const wrap_char; int /*<<< orphan*/  hash; int /*<<< orphan*/ * wrap_hash; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  REAL ; 
 int /*<<< orphan*/  TRUE ; 
 char const* WRAP ; 
 char const FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bfd_link_hash_entry* FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 

struct bfd_link_hash_entry *
FUNC8 (bfd *abfd,
			      struct bfd_link_info *info,
			      const char *string,
			      bfd_boolean create,
			      bfd_boolean copy,
			      bfd_boolean follow)
{
  bfd_size_type amt;

  if (info->wrap_hash != NULL)
    {
      const char *l;
      char prefix = '\0';

      l = string;
      if (*l == FUNC1 (abfd) || *l == info->wrap_char)
	{
	  prefix = *l;
	  ++l;
	}

#undef WRAP
#define WRAP "__wrap_"

      if (FUNC2 (info->wrap_hash, l, FALSE, FALSE) != NULL)
	{
	  char *n;
	  struct bfd_link_hash_entry *h;

	  /* This symbol is being wrapped.  We want to replace all
             references to SYM with references to __wrap_SYM.  */

	  amt = FUNC7 (l) + sizeof WRAP + 1;
	  n = FUNC4 (amt);
	  if (n == NULL)
	    return NULL;

	  n[0] = prefix;
	  n[1] = '\0';
	  FUNC6 (n, WRAP);
	  FUNC6 (n, l);
	  h = FUNC3 (info->hash, n, create, TRUE, follow);
	  FUNC5 (n);
	  return h;
	}

#undef WRAP

#undef  REAL
#define REAL "__real_"

      if (*l == '_'
	  && FUNC0 (l, REAL)
	  && FUNC2 (info->wrap_hash, l + sizeof REAL - 1,
			      FALSE, FALSE) != NULL)
	{
	  char *n;
	  struct bfd_link_hash_entry *h;

	  /* This is a reference to __real_SYM, where SYM is being
             wrapped.  We want to replace all references to __real_SYM
             with references to SYM.  */

	  amt = FUNC7 (l + sizeof REAL - 1) + 2;
	  n = FUNC4 (amt);
	  if (n == NULL)
	    return NULL;

	  n[0] = prefix;
	  n[1] = '\0';
	  FUNC6 (n, l + sizeof REAL - 1);
	  h = FUNC3 (info->hash, n, create, TRUE, follow);
	  FUNC5 (n);
	  return h;
	}

#undef REAL
    }

  return FUNC3 (info->hash, string, create, copy, follow);
}