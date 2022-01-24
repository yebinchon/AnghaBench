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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int) ; 

char *
FUNC3(char *p, char *s1, char *s2, char *s3)
{
  int l1 = FUNC1(s1);
  int l2 = FUNC1(s2);
  int l3 = FUNC1(s3);

  p = (char *) FUNC2(p, l1 + l2 + l3 + 1);
  FUNC0(p, s1, l1);
  FUNC0(p + l1, s2, l2);
  FUNC0(p + l1 + l2, s3, l3 + 1);
  return p;
}