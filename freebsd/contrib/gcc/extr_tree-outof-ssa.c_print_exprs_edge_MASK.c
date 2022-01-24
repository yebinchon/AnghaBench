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
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_3__* edge ;
struct TYPE_7__ {TYPE_2__* dest; TYPE_1__* src; } ;
struct TYPE_6__ {int index; } ;
struct TYPE_5__ {int index; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2 (FILE *f, edge e, const char *str1, tree expr1, 
		  const char *str2, tree expr2)
{
  FUNC1 (f, str1, expr1, str2, expr2, " across an abnormal edge");
  FUNC0 (f, " from BB%d->BB%d\n", e->src->index,
	       e->dest->index);
}