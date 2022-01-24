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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* lsm_tmp_name ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ lsm_tmp_name_length ; 

__attribute__((used)) static char *
FUNC2 (tree ref)
{
  lsm_tmp_name_length = 0;
  FUNC0 (ref);
  FUNC1 ("_lsm");
  return lsm_tmp_name;
}