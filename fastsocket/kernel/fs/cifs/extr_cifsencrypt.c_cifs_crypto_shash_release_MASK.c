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
struct TYPE_2__ {int /*<<< orphan*/  sdescmd5; int /*<<< orphan*/  sdeschmacmd5; scalar_t__ hmacmd5; scalar_t__ md5; } ;
struct TCP_Server_Info {TYPE_1__ secmech; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(struct TCP_Server_Info *server)
{
	if (server->secmech.md5)
		FUNC0(server->secmech.md5);

	if (server->secmech.hmacmd5)
		FUNC0(server->secmech.hmacmd5);

	FUNC1(server->secmech.sdeschmacmd5);

	FUNC1(server->secmech.sdescmd5);
}