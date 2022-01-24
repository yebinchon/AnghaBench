#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* totals; } ;
struct ggc_pch_data {TYPE_1__ d; } ;
struct TYPE_4__ {int /*<<< orphan*/  pagesize; } ;

/* Variables and functions */
 TYPE_2__ G ; 
 unsigned int NUM_ORDERS ; 
 int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 

size_t
FUNC2 (struct ggc_pch_data *d)
{
  size_t a = 0;
  unsigned i;

  for (i = 0; i < NUM_ORDERS; i++)
    a += FUNC1 (d->d.totals[i] * FUNC0 (i), G.pagesize);
  return a;
}