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
struct edge_to_cases_elt {int /*<<< orphan*/  e; } ;
typedef  int /*<<< orphan*/  hashval_t ;
typedef  int /*<<< orphan*/  edge ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static hashval_t
FUNC1 (const void *p)
{
  edge e = ((struct edge_to_cases_elt *)p)->e;

  /* Hash on the edge itself (which is a pointer).  */
  return FUNC0 (e);
}