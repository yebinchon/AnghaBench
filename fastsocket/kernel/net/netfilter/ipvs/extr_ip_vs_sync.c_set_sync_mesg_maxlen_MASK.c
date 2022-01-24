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
struct udphdr {int dummy; } ;
struct net_device {int mtu; } ;
struct iphdr {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int IP_VS_STATE_BACKUP ; 
 int IP_VS_STATE_MASTER ; 
 int /*<<< orphan*/  MAX_CONNS_PER_SYNCBUFF ; 
 int SIMPLE_CONN_SIZE ; 
 int SYNC_MESG_HEADER_LEN ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  ip_vs_backup_mcast_ifn ; 
 int /*<<< orphan*/  ip_vs_master_mcast_ifn ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int sync_recv_mesg_maxlen ; 
 int sync_send_mesg_maxlen ; 

__attribute__((used)) static int FUNC3(int sync_state)
{
	struct net_device *dev;
	int num;

	if (sync_state == IP_VS_STATE_MASTER) {
		if ((dev = FUNC1(&init_net, ip_vs_master_mcast_ifn)) == NULL)
			return -ENODEV;

		num = (dev->mtu - sizeof(struct iphdr) -
		       sizeof(struct udphdr) -
		       SYNC_MESG_HEADER_LEN - 20) / SIMPLE_CONN_SIZE;
		sync_send_mesg_maxlen = SYNC_MESG_HEADER_LEN +
			SIMPLE_CONN_SIZE * FUNC2(num, MAX_CONNS_PER_SYNCBUFF);
		FUNC0(7, "setting the maximum length of sync sending "
			  "message %d.\n", sync_send_mesg_maxlen);
	} else if (sync_state == IP_VS_STATE_BACKUP) {
		if ((dev = FUNC1(&init_net, ip_vs_backup_mcast_ifn)) == NULL)
			return -ENODEV;

		sync_recv_mesg_maxlen = dev->mtu -
			sizeof(struct iphdr) - sizeof(struct udphdr);
		FUNC0(7, "setting the maximum length of sync receiving "
			  "message %d.\n", sync_recv_mesg_maxlen);
	}

	return 0;
}