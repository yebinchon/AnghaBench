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
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
struct ip_vs_sync_mesg_v0 {int nr_conns; } ;
struct ip_vs_sync_conn_v0 {unsigned int protocol; int /*<<< orphan*/  dport; int /*<<< orphan*/  daddr; int /*<<< orphan*/  vport; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  cport; int /*<<< orphan*/  caddr; int /*<<< orphan*/  state; int /*<<< orphan*/  flags; } ;
struct ip_vs_sync_conn_options {int dummy; } ;
struct ip_vs_protocol {unsigned int num_states; int /*<<< orphan*/  name; } ;
struct ip_vs_conn_param {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FULL_CONN_SIZE ; 
 unsigned int IP_VS_CONN_F_HASHED ; 
 unsigned int IP_VS_CONN_F_SEQ_MASK ; 
 unsigned int IP_VS_CONN_F_SYNC ; 
 unsigned int IP_VS_CONN_F_TEMPLATE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int SIMPLE_CONN_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,union nf_inet_addr const*,int /*<<< orphan*/ ,union nf_inet_addr const*,int /*<<< orphan*/ ,struct ip_vs_conn_param*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_vs_conn_param*,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ,union nf_inet_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ip_vs_sync_conn_options*,struct ip_vs_protocol*) ; 
 struct ip_vs_protocol* FUNC4 (unsigned int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const char *buffer, const size_t buflen)
{
	struct ip_vs_sync_mesg_v0 *m = (struct ip_vs_sync_mesg_v0 *)buffer;
	struct ip_vs_sync_conn_v0 *s;
	struct ip_vs_sync_conn_options *opt;
	struct ip_vs_protocol *pp;
	struct ip_vs_conn_param param;
	char *p;
	int i;

	p = (char *)buffer + sizeof(struct ip_vs_sync_mesg_v0);
	for (i=0; i<m->nr_conns; i++) {
		unsigned flags, state;

		if (p + SIMPLE_CONN_SIZE > buffer+buflen) {
			FUNC1("BACKUP v0, bogus conn\n");
			return;
		}
		s = (struct ip_vs_sync_conn_v0 *) p;
		flags = FUNC5(s->flags) | IP_VS_CONN_F_SYNC;
		flags &= ~IP_VS_CONN_F_HASHED;
		if (flags & IP_VS_CONN_F_SEQ_MASK) {
			opt = (struct ip_vs_sync_conn_options *)&s[1];
			p += FULL_CONN_SIZE;
			if (p > buffer+buflen) {
				FUNC1("BACKUP v0, Dropping buffer bogus conn options\n");
				return;
			}
		} else {
			opt = NULL;
			p += SIMPLE_CONN_SIZE;
		}

		state = FUNC5(s->state);
		if (!(flags & IP_VS_CONN_F_TEMPLATE)) {
			pp = FUNC4(s->protocol);
			if (!pp) {
				FUNC0(2, "BACKUP v0, Unsupported protocol %u\n",
					s->protocol);
				continue;
			}
			if (state >= pp->num_states) {
				FUNC0(2, "BACKUP v0, Invalid %s state %u\n",
					pp->name, state);
				continue;
			}
		} else {
			/* protocol in templates is not used for state/timeout */
			pp = NULL;
			if (state > 0) {
				FUNC0(2, "BACKUP v0, Invalid template state %u\n",
					state);
				state = 0;
			}
		}

		FUNC2(AF_INET, s->protocol,
				      (const union nf_inet_addr *)&s->caddr,
				      s->cport,
				      (const union nf_inet_addr *)&s->vaddr,
				      s->vport, &param);

		/* Send timeout as Zero */
		FUNC3(&param, flags, state, s->protocol, AF_INET,
				(union nf_inet_addr *)&s->daddr, s->dport,
				0, 0, opt, pp);
	}
}