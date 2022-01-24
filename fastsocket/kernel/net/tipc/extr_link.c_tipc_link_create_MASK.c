#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tipc_msg {int dummy; } ;
struct tipc_media_addr {int dummy; } ;
struct TYPE_6__ {struct link* buf; } ;
struct link {int checkpoint; int next_out_no; int /*<<< orphan*/  abort_limit; int /*<<< orphan*/  continuity_interval; int /*<<< orphan*/  tolerance; int /*<<< orphan*/  link_list; int /*<<< orphan*/  timer; TYPE_3__ print_buf; int /*<<< orphan*/  owner; int /*<<< orphan*/  waiting_ports; int /*<<< orphan*/  priority; int /*<<< orphan*/  addr; struct tipc_msg* pmsg; int /*<<< orphan*/  proto_msg; int /*<<< orphan*/  state; struct bearer* b_ptr; int /*<<< orphan*/  media_addr; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct bearer {int /*<<< orphan*/  links; TYPE_2__* media; int /*<<< orphan*/  priority; int /*<<< orphan*/  identity; TYPE_1__ publ; } ;
struct TYPE_5__ {int /*<<< orphan*/  window; int /*<<< orphan*/  tolerance; } ;
typedef  int /*<<< orphan*/  Handler ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INT_H_SIZE ; 
 scalar_t__ LINK_LOG_BUF_SIZE ; 
 int /*<<< orphan*/  LINK_PROTOCOL ; 
 int /*<<< orphan*/  RESET_MSG ; 
 int /*<<< orphan*/  RESET_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct link*) ; 
 char* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct link* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct link*) ; 
 int /*<<< orphan*/  FUNC7 (struct link*) ; 
 int /*<<< orphan*/  FUNC8 (struct link*,int /*<<< orphan*/ ) ; 
 scalar_t__ link_timeout ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct tipc_media_addr const*,int) ; 
 scalar_t__ FUNC11 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int,int,int,char*,int,int,int) ; 
 char* FUNC17 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int FUNC19 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (struct link*,int /*<<< orphan*/ ) ; 
 scalar_t__ tipc_link_start ; 
 int FUNC22 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC23 (struct link*) ; 
 int /*<<< orphan*/  const tipc_own_addr ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,char*,scalar_t__) ; 
 int tipc_random ; 
 int FUNC25 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 

struct link *FUNC27(struct bearer *b_ptr, const u32 peer,
			      const struct tipc_media_addr *media_addr)
{
	struct link *l_ptr;
	struct tipc_msg *msg;
	char *if_name;

	l_ptr = FUNC5(sizeof(*l_ptr), GFP_ATOMIC);
	if (!l_ptr) {
		FUNC26("Link creation failed, no memory\n");
		return NULL;
	}

	if (LINK_LOG_BUF_SIZE) {
		char *pb = FUNC4(LINK_LOG_BUF_SIZE, GFP_ATOMIC);

		if (!pb) {
			FUNC3(l_ptr);
			FUNC26("Link creation failed, no memory for print buffer\n");
			return NULL;
		}
		FUNC24(&l_ptr->print_buf, pb, LINK_LOG_BUF_SIZE);
	}

	l_ptr->addr = peer;
	if_name = FUNC17(b_ptr->publ.name, ':') + 1;
	FUNC16(l_ptr->name, "%u.%u.%u:%s-%u.%u.%u:",
		FUNC25(tipc_own_addr), FUNC19(tipc_own_addr),
		FUNC22(tipc_own_addr),
		if_name,
		FUNC25(peer), FUNC19(peer), FUNC22(peer));
		/* note: peer i/f is appended to link name by reset/activate */
	FUNC10(&l_ptr->media_addr, media_addr, sizeof(*media_addr));
	l_ptr->checkpoint = 1;
	l_ptr->b_ptr = b_ptr;
	FUNC8(l_ptr, b_ptr->media->tolerance);
	l_ptr->state = RESET_UNKNOWN;

	l_ptr->pmsg = (struct tipc_msg *)&l_ptr->proto_msg;
	msg = l_ptr->pmsg;
	FUNC12(msg, LINK_PROTOCOL, RESET_MSG, INT_H_SIZE, l_ptr->addr);
	FUNC15(msg, sizeof(l_ptr->proto_msg));
	FUNC14(msg, (tipc_random & 0xffff));
	FUNC13(msg, b_ptr->identity);
	FUNC18((char *)FUNC11(msg), if_name);

	l_ptr->priority = b_ptr->priority;
	FUNC21(l_ptr, b_ptr->media->window);

	FUNC6(l_ptr);

	l_ptr->next_out_no = 1;
	FUNC0(&l_ptr->waiting_ports);

	FUNC7(l_ptr);

	l_ptr->owner = FUNC23(l_ptr);
	if (!l_ptr->owner) {
		if (LINK_LOG_BUF_SIZE)
			FUNC3(l_ptr->print_buf.buf);
		FUNC3(l_ptr);
		return NULL;
	}

	FUNC2(&l_ptr->timer, (Handler)link_timeout, (unsigned long)l_ptr);
	FUNC9(&l_ptr->link_list, &b_ptr->links);
	FUNC20((Handler)tipc_link_start, (unsigned long)l_ptr);

	FUNC1("tipc_link_create(): tolerance = %u,cont intv = %u, abort_limit = %u\n",
	    l_ptr->tolerance, l_ptr->continuity_interval, l_ptr->abort_limit);

	return l_ptr;
}