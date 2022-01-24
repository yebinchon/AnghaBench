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
struct usm_user {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct usm_user*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usm_user*) ; 
 int /*<<< orphan*/  up ; 
 int /*<<< orphan*/  usm_user ; 
 int /*<<< orphan*/  usm_userlist ; 

void
FUNC2(struct usm_user *uuser)
{
	FUNC0(&usm_userlist, uuser, usm_user, up);
	FUNC1(uuser);
}