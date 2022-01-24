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
struct ui_file {int dummy; } ;
struct expression {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PREC_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct expression*,int*,struct ui_file*,int /*<<< orphan*/ ) ; 

void
FUNC1 (struct expression *exp, struct ui_file *stream)
{
  int pc = 0;
  FUNC0 (exp, &pc, stream, PREC_NULL);
}