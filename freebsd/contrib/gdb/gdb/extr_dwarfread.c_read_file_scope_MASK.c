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
struct type {int dummy; } ;
struct symtab {int /*<<< orphan*/  language; } ;
struct TYPE_2__ {scalar_t__ entry_point; scalar_t__ deprecated_entry_file_lowpc; scalar_t__ deprecated_entry_file_highpc; } ;
struct objfile {TYPE_1__ ei; } ;
struct dieinfo {scalar_t__ at_low_pc; scalar_t__ at_high_pc; int die_length; int /*<<< orphan*/  at_comp_dir; int /*<<< orphan*/  at_name; int /*<<< orphan*/ * at_producer; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int FT_NUM_MEMBERS ; 
 int /*<<< orphan*/  cu_language ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 struct symtab* FUNC2 (scalar_t__,struct objfile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_utypes ; 
 struct type** ftypes ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lnbase ; 
 struct cleanup* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct type**,int /*<<< orphan*/ ,int) ; 
 int numutypes ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,struct objfile*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct dieinfo*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct type** utypes ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void
FUNC11 (struct dieinfo *dip, char *thisdie, char *enddie,
		 struct objfile *objfile)
{
  struct cleanup *back_to;
  struct symtab *symtab;

  if (objfile->ei.entry_point >= dip->at_low_pc &&
      objfile->ei.entry_point < dip->at_high_pc)
    {
      objfile->ei.deprecated_entry_file_lowpc = dip->at_low_pc;
      objfile->ei.deprecated_entry_file_highpc = dip->at_high_pc;
    }
  FUNC8 (dip);
  if (dip->at_producer != NULL)
    {
      FUNC3 (dip->at_producer);
    }
  numutypes = (enddie - thisdie) / 4;
  utypes = (struct type **) FUNC10 (numutypes * sizeof (struct type *));
  back_to = FUNC4 (free_utypes, NULL);
  FUNC5 (utypes, 0, numutypes * sizeof (struct type *));
  FUNC5 (ftypes, 0, FT_NUM_MEMBERS * sizeof (struct type *));
  FUNC9 (dip->at_name, dip->at_comp_dir, dip->at_low_pc);
  FUNC7 ("DWARF 1");
  FUNC0 (lnbase);
  FUNC6 (thisdie + dip->die_length, enddie, objfile);

  symtab = FUNC2 (dip->at_high_pc, objfile, 0);
  if (symtab != NULL)
    {
      symtab->language = cu_language;
    }
  FUNC1 (back_to);
}