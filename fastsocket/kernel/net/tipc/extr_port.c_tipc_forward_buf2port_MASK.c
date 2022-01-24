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
typedef  int /*<<< orphan*/  u32 ;
struct tipc_portid {int /*<<< orphan*/  node; int /*<<< orphan*/  ref; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {struct tipc_msg phdr; scalar_t__ connected; } ;
struct port {int /*<<< orphan*/  sent; TYPE_1__ publ; } ;

/* Variables and functions */
 scalar_t__ DIR_MSG_H_SIZE ; 
 int EINVAL ; 
 int ELINKCONG ; 
 int ENOMEM ; 
 unsigned int TIPC_CRITICAL_IMPORTANCE ; 
 int /*<<< orphan*/  TIPC_DIRECT_MSG ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tipc_msg*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct port*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct tipc_msg*,scalar_t__) ; 
 scalar_t__ FUNC12 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  tipc_own_addr ; 
 int FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (struct sk_buff*,int /*<<< orphan*/ ) ; 

int FUNC17(u32 ref,
			  struct tipc_portid const *dest,
			  struct sk_buff *buf,
			  unsigned int dsz,
			  struct tipc_portid const *orig,
			  unsigned int importance)
{
	struct port *p_ptr;
	struct tipc_msg *msg;
	int res;

	p_ptr = (struct port *)FUNC15(ref);
	if (!p_ptr || p_ptr->publ.connected)
		return -EINVAL;

	msg = &p_ptr->publ.phdr;
	FUNC9(msg, TIPC_DIRECT_MSG);
	FUNC6(msg, orig->node);
	FUNC7(msg, orig->ref);
	FUNC2(msg, dest->node);
	FUNC3(msg, dest->ref);
	FUNC4(msg, DIR_MSG_H_SIZE);
	if (importance <= TIPC_CRITICAL_IMPORTANCE)
		FUNC5(msg, importance);
	FUNC8(msg, DIR_MSG_H_SIZE + dsz);
	if (FUNC12(buf, DIR_MSG_H_SIZE))
		return -ENOMEM;

	FUNC13(buf, DIR_MSG_H_SIZE);
	FUNC11(buf, msg, DIR_MSG_H_SIZE);
	FUNC1(msg, "buf2port: ");
	p_ptr->sent++;
	if (dest->node == tipc_own_addr)
		return FUNC14(buf);
	res = FUNC16(buf, dest->node);
	if (FUNC0(res != -ELINKCONG))
		return res;
	if (FUNC10(p_ptr))
		return dsz;
	return -ELINKCONG;
}