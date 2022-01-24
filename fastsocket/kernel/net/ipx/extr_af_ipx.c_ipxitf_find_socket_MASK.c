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
struct ipx_interface {int /*<<< orphan*/  if_sklist_lock; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 struct sock* FUNC0 (struct ipx_interface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sock *FUNC4(struct ipx_interface *intrfc,
					__be16 port)
{
	struct sock *s;

	FUNC2(&intrfc->if_sklist_lock);
	s = FUNC0(intrfc, port);
	if (s)
		FUNC1(s);
	FUNC3(&intrfc->if_sklist_lock);

	return s;
}