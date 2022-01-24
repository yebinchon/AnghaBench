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
struct MidiBuffer {int size; int split; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct MidiBuffer*) ; 

int FUNC2(struct MidiBuffer *this, int size, int split)
{
	this->buf = FUNC0(size, GFP_KERNEL);

	if (this->buf == NULL)
		return -ENOMEM;

	this->size = size;
	this->split = split;
	FUNC1(this);
	return 0;
}