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
struct translation {struct translation* next; } ;

/* Variables and functions */
 struct translation* all_translations ; 

__attribute__((used)) static void
FUNC0 (struct translation *t)
{
  t->next = all_translations;
  all_translations = t;
}