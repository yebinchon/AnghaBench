#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  enum section_category { ____Placeholder_section_category } section_category ;
struct TYPE_3__ {int (* reloc_rw_mask ) () ;} ;
struct TYPE_4__ {scalar_t__ have_srodata_section; scalar_t__ (* in_small_data_p ) (int /*<<< orphan*/ ) ;TYPE_1__ asm_out; } ;

/* Variables and functions */
 scalar_t__ CONSTRUCTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 int SECCAT_BSS ; 
 int SECCAT_DATA ; 
 int SECCAT_DATA_REL ; 
 int SECCAT_DATA_REL_LOCAL ; 
 int SECCAT_DATA_REL_RO ; 
 int SECCAT_DATA_REL_RO_LOCAL ; 
 int SECCAT_RODATA ; 
 int SECCAT_RODATA_MERGE_CONST ; 
 int SECCAT_RODATA_MERGE_STR ; 
 int SECCAT_RODATA_MERGE_STR_INIT ; 
 int SECCAT_SBSS ; 
 int SECCAT_SDATA ; 
 int SECCAT_SRODATA ; 
 int SECCAT_TBSS ; 
 int SECCAT_TDATA ; 
 int SECCAT_TEXT ; 
 scalar_t__ STRING_CST ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int flag_merge_constants ; 
 scalar_t__ flag_mudflap ; 
 scalar_t__ flag_zero_initialized_in_bss ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int FUNC9 () ; 
 int FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_2__ targetm ; 

enum section_category
FUNC12 (tree decl, int reloc)
{
  enum section_category ret;

  if (FUNC2 (decl) == FUNCTION_DECL)
    return SECCAT_TEXT;
  else if (FUNC2 (decl) == STRING_CST)
    {
      if (flag_mudflap) /* or !flag_merge_constants */
        return SECCAT_RODATA;
      else
	return SECCAT_RODATA_MERGE_STR;
    }
  else if (FUNC2 (decl) == VAR_DECL)
    {
      if (FUNC6 (decl))
	ret = SECCAT_BSS;
      else if (! FUNC4 (decl)
	       || FUNC5 (decl)
	       || ! FUNC3 (FUNC0 (decl)))
	{
	  /* Here the reloc_rw_mask is not testing whether the section should
	     be read-only or not, but whether the dynamic link will have to
	     do something.  If so, we wish to segregate the data in order to
	     minimize cache misses inside the dynamic linker.  */
	  if (reloc & targetm.asm_out.reloc_rw_mask ())
	    ret = reloc == 1 ? SECCAT_DATA_REL_LOCAL : SECCAT_DATA_REL;
	  else
	    ret = SECCAT_DATA;
	}
      else if (reloc & targetm.asm_out.reloc_rw_mask ())
	ret = reloc == 1 ? SECCAT_DATA_REL_RO_LOCAL : SECCAT_DATA_REL_RO;
      else if (reloc || flag_merge_constants < 2)
	/* C and C++ don't allow different variables to share the same
	   location.  -fmerge-all-constants allows even that (at the
	   expense of not conforming).  */
	ret = SECCAT_RODATA;
      else if (FUNC2 (FUNC0 (decl)) == STRING_CST)
	ret = SECCAT_RODATA_MERGE_STR_INIT;
      else
	ret = SECCAT_RODATA_MERGE_CONST;
    }
  else if (FUNC2 (decl) == CONSTRUCTOR)
    {
      if ((reloc & targetm.asm_out.reloc_rw_mask ())
	  || FUNC5 (decl)
	  || ! FUNC3 (decl))
	ret = SECCAT_DATA;
      else
	ret = SECCAT_RODATA;
    }
  else
    ret = SECCAT_RODATA;

  /* There are no read-only thread-local sections.  */
  if (FUNC2 (decl) == VAR_DECL && FUNC1 (decl))
    {
      /* Note that this would be *just* SECCAT_BSS, except that there's
	 no concept of a read-only thread-local-data section.  */
      if (ret == SECCAT_BSS
	  || (flag_zero_initialized_in_bss
	      && FUNC7 (FUNC0 (decl))))
	ret = SECCAT_TBSS;
      else
	ret = SECCAT_TDATA;
    }

  /* If the target uses small data sections, select it.  */
  else if (targetm.in_small_data_p (decl))
    {
      if (ret == SECCAT_BSS)
	ret = SECCAT_SBSS;
      else if (targetm.have_srodata_section && ret == SECCAT_RODATA)
	ret = SECCAT_SRODATA;
      else
	ret = SECCAT_SDATA;
    }

  return ret;
}