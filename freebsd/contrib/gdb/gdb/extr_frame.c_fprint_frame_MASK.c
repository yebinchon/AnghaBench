#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ui_file {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  value; scalar_t__ p; } ;
struct frame_info {TYPE_4__* next; TYPE_2__ this_id; int /*<<< orphan*/ * unwind; int /*<<< orphan*/  type; int /*<<< orphan*/  level; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; scalar_t__ p; } ;
struct TYPE_5__ {int /*<<< orphan*/  value; scalar_t__ p; } ;
struct TYPE_8__ {TYPE_3__ prev_func; TYPE_1__ prev_pc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (struct ui_file *file, struct frame_info *fi)
{
  if (fi == NULL)
    {
      FUNC2 (file, "<NULL frame>");
      return;
    }
  FUNC2 (file, "{");
  FUNC2 (file, "level=%d", fi->level);
  FUNC2 (file, ",");
  FUNC2 (file, "type=");
  FUNC1 (file, fi->type);
  FUNC2 (file, ",");
  FUNC2 (file, "unwind=");
  if (fi->unwind != NULL)
    FUNC3 (fi->unwind, file);
  else
    FUNC2 (file, "<unknown>");
  FUNC2 (file, ",");
  FUNC2 (file, "pc=");
  if (fi->next != NULL && fi->next->prev_pc.p)
    FUNC2 (file, "0x%s", FUNC4 (fi->next->prev_pc.value));
  else
    FUNC2 (file, "<unknown>");
  FUNC2 (file, ",");
  FUNC2 (file, "id=");
  if (fi->this_id.p)
    FUNC0 (file, fi->this_id.value);
  else
    FUNC2 (file, "<unknown>");
  FUNC2 (file, ",");
  FUNC2 (file, "func=");
  if (fi->next != NULL && fi->next->prev_func.p)
    FUNC2 (file, "0x%s", FUNC4 (fi->next->prev_func.addr));
  else
    FUNC2 (file, "<unknown>");
  FUNC2 (file, "}");
}