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
struct dummy_frame {int /*<<< orphan*/  call_hi; int /*<<< orphan*/  call_lo; int /*<<< orphan*/  id; int /*<<< orphan*/  top; int /*<<< orphan*/  sp; int /*<<< orphan*/  fp; int /*<<< orphan*/  pc; struct dummy_frame* next; } ;

/* Variables and functions */
 struct dummy_frame* dummy_frame_stack ; 
 int /*<<< orphan*/  FUNC0 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct dummy_frame*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct ui_file *file)
{
  struct dummy_frame *s;
  for (s = dummy_frame_stack; s != NULL; s = s->next)
    {
      FUNC2 (s, file);
      FUNC1 (file, ":");
      FUNC1 (file, " pc=0x%s", FUNC3 (s->pc));
      FUNC1 (file, " fp=0x%s", FUNC3 (s->fp));
      FUNC1 (file, " sp=0x%s", FUNC3 (s->sp));
      FUNC1 (file, " top=0x%s", FUNC3 (s->top));
      FUNC1 (file, " id=");
      FUNC0 (file, s->id);
      FUNC1 (file, " call_lo=0x%s", FUNC3 (s->call_lo));
      FUNC1 (file, " call_hi=0x%s", FUNC3 (s->call_hi));
      FUNC1 (file, "\n");
    }
}