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
struct symtab {char* filename; char* dirname; int primary; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct symtab*) ; 
 int /*<<< orphan*/  FUNC1 (struct symtab*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct symtab*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC5 (struct symtab *s)
{
  FUNC4 (stderr, "Symtab %p\n    File: %s; Dir: %s\n", s,
	   s->filename, s->dirname);
  FUNC4 (stderr, "    Blockvector: %p, Primary: %d\n",
	   FUNC0 (s), s->primary);
  FUNC2 (FUNC0 (s));
  FUNC4 (stderr, "    Line table: %p\n", FUNC1 (s));
  FUNC3 (FUNC1 (s));
}