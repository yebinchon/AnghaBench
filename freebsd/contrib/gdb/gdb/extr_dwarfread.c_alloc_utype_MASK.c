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
typedef  int DIE_REF ;

/* Variables and functions */
 int /*<<< orphan*/  DIE_ID ; 
 int /*<<< orphan*/  DIE_NAME ; 
 int /*<<< orphan*/  FT_INTEGER ; 
 struct type* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_objfile ; 
 int dbroff ; 
 struct type* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int numutypes ; 
 int /*<<< orphan*/  symfile_complaints ; 
 struct type** utypes ; 

__attribute__((used)) static struct type *
FUNC4 (DIE_REF die_ref, struct type *utypep)
{
  struct type **typep;
  int utypeidx;

  utypeidx = (die_ref - dbroff) / 4;
  typep = utypes + utypeidx;
  if ((utypeidx < 0) || (utypeidx >= numutypes))
    {
      utypep = FUNC3 (current_objfile, FT_INTEGER);
      FUNC1 (DIE_ID, DIE_NAME, die_ref);
    }
  else if (*typep != NULL)
    {
      utypep = *typep;
      FUNC2 (&symfile_complaints,
		 "DIE @ 0x%x \"%s\", internal error: duplicate user type allocation",
		 DIE_ID, DIE_NAME);
    }
  else
    {
      if (utypep == NULL)
	{
	  utypep = FUNC0 (current_objfile);
	}
      *typep = utypep;
    }
  return (utypep);
}