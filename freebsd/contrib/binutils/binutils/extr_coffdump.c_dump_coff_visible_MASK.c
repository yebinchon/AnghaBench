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
struct coff_visible {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  coff_vis_auto 138 
#define  coff_vis_autoparam 137 
#define  coff_vis_common 136 
#define  coff_vis_ext_def 135 
#define  coff_vis_ext_ref 134 
#define  coff_vis_int_def 133 
#define  coff_vis_member_of_enum 132 
#define  coff_vis_member_of_struct 131 
#define  coff_vis_register 130 
#define  coff_vis_regparam 129 
#define  coff_vis_tag 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (struct coff_visible *p)
{
  FUNC3 (1);
  switch (p->type)
    {
    case coff_vis_ext_def:
      FUNC2 ("coff_vis_ext_def");
      break;
    case coff_vis_ext_ref:
      FUNC2 ("coff_vis_ext_ref");
      break;
    case coff_vis_int_def:
      FUNC2 ("coff_vis_int_def");
      break;
    case coff_vis_common:
      FUNC2 ("coff_vis_common");
      break;
    case coff_vis_auto:
      FUNC2 ("coff_vis_auto");
      break;
    case coff_vis_autoparam:
      FUNC2 ("coff_vis_autoparam");
      break;
    case coff_vis_regparam:
      FUNC2 ("coff_vis_regparam");
      break;
    case coff_vis_register:
      FUNC2 ("coff_vis_register");
      break;
    case coff_vis_tag:
      FUNC2 ("coff_vis_tag");
      break;
    case coff_vis_member_of_struct:
      FUNC2 ("coff_vis_member_of_struct");
      break;
    case coff_vis_member_of_enum:
      FUNC2 ("coff_vis_member_of_enum");
      break;
    default:
      FUNC0 ();
    }
  FUNC1 ();
  FUNC3 (-1);
}