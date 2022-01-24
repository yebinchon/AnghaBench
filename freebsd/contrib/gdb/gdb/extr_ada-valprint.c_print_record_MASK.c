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
typedef  enum val_prettyprint { ____Placeholder_val_prettyprint } val_prettyprint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_file*,char*) ; 
 scalar_t__ FUNC2 (struct type*,char*,struct ui_file*,int,int,int,int /*<<< orphan*/ ,struct type*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct ui_file*) ; 

__attribute__((used)) static void
FUNC4 (struct type *type, char *valaddr, struct ui_file *stream,
	      int format, int recurse, enum val_prettyprint pretty)
{
  FUNC0 (type);

  FUNC1 (stream, "(");

  if (FUNC2 (type, valaddr, stream, format, recurse, pretty,
			  0, type, valaddr) != 0 && pretty)
    {
      FUNC1 (stream, "\n");
      FUNC3 (2 * recurse, stream);
    }

  FUNC1 (stream, ")");
}