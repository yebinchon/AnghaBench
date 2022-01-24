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
struct r8a66597 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct r8a66597*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct r8a66597*,int,unsigned long) ; 

__attribute__((used)) static inline void FUNC2(struct r8a66597 *r8a66597,
				 u16 val, u16 pat, unsigned long offset)
{
	u16 tmp;
	tmp = FUNC0(r8a66597, offset);
	tmp = tmp & (~pat);
	tmp = tmp | val;
	FUNC1(r8a66597, tmp, offset);
}