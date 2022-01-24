#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct ipx_interface {int /*<<< orphan*/  if_sklist_lock; int /*<<< orphan*/  if_sklist; } ;
struct TYPE_2__ {struct ipx_interface* intrfc; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipx_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipx_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ipx_interface *intrfc, struct sock *sk)
{
	FUNC1(intrfc);
	FUNC4(&intrfc->if_sklist_lock);
	FUNC0(sk)->intrfc = intrfc;
	FUNC3(sk, &intrfc->if_sklist);
	FUNC5(&intrfc->if_sklist_lock);
	FUNC2(intrfc);
}