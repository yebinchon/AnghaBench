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
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (struct type *type, struct ui_file *stream)
{
  /* Override type name "float" and make it the
     appropriate real. XLC stupidly outputs -12 as a type
     for real when it really should be outputting -18 */

  FUNC1 (stream, "real*%d", FUNC0 (type));
}