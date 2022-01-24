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
struct target_info {size_t uid; int block; struct target_info* next; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t TARGET_HASH_PRIME ; 
 struct target_info** target_hash_table ; 

void
FUNC1 (rtx insn)
{
  struct target_info *tinfo;

  if (target_hash_table != NULL)
    {
      for (tinfo = target_hash_table[FUNC0 (insn) % TARGET_HASH_PRIME];
	   tinfo; tinfo = tinfo->next)
	if (tinfo->uid == FUNC0 (insn))
	  break;

      if (tinfo)
	tinfo->block = -1;
    }
}