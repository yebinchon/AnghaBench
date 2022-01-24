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
struct dio_submit {int dummy; } ;
struct dio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dio*,struct dio_submit*) ; 
 scalar_t__ FUNC1 (struct dio_submit*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct dio *dio, struct dio_submit *sdio)
{
	while (FUNC1(sdio))
		FUNC2(FUNC0(dio, sdio));
}