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
struct nfe_cache_elt {void const* exit; } ;

/* Variables and functions */

__attribute__((used)) static int
FUNC0 (const void *e1, const void *e2)
{
  const struct nfe_cache_elt *elt1 = e1;

  return elt1->exit == e2;
}