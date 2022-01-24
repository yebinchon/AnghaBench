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
struct sco_conn {scalar_t__ sk; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct sco_conn*,struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sco_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct sco_conn*) ; 

__attribute__((used)) static inline int FUNC3(struct sco_conn *conn, struct sock *sk, struct sock *parent)
{
	int err = 0;

	FUNC1(conn);
	if (conn->sk) {
		err = -EBUSY;
	} else {
		FUNC0(conn, sk, parent);
	}
	FUNC2(conn);
	return err;
}