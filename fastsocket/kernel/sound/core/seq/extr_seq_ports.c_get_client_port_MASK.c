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
struct snd_seq_client_port {int dummy; } ;
struct snd_seq_client {int dummy; } ;
struct snd_seq_addr {int /*<<< orphan*/  port; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_seq_client*) ; 
 struct snd_seq_client* FUNC1 (int /*<<< orphan*/ ) ; 
 struct snd_seq_client_port* FUNC2 (struct snd_seq_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct snd_seq_client_port *FUNC3(struct snd_seq_addr *addr,
						   struct snd_seq_client **cp)
{
	struct snd_seq_client_port *p;
	*cp = FUNC1(addr->client);
	if (*cp) {
		p = FUNC2(*cp, addr->port);
		if (! p) {
			FUNC0(*cp);
			*cp = NULL;
		}
		return p;
	}
	return NULL;
}