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
struct dictionary {int dummy; } ;
struct dict_iterator {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct dictionary*,struct dict_iterator*) ; 

int
FUNC1 (struct dictionary *dict)
{
  struct dict_iterator iter;

  return (FUNC0 (dict, &iter) == NULL);
}