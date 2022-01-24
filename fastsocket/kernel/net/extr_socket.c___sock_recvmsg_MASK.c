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
struct socket {int dummy; } ;
struct msghdr {int dummy; } ;
struct kiocb {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kiocb*,struct socket*,struct msghdr*,size_t,int) ; 
 int FUNC1 (struct socket*,struct msghdr*,size_t,int) ; 

__attribute__((used)) static inline int FUNC2(struct kiocb *iocb, struct socket *sock,
				 struct msghdr *msg, size_t size, int flags)
{
	int err = FUNC1(sock, msg, size, flags);

	return err ?: FUNC0(iocb, sock, msg, size, flags);
}