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
typedef  scalar_t__ u32 ;
struct tipc_portid {int /*<<< orphan*/  ref; int /*<<< orphan*/  node; } ;
struct tipc_name {int /*<<< orphan*/  instance; int /*<<< orphan*/  type; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {struct tipc_msg phdr; scalar_t__ connected; } ;
struct port {int /*<<< orphan*/  sent; TYPE_1__ publ; } ;

/* Variables and functions */
 int EINVAL ; 
 int ELINKCONG ; 
 int ENOMEM ; 
 scalar_t__ LONG_H_SIZE ; 
 unsigned int TIPC_CRITICAL_IMPORTANCE ; 
 int /*<<< orphan*/  TIPC_ERR_NO_NAME ; 
 int /*<<< orphan*/  TIPC_NAMED_MSG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct port*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,struct tipc_msg*,scalar_t__) ; 
 scalar_t__ FUNC17 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ tipc_own_addr ; 
 int FUNC20 (struct sk_buff*) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 int FUNC22 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct sk_buff*,scalar_t__) ; 

int FUNC24(u32 ref,
			  struct tipc_name const *name,
			  u32 domain,
			  struct sk_buff *buf,
			  unsigned int dsz,
			  struct tipc_portid const *orig,
			  unsigned int importance)
{
	struct port *p_ptr;
	struct tipc_msg *msg;
	u32 destnode = domain;
	u32 destport = 0;
	int res;

	p_ptr = (struct port *)FUNC21(ref);
	if (!p_ptr || p_ptr->publ.connected)
		return -EINVAL;

	msg = &p_ptr->publ.phdr;
	if (importance <= TIPC_CRITICAL_IMPORTANCE)
		FUNC7(msg, importance);
	FUNC14(msg, TIPC_NAMED_MSG);
	FUNC11(msg, orig->node);
	FUNC12(msg, orig->ref);
	FUNC10(msg, name->type);
	FUNC9(msg, name->instance);
	FUNC8(msg, FUNC0(domain));
	FUNC6(msg, LONG_H_SIZE);
	FUNC13(msg, LONG_H_SIZE + dsz);
	destport = FUNC19(name->type, name->instance, &destnode);
	FUNC4(msg, destnode);
	FUNC5(msg, destport);
	FUNC3(msg, "forw2name ==> ");
	if (FUNC17(buf, LONG_H_SIZE))
		return -ENOMEM;
	FUNC18(buf, LONG_H_SIZE);
	FUNC16(buf, msg, LONG_H_SIZE);
	FUNC3(FUNC1(buf),"PREP:");
	if (FUNC2(destport || destnode)) {
		p_ptr->sent++;
		if (destnode == tipc_own_addr)
			return FUNC20(buf);
		res = FUNC23(buf, destnode);
		if (FUNC2(res != -ELINKCONG))
			return res;
		if (FUNC15(p_ptr))
			return dsz;
		return -ELINKCONG;
	}
	return FUNC22(buf, TIPC_ERR_NO_NAME);
}