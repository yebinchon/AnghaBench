#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ cl; } ;
typedef  TYPE_1__ const REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ rvc_zero ; 

__attribute__((used)) static const REAL_VALUE_TYPE *
FUNC2 (int n)
{
  static REAL_VALUE_TYPE num[10];

  FUNC0 (n >= 0);
  FUNC0 (n <= 9);

  if (n > 0 && num[n].cl == rvc_zero)
    FUNC1 (&num[n], VOIDmode, n, 0, 1);

  return &num[n];
}