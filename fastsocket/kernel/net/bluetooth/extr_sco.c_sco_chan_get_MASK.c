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
struct sco_conn {struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sco_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct sco_conn*) ; 

__attribute__((used)) static inline struct sock *FUNC2(struct sco_conn *conn)
{
	struct sock *sk = NULL;
	FUNC0(conn);
	sk = conn->sk;
	FUNC1(conn);
	return sk;
}