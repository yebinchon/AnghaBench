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
struct iv_ca {int n_cands; } ;

/* Variables and functions */

__attribute__((used)) static unsigned
FUNC0 (struct iv_ca *ivs)
{
  return ivs->n_cands;
}