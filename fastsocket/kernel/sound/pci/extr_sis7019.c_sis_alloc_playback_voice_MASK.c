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
struct voice {int dummy; } ;
struct sis7019 {int /*<<< orphan*/  voice_lock; } ;

/* Variables and functions */
 struct voice* FUNC0 (struct sis7019*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct voice *FUNC3(struct sis7019 *sis)
{
	struct voice *voice;
	unsigned long flags;

	FUNC1(&sis->voice_lock, flags);
	voice = FUNC0(sis);
	FUNC2(&sis->voice_lock, flags);

	return voice;
}