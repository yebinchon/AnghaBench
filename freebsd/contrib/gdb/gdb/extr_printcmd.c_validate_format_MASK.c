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
struct format_data {scalar_t__ size; int count; char format; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1 (struct format_data fmt, char *cmdname)
{
  if (fmt.size != 0)
    FUNC0 ("Size letters are meaningless in \"%s\" command.", cmdname);
  if (fmt.count != 1)
    FUNC0 ("Item count other than 1 is meaningless in \"%s\" command.",
	   cmdname);
  if (fmt.format == 'i' || fmt.format == 's')
    FUNC0 ("Format letter \"%c\" is meaningless in \"%s\" command.",
	   fmt.format, cmdname);
}