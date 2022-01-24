#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct insn_label_list {struct insn_label_list* next; } ;
struct TYPE_3__ {struct insn_label_list* label_list; } ;
typedef  TYPE_1__ segment_info_type ;

/* Variables and functions */
 struct insn_label_list* free_insn_labels ; 
 scalar_t__ now_seg ; 
 TYPE_1__* FUNC0 (scalar_t__) ; 

__attribute__((used)) static inline void
FUNC1 (void)
{
  register struct insn_label_list **pl;
  segment_info_type *si;

  if (now_seg)
    {
      for (pl = &free_insn_labels; *pl != NULL; pl = &(*pl)->next)
	;
      
      si = FUNC0 (now_seg);
      *pl = si->label_list;
      si->label_list = NULL;
    }
}