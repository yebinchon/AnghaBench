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
struct ggc_pch_data {int /*<<< orphan*/  d; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ggc_pch_data*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 

void
FUNC3 (struct ggc_pch_data *d, FILE *f)
{
  if (FUNC2 (&d->d, sizeof (d->d), 1, f) != 1)
    FUNC0 ("can't write PCH file: %m");
  FUNC1 (d);
}