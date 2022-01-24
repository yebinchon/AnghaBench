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
struct TYPE_3__ {int /*<<< orphan*/  lock; scalar_t__ codec; } ;
typedef  TYPE_1__ sscape_info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(sscape_info* devc, unsigned char reg, unsigned char data)
{
	unsigned long flags;
	
	FUNC1(&devc->lock,flags);
	FUNC0( reg, devc -> codec);
	FUNC0( data, devc -> codec + 1);
	FUNC2(&devc->lock,flags);
}