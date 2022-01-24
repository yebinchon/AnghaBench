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
struct sockaddr_un {int dummy; } ;
struct sock {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct sock* FUNC0 (struct net*,struct sockaddr_un*,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unix_table_lock ; 

__attribute__((used)) static inline struct sock *FUNC4(struct net *net,
						   struct sockaddr_un *sunname,
						   int len, int type,
						   unsigned hash)
{
	struct sock *s;

	FUNC2(&unix_table_lock);
	s = FUNC0(net, sunname, len, type, hash);
	if (s)
		FUNC1(s);
	FUNC3(&unix_table_lock);
	return s;
}