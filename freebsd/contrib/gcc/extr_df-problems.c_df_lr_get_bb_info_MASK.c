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
struct df_lr_bb_info {int dummy; } ;
struct dataflow {scalar_t__* block_info; } ;

/* Variables and functions */

struct df_lr_bb_info *
FUNC0 (struct dataflow *dflow, unsigned int index)
{
  return (struct df_lr_bb_info *) dflow->block_info[index];
}