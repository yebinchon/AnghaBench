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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 int /*<<< orphan*/  TARGET_CMOVE ; 
 int UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int,int*,int*,int*) ; 

bool
FUNC1 (enum rtx_code code)
{
  enum rtx_code bypass_code, first_code, second_code;
  if (!TARGET_CMOVE)
    return true;
  FUNC0 (code, &bypass_code, &first_code, &second_code);
  return bypass_code != UNKNOWN || second_code != UNKNOWN;
}