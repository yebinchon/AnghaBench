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
struct bcache {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (void const*,int,struct bcache*) ; 

void *
FUNC1 (const void *addr, int length, struct bcache *bcache)
{
  return FUNC0 (addr, length, bcache);
}