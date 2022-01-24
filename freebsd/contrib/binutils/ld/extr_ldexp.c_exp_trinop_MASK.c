#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int node_code; int /*<<< orphan*/  node_class; int /*<<< orphan*/  lineno; } ;
struct TYPE_15__ {TYPE_4__* rhs; TYPE_4__* cond; TYPE_4__* lhs; } ;
struct TYPE_18__ {TYPE_3__ type; TYPE_1__ trinary; } ;
typedef  TYPE_4__ etree_type ;
struct TYPE_16__ {int /*<<< orphan*/  value; scalar_t__ valid_p; } ;
struct TYPE_19__ {TYPE_2__ result; } ;

/* Variables and functions */
 int /*<<< orphan*/  etree_trinary ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_8__ expld ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_4__*,int) ; 
 TYPE_4__* FUNC3 (int) ; 

etree_type *
FUNC4 (int code, etree_type *cond, etree_type *lhs, etree_type *rhs)
{
  etree_type value, *new;

  value.type.node_code = code;
  value.type.lineno = lhs->type.lineno;
  value.trinary.lhs = lhs;
  value.trinary.cond = cond;
  value.trinary.rhs = rhs;
  value.type.node_class = etree_trinary;
  FUNC0 (&value);
  if (expld.result.valid_p)
    return FUNC1 (expld.result.value);

  new = FUNC3 (sizeof (new->trinary));
  FUNC2 (new, &value, sizeof (new->trinary));
  return new;
}