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
struct TYPE_2__ {unsigned int offset; } ;
struct dwarf2_cu {TYPE_1__ header; } ;
struct attribute {int form; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct attribute*) ; 
#define  DW_FORM_ref1 133 
#define  DW_FORM_ref2 132 
#define  DW_FORM_ref4 131 
#define  DW_FORM_ref8 130 
#define  DW_FORM_ref_addr 129 
#define  DW_FORM_ref_udata 128 
 unsigned int FUNC1 (struct attribute*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  symfile_complaints ; 

__attribute__((used)) static unsigned int
FUNC4 (struct attribute *attr, struct dwarf2_cu *cu)
{
  unsigned int result = 0;

  switch (attr->form)
    {
    case DW_FORM_ref_addr:
      result = FUNC0 (attr);
      break;
    case DW_FORM_ref1:
    case DW_FORM_ref2:
    case DW_FORM_ref4:
    case DW_FORM_ref8:
    case DW_FORM_ref_udata:
      result = cu->header.offset + FUNC1 (attr);
      break;
    default:
      FUNC2 (&symfile_complaints,
		 "unsupported die ref attribute form: '%s'",
		 FUNC3 (attr->form));
    }
  return result;
}