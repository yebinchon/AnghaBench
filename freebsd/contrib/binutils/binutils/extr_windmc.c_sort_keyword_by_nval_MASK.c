#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  unichar ;
typedef  int rc_uint_type ;
struct TYPE_2__ {scalar_t__ nval; int /*<<< orphan*/  usz; } ;
typedef  TYPE_1__ mc_keyword ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2 (const void *l, const void *r)
{
  const mc_keyword *l1 = *((const mc_keyword **)l);
  const mc_keyword *r1 = *((const mc_keyword **)r);
  rc_uint_type len1, len2;
  int e;

  if (l == r)
    return 0;
  if (l1->nval != r1->nval)
    {
      if (l1->nval < r1->nval)
	return -1;
      return 1;
    }
  len1 = FUNC1 (l1->usz);
  len2 = FUNC1 (r1->usz);
  if (len1 <= len2)
    e = FUNC0 (l1->usz, r1->usz, sizeof (unichar) * len1);
  else
    e = FUNC0 (l1->usz, r1->usz, sizeof (unichar) * len2);
  if (e)
    return e;
  if (len1 < len2)
    return -1;
  else if (len1 > len2)
    return 1;
  return 0;
}