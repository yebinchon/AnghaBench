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
typedef  int u16 ;
struct m66592 {int dummy; } ;

/* Variables and functions */
 int M66592_BEMPE ; 
 int M66592_BRDYE ; 
 int /*<<< orphan*/  M66592_INTENB0 ; 
 int M66592_NRDYE ; 
 int /*<<< orphan*/  FUNC0 (struct m66592*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct m66592*,int,unsigned long) ; 
 int FUNC2 (struct m66592*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct m66592*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct m66592 *m66592, u16 pipenum,
		unsigned long reg)
{
	u16 tmp;

	tmp = FUNC2(m66592, M66592_INTENB0);
	FUNC0(m66592, M66592_BEMPE | M66592_NRDYE | M66592_BRDYE,
			M66592_INTENB0);
	FUNC1(m66592, (1 << pipenum), reg);
	FUNC3(m66592, tmp, M66592_INTENB0);
}