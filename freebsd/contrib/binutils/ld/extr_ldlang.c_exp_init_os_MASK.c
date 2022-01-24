#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/ * bfd_section; } ;
typedef  TYPE_8__ lang_output_section_statement_type ;
struct TYPE_18__ {int /*<<< orphan*/  name; } ;
struct TYPE_19__ {int node_class; int /*<<< orphan*/  node_code; } ;
struct TYPE_17__ {TYPE_9__* child; } ;
struct TYPE_16__ {TYPE_9__* child; } ;
struct TYPE_15__ {TYPE_9__* rhs; TYPE_9__* lhs; TYPE_9__* cond; } ;
struct TYPE_14__ {TYPE_9__* rhs; TYPE_9__* lhs; } ;
struct TYPE_13__ {TYPE_9__* src; } ;
struct TYPE_21__ {TYPE_6__ name; TYPE_7__ type; TYPE_5__ unary; TYPE_4__ assert_s; TYPE_3__ trinary; TYPE_2__ binary; TYPE_1__ assign; } ;
typedef  TYPE_9__ etree_type ;

/* Variables and functions */
#define  ADDR 137 
#define  LOADADDR 136 
#define  SIZEOF 135 
#define  etree_assert 134 
#define  etree_assign 133 
#define  etree_binary 132 
#define  etree_name 131 
#define  etree_provide 130 
#define  etree_trinary 129 
#define  etree_unary 128 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (etree_type *exp)
{
  switch (exp->type.node_class)
    {
    case etree_assign:
    case etree_provide:
      FUNC2 (exp->assign.src);
      break;

    case etree_binary:
      FUNC2 (exp->binary.lhs);
      FUNC2 (exp->binary.rhs);
      break;

    case etree_trinary:
      FUNC2 (exp->trinary.cond);
      FUNC2 (exp->trinary.lhs);
      FUNC2 (exp->trinary.rhs);
      break;

    case etree_assert:
      FUNC2 (exp->assert_s.child);
      break;

    case etree_unary:
      FUNC2 (exp->unary.child);
      break;

    case etree_name:
      switch (exp->type.node_code)
	{
	case ADDR:
	case LOADADDR:
	case SIZEOF:
	  {
	    lang_output_section_statement_type *os;

	    os = FUNC1 (exp->name.name);
	    if (os != NULL && os->bfd_section == NULL)
	      FUNC0 (os, NULL, 0);
	  }
	}
      break;

    default:
      break;
    }
}