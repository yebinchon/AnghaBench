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
typedef  int /*<<< orphan*/  mnt_map ;

/* Variables and functions */
 int /*<<< orphan*/  MREC_FULL ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ ) ; 

int
FUNC1(mnt_map *m, char *key, char **pval)
{
  return FUNC0(m, key, pval, MREC_FULL);
}