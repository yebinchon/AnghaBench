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
typedef  union parameter_info {int dummy; } parameter_info ;
struct ipa_jump_func {union parameter_info info_type; } ;

/* Variables and functions */

union parameter_info *
FUNC0 (struct ipa_jump_func *jf)
{
  return &(jf->info_type);
}