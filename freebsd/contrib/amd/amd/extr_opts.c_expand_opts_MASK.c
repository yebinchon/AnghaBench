#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char** opt; char* val; } ;
typedef  TYPE_1__ opt_apply ;

/* Variables and functions */
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (char*,int) ; 

__attribute__((used)) static void
FUNC2(opt_apply *p, int sel_p)
{
  if (*p->opt) {
    *p->opt = FUNC1(*p->opt, sel_p);
  } else if (p->val) {
    /*
     * Do double expansion, remembering
     * to free the string from the first
     * expansion...
     */
    char *s = FUNC1(p->val, TRUE);
    *p->opt = FUNC1(s, sel_p);
    FUNC0(s);
  }
}