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
struct frame {int queue; } ;
struct carlu {int extra_headroom; } ;
struct _carl9170_tx_superframe {int dummy; } ;

/* Variables and functions */
 struct frame* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct frame*,int) ; 

struct frame *FUNC2(struct carlu *ar, unsigned int size)
{
	struct frame *tmp;
	unsigned int total_len;

	total_len = ar->extra_headroom + sizeof(struct _carl9170_tx_superframe) + size;

	tmp = FUNC0(total_len);
	if (!tmp)
		return NULL;

	FUNC1(tmp, sizeof(struct _carl9170_tx_superframe) + ar->extra_headroom);

	tmp->queue = 2;

	return tmp;
}