#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  var_map ;
struct partition_pair_d {int dummy; } ;
struct coalesce_list_d {int dummy; } ;
typedef  int /*<<< orphan*/  partition_pair_p ;
typedef  TYPE_1__* coalesce_list_p ;
struct TYPE_3__ {int add_mode; int /*<<< orphan*/ * list; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

coalesce_list_p 
FUNC3 (var_map map)
{
  coalesce_list_p list;

  list = (coalesce_list_p) FUNC2 (sizeof (struct coalesce_list_d));

  list->map = map;
  list->add_mode = true;
  list->list = (partition_pair_p *) FUNC1 (FUNC0 (map),
					     sizeof (struct partition_pair_d));
  return list;
}