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
struct pred_data {char const* name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct pred_data*) ; 
 int /*<<< orphan*/  predicate_table ; 

struct pred_data *
FUNC1 (const char *name)
{
  struct pred_data key;
  key.name = name;
  return (struct pred_data *) FUNC0 (predicate_table, &key);
}