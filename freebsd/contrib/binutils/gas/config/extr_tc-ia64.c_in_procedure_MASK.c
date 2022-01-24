#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ sym; } ;
struct TYPE_4__ {int /*<<< orphan*/  saved_text_seg; TYPE_1__ proc_pending; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 TYPE_2__ unwind ; 
 int FUNC1 (char*,char const*) ; 

__attribute__((used)) static int
FUNC2 (const char *directive)
{
  if (unwind.proc_pending.sym
      && (!unwind.saved_text_seg || FUNC0 (directive, "endp") == 0))
    return 1;
  return FUNC1 ("procedure", directive);
}