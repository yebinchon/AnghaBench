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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 char* ANON_AGGRNAME_FORMAT ; 
 int /*<<< orphan*/  anon_cnt ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 

tree
FUNC2 (void)
{
  char buf[32];

  FUNC1 (buf, ANON_AGGRNAME_FORMAT, anon_cnt++);
  return FUNC0 (buf);
}