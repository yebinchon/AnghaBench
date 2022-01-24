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
struct TYPE_2__ {scalar_t__ count; } ;
struct snd_seq_client_port {int closing; TYPE_1__ c_dest; TYPE_1__ c_src; int /*<<< orphan*/  private_data; int /*<<< orphan*/  (* private_free ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  use_lock; } ;
struct snd_seq_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEST_LIST ; 
 int /*<<< orphan*/  SRC_LIST ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_client*,struct snd_seq_client_port*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_seq_client_port*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_seq_client *client,
		       struct snd_seq_client_port *port)
{
	/* set closing flag and wait for all port access are gone */
	port->closing = 1;
	FUNC3(&port->use_lock); 

	/* clear subscribers info */
	FUNC0(client, port, &port->c_src, SRC_LIST);
	FUNC0(client, port, &port->c_dest, DEST_LIST);

	if (port->private_free)
		port->private_free(port->private_data);

	FUNC2(port->c_src.count != 0);
	FUNC2(port->c_dest.count != 0);

	FUNC1(port);
	return 0;
}