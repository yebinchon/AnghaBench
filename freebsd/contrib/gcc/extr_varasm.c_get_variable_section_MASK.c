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
typedef  int /*<<< orphan*/  section ;
struct TYPE_3__ {int /*<<< orphan*/ * (* select_section ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; scalar_t__ have_switchable_bss_sections; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * bss_noswitch_section ; 
 int /*<<< orphan*/ * comm_section ; 
 int FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  flag_data_sections ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * lcomm_section ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_2__ targetm ; 
 int /*<<< orphan*/ * tls_comm_section ; 

__attribute__((used)) static section *
FUNC14 (tree decl, bool prefer_noswitch_p)
{
  int reloc;

  /* If the decl has been given an explicit section name, then it
     isn't common, and shouldn't be handled as such.  */
  if (FUNC1 (decl) && FUNC3 (decl) == NULL)
    {
      if (FUNC4 (decl))
	return tls_comm_section;
      if (FUNC6 (decl) && FUNC8 (decl))
	return comm_section;
    }

  if (FUNC2 (decl) == error_mark_node)
    reloc = FUNC10 (FUNC7 (decl)) ? 3 : 0;
  else if (FUNC2 (decl))
    reloc = FUNC9 (FUNC2 (decl));
  else
    reloc = 0;

  FUNC12 (decl, reloc, flag_data_sections);
  if (FUNC5 (decl))
    return FUNC11 (decl, NULL, reloc);

  if (!FUNC4 (decl)
      && !(prefer_noswitch_p && targetm.have_switchable_bss_sections)
      && FUNC8 (decl))
    {
      if (!FUNC6 (decl))
	return lcomm_section;
      if (bss_noswitch_section)
	return bss_noswitch_section;
    }

  return targetm.asm_out.select_section (decl, reloc, FUNC0 (decl));
}