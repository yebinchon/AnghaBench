#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_8__ {scalar_t__ entsize; } ;
typedef  TYPE_1__ asection ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (char *filename, char *mode, 
	       char *target, CORE_ADDR vaddr, 
	       char *buf, int len)
{
  bfd *obfd;
  asection *osection;

  obfd = FUNC1 (filename, target, mode);
  osection = FUNC0 (obfd, ".newsec");
  FUNC5 (obfd, osection, len);
  FUNC6 (obfd, osection, vaddr);
  FUNC2 (obfd, osection, 0);
  FUNC4 (obfd, osection, 0x203);
  osection->entsize = 0;
  FUNC3 (obfd, osection, buf, 0, len);
}