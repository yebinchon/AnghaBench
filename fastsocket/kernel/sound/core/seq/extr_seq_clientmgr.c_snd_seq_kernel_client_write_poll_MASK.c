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
struct snd_seq_client {int /*<<< orphan*/  pool; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 int ENXIO ; 
 struct snd_seq_client* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_client*) ; 

int FUNC3(int clientid, struct file *file, poll_table *wait)
{
	struct snd_seq_client *client;

	client = FUNC0(clientid);
	if (client == NULL)
		return -ENXIO;

	if (! FUNC2(client))
		return 1;
	if (FUNC1(client->pool, file, wait))
		return 1;
	return 0;
}