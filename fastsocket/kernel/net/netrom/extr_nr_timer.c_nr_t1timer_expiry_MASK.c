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
struct nr_sock {int state; int /*<<< orphan*/  n2count; int /*<<< orphan*/  n2; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  NR_CONNREQ ; 
 int /*<<< orphan*/  NR_DISCREQ ; 
#define  NR_STATE_1 130 
#define  NR_STATE_2 129 
#define  NR_STATE_3 128 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct nr_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(unsigned long param)
{
	struct sock *sk = (struct sock *)param;
	struct nr_sock *nr = FUNC4(sk);

	FUNC0(sk);
	switch (nr->state) {
	case NR_STATE_1:
		if (nr->n2count == nr->n2) {
			FUNC2(sk, ETIMEDOUT);
			FUNC1(sk);
			return;
		} else {
			nr->n2count++;
			FUNC6(sk, NR_CONNREQ);
		}
		break;

	case NR_STATE_2:
		if (nr->n2count == nr->n2) {
			FUNC2(sk, ETIMEDOUT);
			FUNC1(sk);
			return;
		} else {
			nr->n2count++;
			FUNC6(sk, NR_DISCREQ);
		}
		break;

	case NR_STATE_3:
		if (nr->n2count == nr->n2) {
			FUNC2(sk, ETIMEDOUT);
			FUNC1(sk);
			return;
		} else {
			nr->n2count++;
			FUNC3(sk);
		}
		break;
	}

	FUNC5(sk);
	FUNC1(sk);
}