#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ lang_output_statement_type ;

/* Variables and functions */
 int /*<<< orphan*/  lang_output_statement ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  output_filename ; 
 int /*<<< orphan*/  stat_ptr ; 

void
FUNC1 (void)
{
  lang_output_statement_type *new;

  new = FUNC0 (lang_output_statement, stat_ptr);
  new->name = output_filename;
}