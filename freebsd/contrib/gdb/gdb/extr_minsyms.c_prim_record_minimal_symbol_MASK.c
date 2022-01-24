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
struct objfile {int dummy; } ;
typedef  enum minimal_symbol_type { ____Placeholder_minimal_symbol_type } minimal_symbol_type ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (struct objfile*) ; 
 int FUNC1 (struct objfile*) ; 
 int FUNC2 (struct objfile*) ; 
#define  mst_bss 134 
#define  mst_data 133 
#define  mst_file_bss 132 
#define  mst_file_data 131 
#define  mst_file_text 130 
#define  mst_solib_trampoline 129 
#define  mst_text 128 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,struct objfile*) ; 

void
FUNC4 (const char *name, CORE_ADDR address,
			    enum minimal_symbol_type ms_type,
			    struct objfile *objfile)
{
  int section;

  switch (ms_type)
    {
    case mst_text:
    case mst_file_text:
    case mst_solib_trampoline:
      section = FUNC2 (objfile);
      break;
    case mst_data:
    case mst_file_data:
      section = FUNC1 (objfile);
      break;
    case mst_bss:
    case mst_file_bss:
      section = FUNC0 (objfile);
      break;
    default:
      section = -1;
    }

  FUNC3 (name, address, ms_type,
				       NULL, section, NULL, objfile);
}