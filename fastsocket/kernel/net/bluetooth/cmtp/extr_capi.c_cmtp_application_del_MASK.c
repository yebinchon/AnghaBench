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
struct cmtp_session {int dummy; } ;
struct cmtp_application {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct cmtp_session*,struct cmtp_application*) ; 
 int /*<<< orphan*/  FUNC1 (struct cmtp_application*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cmtp_session *session, struct cmtp_application *app)
{
	FUNC0("session %p application %p", session, app);

	if (app) {
		FUNC2(&app->list);
		FUNC1(app);
	}
}