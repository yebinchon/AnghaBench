#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* edge ;
struct TYPE_7__ {TYPE_1__* dest; TYPE_2__* src; } ;
struct TYPE_6__ {int index; } ;
struct TYPE_5__ {int index; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 

void
FUNC2 (const char *str, const edge *edge_list, int num_edges, FILE *file)
{
  int i;

  if (! edge_list)
    return;

  FUNC0 (file, "%s { ", str);
  for (i = 0; i < num_edges; i++)
    FUNC0 (file, "%d->%d ", edge_list[i]->src->index,
	     edge_list[i]->dest->index);

  FUNC1 ("}\n", file);
}