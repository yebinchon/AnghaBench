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
struct sysinfo {int freeram; int bufferram; } ;

/* Variables and functions */
 int /*<<< orphan*/  __ip_vs_dropentry_lock ; 
 int /*<<< orphan*/  __ip_vs_droppacket_lock ; 
 int /*<<< orphan*/  __ip_vs_securetcp_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int ip_vs_drop_counter ; 
 int ip_vs_drop_rate ; 
 int /*<<< orphan*/  ip_vs_dropentry ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sysinfo*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int sysctl_ip_vs_am_droprate ; 
 int sysctl_ip_vs_amemthresh ; 
 int sysctl_ip_vs_drop_entry ; 
 int sysctl_ip_vs_drop_packet ; 
 int sysctl_ip_vs_secure_tcp ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void)
{
	struct sysinfo i;
	static int old_secure_tcp = 0;
	int availmem;
	int nomem;
	int to_change = -1;

	/* we only count free and buffered memory (in pages) */
	FUNC4(&i);
	availmem = i.freeram + i.bufferram;
	/* however in linux 2.5 the i.bufferram is total page cache size,
	   we need adjust it */
	/* si_swapinfo(&i); */
	/* availmem = availmem - (i.totalswap - i.freeswap); */

	nomem = (availmem < sysctl_ip_vs_amemthresh);

	FUNC2();

	/* drop_entry */
	FUNC5(&__ip_vs_dropentry_lock);
	switch (sysctl_ip_vs_drop_entry) {
	case 0:
		FUNC0(&ip_vs_dropentry, 0);
		break;
	case 1:
		if (nomem) {
			FUNC0(&ip_vs_dropentry, 1);
			sysctl_ip_vs_drop_entry = 2;
		} else {
			FUNC0(&ip_vs_dropentry, 0);
		}
		break;
	case 2:
		if (nomem) {
			FUNC0(&ip_vs_dropentry, 1);
		} else {
			FUNC0(&ip_vs_dropentry, 0);
			sysctl_ip_vs_drop_entry = 1;
		};
		break;
	case 3:
		FUNC0(&ip_vs_dropentry, 1);
		break;
	}
	FUNC6(&__ip_vs_dropentry_lock);

	/* drop_packet */
	FUNC5(&__ip_vs_droppacket_lock);
	switch (sysctl_ip_vs_drop_packet) {
	case 0:
		ip_vs_drop_rate = 0;
		break;
	case 1:
		if (nomem) {
			ip_vs_drop_rate = ip_vs_drop_counter
				= sysctl_ip_vs_amemthresh /
				(sysctl_ip_vs_amemthresh-availmem);
			sysctl_ip_vs_drop_packet = 2;
		} else {
			ip_vs_drop_rate = 0;
		}
		break;
	case 2:
		if (nomem) {
			ip_vs_drop_rate = ip_vs_drop_counter
				= sysctl_ip_vs_amemthresh /
				(sysctl_ip_vs_amemthresh-availmem);
		} else {
			ip_vs_drop_rate = 0;
			sysctl_ip_vs_drop_packet = 1;
		}
		break;
	case 3:
		ip_vs_drop_rate = sysctl_ip_vs_am_droprate;
		break;
	}
	FUNC6(&__ip_vs_droppacket_lock);

	/* secure_tcp */
	FUNC7(&__ip_vs_securetcp_lock);
	switch (sysctl_ip_vs_secure_tcp) {
	case 0:
		if (old_secure_tcp >= 2)
			to_change = 0;
		break;
	case 1:
		if (nomem) {
			if (old_secure_tcp < 2)
				to_change = 1;
			sysctl_ip_vs_secure_tcp = 2;
		} else {
			if (old_secure_tcp >= 2)
				to_change = 0;
		}
		break;
	case 2:
		if (nomem) {
			if (old_secure_tcp < 2)
				to_change = 1;
		} else {
			if (old_secure_tcp >= 2)
				to_change = 0;
			sysctl_ip_vs_secure_tcp = 1;
		}
		break;
	case 3:
		if (old_secure_tcp < 2)
			to_change = 1;
		break;
	}
	old_secure_tcp = sysctl_ip_vs_secure_tcp;
	if (to_change >= 0)
		FUNC1(sysctl_ip_vs_secure_tcp>1);
	FUNC8(&__ip_vs_securetcp_lock);

	FUNC3();
}