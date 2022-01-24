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
typedef  TYPE_1__* tree_live_info_p ;
struct tree_live_info_d {int dummy; } ;
typedef  void* bitmap ;
struct TYPE_3__ {int /*<<< orphan*/ * liveout; void** livein; void* global; int /*<<< orphan*/  num_blocks; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  last_basic_block ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static tree_live_info_p
FUNC3 (var_map map)
{
  tree_live_info_p live;
  unsigned x;

  live = (tree_live_info_p) FUNC2 (sizeof (struct tree_live_info_d));
  live->map = map;
  live->num_blocks = last_basic_block;

  live->global = FUNC0 (NULL);

  live->livein = (bitmap *)FUNC2 (FUNC1 (map) * sizeof (bitmap));
  for (x = 0; x < FUNC1 (map); x++)
    live->livein[x] = FUNC0 (NULL);

  /* liveout is deferred until it is actually requested.  */
  live->liveout = NULL;
  return live;
}