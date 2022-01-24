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
struct ncp_server {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ncp_server*) ; 
 int /*<<< orphan*/  FUNC2 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ncp_server*,char const*,int) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(struct ncp_server *server, const char *s)
{
	int len = FUNC4(s);
	FUNC1(server);
	if (len > 255) {
		FUNC0("ncpfs: string too long: %s\n", s);
		len = 255;
	}
	FUNC2(server, len);
	FUNC3(server, s, len);
	return;
}