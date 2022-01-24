#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int node_code; int /*<<< orphan*/  node_class; int /*<<< orphan*/  lineno; } ;
struct TYPE_14__ {char const* name; TYPE_2__ type; } ;
struct TYPE_15__ {TYPE_3__ name; } ;
typedef  TYPE_4__ etree_type ;
struct TYPE_12__ {int /*<<< orphan*/  value; scalar_t__ valid_p; } ;
struct TYPE_16__ {TYPE_1__ result; } ;

/* Variables and functions */
 int /*<<< orphan*/  etree_name ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_8__ expld ; 
 int /*<<< orphan*/  lineno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_4__*,int) ; 
 TYPE_4__* FUNC3 (int) ; 

etree_type *
FUNC4 (int code, const char *name)
{
  etree_type value, *new;

  value.name.type.node_code = code;
  value.name.type.lineno = lineno;
  value.name.name = name;
  value.name.type.node_class = etree_name;

  FUNC0 (&value);
  if (expld.result.valid_p)
    return FUNC1 (expld.result.value);

  new = FUNC3 (sizeof (new->name));
  FUNC2 (new, &value, sizeof (new->name));
  return new;

}