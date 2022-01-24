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
struct dieinfo {int at_byte_size; int /*<<< orphan*/  die_ref; scalar_t__ has_at_byte_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIE_ID ; 
 int /*<<< orphan*/  DIE_NAME ; 
 int /*<<< orphan*/  FT_INTEGER ; 
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_UNDEF ; 
 struct type* FUNC1 (int /*<<< orphan*/ ,struct type*) ; 
 struct type* FUNC2 (struct type*,struct type*,unsigned long,unsigned long) ; 
 struct type* FUNC3 (struct type*,struct type*) ; 
 int /*<<< orphan*/  current_objfile ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct type* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct type* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (struct dieinfo *dip)
{
  struct type *utype;
  struct type *indextype;
  struct type *rangetype;
  unsigned long lowbound = 0;
  unsigned long highbound;

  if (dip->has_at_byte_size)
    {
      /* A fixed bounds string */
      highbound = dip->at_byte_size - 1;
    }
  else
    {
      /* A varying length string.  Stub for now.  (FIXME) */
      highbound = 1;
    }
  indextype = FUNC5 (current_objfile, FT_INTEGER);
  rangetype = FUNC2 ((struct type *) NULL, indextype, lowbound,
				 highbound);

  utype = FUNC6 (dip->die_ref);
  if (utype == NULL)
    {
      /* No type defined, go ahead and create a blank one to use. */
      utype = FUNC1 (dip->die_ref, (struct type *) NULL);
    }
  else
    {
      /* Already a type in our slot due to a forward reference. Make sure it
         is a blank one.  If not, complain and leave it alone. */
      if (FUNC0 (utype) != TYPE_CODE_UNDEF)
	{
	  FUNC4 (DIE_ID, DIE_NAME);
	  return;
	}
    }

  /* Create the string type using the blank type we either found or created. */
  utype = FUNC3 (utype, rangetype);
}