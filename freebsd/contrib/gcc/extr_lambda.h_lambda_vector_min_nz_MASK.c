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
typedef  scalar_t__* lambda_vector ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline int
FUNC1 (lambda_vector vec1, int n, int start)
{
  int j;
  int min = -1;

  FUNC0 (start <= n);
  for (j = start; j < n; j++)
    {
      if (vec1[j])
	if (min < 0 || vec1[j] < vec1[min])
	  min = j;
    }
  FUNC0 (min >= 0);

  return min;
}