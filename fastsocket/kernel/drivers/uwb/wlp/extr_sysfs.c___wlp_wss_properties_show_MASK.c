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
struct wlp_wss {int /*<<< orphan*/  name; int /*<<< orphan*/  virtual_addr; int /*<<< orphan*/  tag; int /*<<< orphan*/  master_key; int /*<<< orphan*/  secure_status; int /*<<< orphan*/  hash; int /*<<< orphan*/  bcast; int /*<<< orphan*/  wssid; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (char*,int,char*,...) ; 
 int FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
ssize_t FUNC4(struct wlp_wss *wss, char *buf,
				  size_t bufsize)
{
	ssize_t result;

	result = FUNC3(buf, bufsize, &wss->wssid);
	result += FUNC0(buf + result, bufsize - result, " ");
	result += FUNC1(buf + result, bufsize - result,
				     &wss->bcast);
	result += FUNC0(buf + result, bufsize - result,
			    " 0x%02x %u ", wss->hash, wss->secure_status);
	result += FUNC2(buf + result, bufsize - result,
				    wss->master_key);
	result += FUNC0(buf + result, bufsize - result, " 0x%02x ",
			    wss->tag);
	result += FUNC1(buf + result, bufsize - result,
				     &wss->virtual_addr);
	result += FUNC0(buf + result, bufsize - result, " %s", wss->name);
	result += FUNC0(buf + result, bufsize - result,
			    "\n\n#WSSID\n#WSS broadcast address\n"
			    "#WSS hash\n#WSS secure status\n"
			    "#WSS master key\n#WSS local tag\n"
			    "#WSS local virtual EUI-48\n#WSS name\n");
	return result;
}