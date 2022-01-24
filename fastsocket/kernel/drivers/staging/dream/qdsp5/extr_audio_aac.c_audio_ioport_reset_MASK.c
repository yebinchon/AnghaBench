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
struct audio {int /*<<< orphan*/  read_lock; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  write_lock; int /*<<< orphan*/  write_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audio*) ; 
 int /*<<< orphan*/  FUNC1 (struct audio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct audio *audio)
{
	/* Make sure read/write thread are free from
	 * sleep and knowing that system is not able
	 * to process io request at the moment
	 */
	FUNC4(&audio->write_wait);
	FUNC2(&audio->write_lock);
	FUNC0(audio);
	FUNC3(&audio->write_lock);
	FUNC4(&audio->read_wait);
	FUNC2(&audio->read_lock);
	FUNC1(audio);
	FUNC3(&audio->read_lock);
}