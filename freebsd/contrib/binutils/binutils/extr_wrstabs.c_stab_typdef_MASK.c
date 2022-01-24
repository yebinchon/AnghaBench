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
struct string_hash_entry {long index; unsigned int size; } ;
struct stab_write_handle {long type_index; int /*<<< orphan*/  typedef_hash; TYPE_1__* type_stack; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_2__ {long index; unsigned int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  N_LSYM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*,...) ; 
 char* FUNC6 (struct stab_write_handle*) ; 
 int /*<<< orphan*/  FUNC7 (struct stab_write_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct string_hash_entry* FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC11 (void *p, const char *name)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  long index;
  unsigned int size;
  char *s, *buf;
  struct string_hash_entry *h;

  index = info->type_stack->index;
  size = info->type_stack->size;
  s = FUNC6 (info);

  buf = (char *) FUNC10 (FUNC9 (name) + FUNC9 (s) + 20);

  if (index > 0)
    FUNC5 (buf, "%s:t%s", name, s);
  else
    {
      index = info->type_index;
      ++info->type_index;
      FUNC5 (buf, "%s:t%ld=%s", name, index, s);
    }

  FUNC3 (s);

  if (! FUNC7 (info, N_LSYM, 0, 0, buf))
    return FALSE;

  FUNC3 (buf);

  h = FUNC8 (&info->typedef_hash, name, TRUE, FALSE);
  if (h == NULL)
    {
      FUNC4 (FUNC0("string_hash_lookup failed: %s"),
		 FUNC1 (FUNC2 ()));
      return FALSE;
    }

  /* I don't think we care about redefinitions.  */

  h->index = index;
  h->size = size;

  return TRUE;
}