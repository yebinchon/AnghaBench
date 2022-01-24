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
struct symbol {int dummy; } ;
struct frame_info {int dummy; } ;
struct block {int dummy; } ;

/* Variables and functions */
 struct symbol* FUNC0 (struct block*) ; 
 struct block* FUNC1 (struct frame_info*,int /*<<< orphan*/ ) ; 

struct symbol *
FUNC2 (struct frame_info *frame)
{
  struct block *bl = FUNC1 (frame, 0);
  if (bl == 0)
    return 0;
  return FUNC0 (bl);
}