#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int bfd_print_symbol_type ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_7__ {char* name; TYPE_2__* section; } ;
typedef  TYPE_1__ asymbol ;
struct TYPE_8__ {char* name; } ;
typedef  TYPE_2__ asection ;
struct TYPE_9__ {int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  bfd_print_symbol_all 130 
#define  bfd_print_symbol_more 129 
#define  bfd_print_symbol_name 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_3__* FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4 (bfd *abfd,
		   void * afile,
		   asymbol *symbol,
		   bfd_print_symbol_type how)
{
  FILE *file = (FILE *) afile;

  switch (how)
    {
    case bfd_print_symbol_name:
      FUNC2 (file, "%s", symbol->name);
      break;
    case bfd_print_symbol_more:
      FUNC0 ();
      break;
    case bfd_print_symbol_all:
      {
	const char *section_name =
	  (symbol->section == (asection *) NULL
	   ? "*abs"
	   : symbol->section->name);

	if (symbol->name[0] == ' ')
	  FUNC2 (file, "* empty table entry ");
	else
	  {
	    FUNC1 (abfd, (void *) file, symbol);

	    FUNC2 (file, " %-5s %04x %02x %s",
		     section_name,
		     (unsigned) FUNC3 (symbol)->index,
		     (unsigned) 0,
		     symbol->name);
	  }
      }
      break;
    }
}