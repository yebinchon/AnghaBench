#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_14__ ;
typedef  struct TYPE_16__   TYPE_13__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  value; } ;
struct TYPE_22__ {TYPE_4__ def; } ;
struct bfd_link_hash_entry {TYPE_5__ u; } ;
struct TYPE_25__ {int /*<<< orphan*/  bfd_section; } ;
typedef  TYPE_8__ lang_output_section_statement_type ;
struct TYPE_26__ {TYPE_14__* exp; } ;
typedef  TYPE_9__ lang_assignment_statement_type ;
typedef  int /*<<< orphan*/  etree_type ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int bfd_boolean ;
struct TYPE_24__ {TYPE_6__* section; int /*<<< orphan*/  value; scalar_t__ valid_p; } ;
struct TYPE_23__ {scalar_t__ vma; } ;
struct TYPE_20__ {char* dst; int /*<<< orphan*/ * src; } ;
struct TYPE_19__ {int /*<<< orphan*/ * child; } ;
struct TYPE_18__ {scalar_t__ node_class; } ;
struct TYPE_17__ {TYPE_3__ assign; TYPE_2__ assert_s; TYPE_1__ type; } ;
struct TYPE_16__ {TYPE_7__ result; } ;
struct TYPE_15__ {int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 unsigned int SECTION_NAME_MAP_LENGTH ; 
 int TRUE ; 
 struct bfd_link_hash_entry* FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,int) ; 
 scalar_t__ etree_assert ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_14__*) ; 
 TYPE_13__ expld ; 
 TYPE_12__ link_info ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  print_dot ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7 (lang_assignment_statement_type *assignment,
		  lang_output_section_statement_type *output_section)
{
  unsigned int i;
  bfd_boolean is_dot;
  bfd_boolean computation_is_valid = TRUE;
  etree_type *tree;

  for (i = 0; i < SECTION_NAME_MAP_LENGTH; i++)
    FUNC5 ();

  if (assignment->exp->type.node_class == etree_assert)
    {
      is_dot = FALSE;
      tree = assignment->exp->assert_s.child;
      computation_is_valid = TRUE;
    }
  else
    {
      const char *dst = assignment->exp->assign.dst;

      is_dot = (dst[0] == '.' && dst[1] == 0);
      tree = assignment->exp->assign.src;
      computation_is_valid = is_dot || (FUNC6 (dst, tree) == FALSE);
    }

  FUNC1 (tree, output_section->bfd_section, &print_dot);
  if (expld.result.valid_p)
    {
      bfd_vma value;

      if (computation_is_valid)
	{
	  value = expld.result.value;

	  if (expld.result.section)
	    value += expld.result.section->vma;

	  FUNC3 ("0x%V", value);
	  if (is_dot)
	    print_dot = value;
	}
      else
	{
	  struct bfd_link_hash_entry *h;

	  h = FUNC0 (link_info.hash, assignment->exp->assign.dst,
				    FALSE, FALSE, TRUE);
	  if (h)
	    {
	      value = h->u.def.value;

	      if (expld.result.section)
	      value += expld.result.section->vma;

	      FUNC3 ("[0x%V]", value);
	    }
	  else
	    FUNC3 ("[unresolved]");
	}
    }
  else
    {
      FUNC3 ("*undef*   ");
#ifdef BFD64
      minfo ("        ");
#endif
    }

  FUNC3 ("                ");
  FUNC2 (assignment->exp);
  FUNC4 ();
}