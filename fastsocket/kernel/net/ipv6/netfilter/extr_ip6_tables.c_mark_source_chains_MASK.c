#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xt_table_info {unsigned int* hook_entry; int size; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_1__ user; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct ip6t_standard_target {int verdict; TYPE_3__ target; } ;
struct TYPE_8__ {unsigned int pcnt; } ;
struct ip6t_entry {int comefrom; int target_offset; unsigned int next_offset; TYPE_4__ counters; int /*<<< orphan*/  ipv6; } ;

/* Variables and functions */
 int /*<<< orphan*/  IP6T_STANDARD_TARGET ; 
 unsigned int NF_INET_NUMHOOKS ; 
 int NF_MAX_VERDICT ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,...) ; 
 scalar_t__ FUNC1 (struct ip6t_entry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct xt_table_info *newinfo,
		   unsigned int valid_hooks, void *entry0)
{
	unsigned int hook;

	/* No recursion; use packet counter to save back ptrs (reset
	   to 0 as we leave), and comefrom to save source hook bitmask */
	for (hook = 0; hook < NF_INET_NUMHOOKS; hook++) {
		unsigned int pos = newinfo->hook_entry[hook];
		struct ip6t_entry *e = (struct ip6t_entry *)(entry0 + pos);

		if (!(valid_hooks & (1 << hook)))
			continue;

		/* Set initial back pointer. */
		e->counters.pcnt = pos;

		for (;;) {
			struct ip6t_standard_target *t
				= (void *)FUNC1(e);
			int visited = e->comefrom & (1 << hook);

			if (e->comefrom & (1 << NF_INET_NUMHOOKS)) {
				FUNC2("iptables: loop hook %u pos %u %08X.\n",
				       hook, pos, e->comefrom);
				return 0;
			}
			e->comefrom |= ((1 << hook) | (1 << NF_INET_NUMHOOKS));

			/* Unconditional return/END. */
			if ((e->target_offset == sizeof(struct ip6t_entry)
			    && (FUNC3(t->target.u.user.name,
				       IP6T_STANDARD_TARGET) == 0)
			    && t->verdict < 0
			    && FUNC4(&e->ipv6)) || visited) {
				unsigned int oldpos, size;

				if ((FUNC3(t->target.u.user.name,
					    IP6T_STANDARD_TARGET) == 0) &&
				    t->verdict < -NF_MAX_VERDICT - 1) {
					FUNC0("mark_source_chains: bad "
						"negative verdict (%i)\n",
								t->verdict);
					return 0;
				}

				/* Return: backtrack through the last
				   big jump. */
				do {
					e->comefrom ^= (1<<NF_INET_NUMHOOKS);
#ifdef DEBUG_IP_FIREWALL_USER
					if (e->comefrom
					    & (1 << NF_INET_NUMHOOKS)) {
						duprintf("Back unset "
							 "on hook %u "
							 "rule %u\n",
							 hook, pos);
					}
#endif
					oldpos = pos;
					pos = e->counters.pcnt;
					e->counters.pcnt = 0;

					/* We're at the start. */
					if (pos == oldpos)
						goto next;

					e = (struct ip6t_entry *)
						(entry0 + pos);
				} while (oldpos == pos + e->next_offset);

				/* Move along one */
				size = e->next_offset;
				e = (struct ip6t_entry *)
					(entry0 + pos + size);
				e->counters.pcnt = pos;
				pos += size;
			} else {
				int newpos = t->verdict;

				if (FUNC3(t->target.u.user.name,
					   IP6T_STANDARD_TARGET) == 0
				    && newpos >= 0) {
					if (newpos > newinfo->size -
						sizeof(struct ip6t_entry)) {
						FUNC0("mark_source_chains: "
							"bad verdict (%i)\n",
								newpos);
						return 0;
					}
					/* This a jump; chase it. */
					FUNC0("Jump rule %u -> %u\n",
						 pos, newpos);
				} else {
					/* ... this is a fallthru */
					newpos = pos + e->next_offset;
				}
				e = (struct ip6t_entry *)
					(entry0 + newpos);
				e->counters.pcnt = pos;
				pos = newpos;
			}
		}
		next:
		FUNC0("Finished chain %u\n", hook);
	}
	return 1;
}