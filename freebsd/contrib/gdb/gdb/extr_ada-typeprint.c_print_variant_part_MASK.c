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
struct type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct type*,int,struct type*,struct ui_file*,int,int) ; 

__attribute__((used)) static void
FUNC4 (struct type *type, int field_num, struct type *outer_type,
		    struct ui_file *stream, int show, int level)
{
  FUNC2 (stream, "\n%*scase %s is", level + 4, "",
		    FUNC1
		    (FUNC0 (type, field_num)));
  FUNC3 (type, field_num, outer_type, stream, show,
			 level + 4);
  FUNC2 (stream, "\n%*send case;", level + 4, "");
}