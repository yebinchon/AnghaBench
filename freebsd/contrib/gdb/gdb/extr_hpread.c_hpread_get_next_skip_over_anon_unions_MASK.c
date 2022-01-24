#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  index; } ;
struct TYPE_8__ {TYPE_2__ dnttp; } ;
struct TYPE_6__ {int bitoffset; int name; TYPE_3__ nextfield; int /*<<< orphan*/  type; } ;
union dnttentry {TYPE_1__ dfield; } ;
struct type {int dummy; } ;
struct objfile {int dummy; } ;
typedef  TYPE_3__ dnttpointer ;

/* Variables and functions */
 struct type* FUNC0 (struct type*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 scalar_t__ TYPE_CODE_UNION ; 
 int FUNC3 (struct type*) ; 
 char* FUNC4 (struct objfile*) ; 
 int /*<<< orphan*/  FUNC5 (struct type*,int) ; 
 union dnttentry* FUNC6 (int /*<<< orphan*/ ,struct objfile*) ; 
 struct type* FUNC7 (int /*<<< orphan*/ ,struct objfile*) ; 

__attribute__((used)) static dnttpointer
FUNC8 (int skip_fields, dnttpointer field,
				       union dnttentry **fieldp,
				       struct objfile *objfile)
{
  struct type *anon_type;
  int i;
  int bitoffset;
  char *name;

  for (i = 0; i < skip_fields; i++)
    {
      /* Get type of item we're looking at now; recursively processes the types
         of these intermediate items we skip over, so they aren't lost. */
      anon_type = FUNC7 ((*fieldp)->dfield.type, objfile);
      anon_type = FUNC0 (anon_type);
      bitoffset = (*fieldp)->dfield.bitoffset;
      name = FUNC4 (objfile) + (*fieldp)->dfield.name;
      /* First skip over one item to avoid stack death on recursion */
      field = (*fieldp)->dfield.nextfield;
      *fieldp = FUNC6 (field.dnttp.index, objfile);
      /* Do we have another anonymous union? If so, adjust the bitoffsets
         of its members and skip over its members. */
      if ((FUNC2 (anon_type) == TYPE_CODE_UNION) &&
	  (!name || FUNC1 (name, "")))
	{
	  FUNC5 (anon_type, bitoffset);
	  field = FUNC8 (FUNC3 (anon_type), field, fieldp, objfile);
	}
    }
  return field;
}