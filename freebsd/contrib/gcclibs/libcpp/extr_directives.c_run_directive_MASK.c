#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uchar ;
struct TYPE_12__ {TYPE_7__* directive; } ;
typedef  TYPE_1__ cpp_reader ;
struct TYPE_13__ {int /*<<< orphan*/  (* handler ) (TYPE_1__*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,size_t,int) ; 
 TYPE_7__* dtable ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  traditional ; 

__attribute__((used)) static void
FUNC8 (cpp_reader *pfile, int dir_no, const char *buf, size_t count)
{
  FUNC3 (pfile, (const uchar *) buf, count,
		   /* from_stage3 */ true);
  FUNC6 (pfile);

  /* This is a short-term fix to prevent a leading '#' being
     interpreted as a directive.  */
  FUNC1 (pfile);

  pfile->directive = &dtable[dir_no];
  if (FUNC0 (pfile, traditional))
    FUNC5 (pfile);
  pfile->directive->handler (pfile);
  FUNC4 (pfile, 1);
  FUNC2 (pfile);
}