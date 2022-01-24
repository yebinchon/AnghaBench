#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct extended_symbol_info {TYPE_4__* elfinfo; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_7__ {TYPE_2__* section; } ;
struct TYPE_5__ {int /*<<< orphan*/  st_info; } ;
struct TYPE_8__ {TYPE_3__ symbol; TYPE_1__ internal_elf_sym; } ;
struct TYPE_6__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct extended_symbol_info*) ; 
 scalar_t__ FUNC2 (struct extended_symbol_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct extended_symbol_info*) ; 
 char* FUNC4 (struct extended_symbol_info*) ; 
 char FUNC5 (struct extended_symbol_info*) ; 
 scalar_t__ FUNC6 (struct extended_symbol_info*) ; 
 scalar_t__ FUNC7 (char) ; 
 char* desc_format ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int print_width ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static void
FUNC12 (struct extended_symbol_info *info, bfd *abfd)
{
  FUNC9 ("%-20s|", FUNC1 (info), abfd);

  if (FUNC7 (FUNC5 (info)))
    {
      if (print_width == 32)
	FUNC11 ("        ");
      else
	FUNC11 ("                ");
    }
  else
    FUNC10 (abfd, FUNC6 (info));

  FUNC11 ("|   %c  |", FUNC5 (info));

  if (FUNC5 (info) == '-')
    {
      /* A stab.  */
      FUNC11 ("%18s|  ", FUNC4 (info));		/* (C) Type.  */
      FUNC11 (desc_format, FUNC3 (info));	/* Size.  */
      FUNC11 ("|     |");				/* Line, Section.  */
    }
  else
    {
      /* Type, Size, Line, Section */
      if (info->elfinfo)
	FUNC11 ("%18s|",
		FUNC8 (FUNC0 (info->elfinfo->internal_elf_sym.st_info)));
      else
	FUNC11 ("                  |");

      if (FUNC2 (info))
	FUNC10 (abfd, FUNC2 (info));
      else
	{
	  if (print_width == 32)
	    FUNC11 ("        ");
	  else
	    FUNC11 ("                ");
	}

      if (info->elfinfo)
	FUNC11("|     |%s", info->elfinfo->symbol.section->name);
      else
	FUNC11("|     |");
    }
}