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
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 unsigned short circuit ; 
 struct sock* FUNC1 (unsigned char,unsigned char) ; 

__attribute__((used)) static unsigned short FUNC2(void)
{
	unsigned short id = circuit;
	unsigned char i, j;
	struct sock *sk;

	for (;;) {
		i = id / 256;
		j = id % 256;

		if (i != 0 && j != 0) {
			if ((sk=FUNC1(i, j)) == NULL)
				break;
			FUNC0(sk);
		}

		id++;
	}

	return id;
}