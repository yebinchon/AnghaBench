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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct ui_file*,char) ; 
 int /*<<< orphan*/  FUNC1 (char,struct ui_file*) ; 

void
FUNC2 (int c, struct ui_file *stream)
{
  FUNC1 ('\'', stream);
  FUNC0 (c, stream, '\'');
  FUNC1 ('\'', stream);
}