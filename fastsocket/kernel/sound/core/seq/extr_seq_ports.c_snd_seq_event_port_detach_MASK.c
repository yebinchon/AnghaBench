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
struct TYPE_2__ {int client; int port; } ;
struct snd_seq_port_info {TYPE_1__ addr; } ;
typedef  int /*<<< orphan*/  portinfo ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_SEQ_IOCTL_DELETE_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_port_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct snd_seq_port_info*) ; 

int FUNC2(int client, int port)
{
	struct snd_seq_port_info portinfo;
	int  err;

	FUNC0(&portinfo, 0, sizeof(portinfo));
	portinfo.addr.client = client;
	portinfo.addr.port   = port;
	err = FUNC1(client,
					SNDRV_SEQ_IOCTL_DELETE_PORT,
					&portinfo);

	return err;
}