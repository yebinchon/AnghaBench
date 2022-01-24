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
struct tipc_msg {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  sent_bundled; } ;
struct link {TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ MSG_BUNDLER ; 
 scalar_t__ OPEN_MSG ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct tipc_msg* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct link*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,char*) ; 
 scalar_t__ FUNC6 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*,scalar_t__) ; 
 scalar_t__ FUNC10 (struct tipc_msg*) ; 
 scalar_t__ FUNC11 (struct tipc_msg*) ; 
 scalar_t__ FUNC12 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC15 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC16(struct link *l_ptr,
			   struct sk_buff *bundler,
			   struct sk_buff *buf)
{
	struct tipc_msg *bundler_msg = FUNC2(bundler);
	struct tipc_msg *msg = FUNC2(buf);
	u32 size = FUNC10(msg);
	u32 bundle_size = FUNC10(bundler_msg);
	u32 to_pos = FUNC0(bundle_size);
	u32 pad = to_pos - bundle_size;

	if (FUNC12(bundler_msg) != MSG_BUNDLER)
		return 0;
	if (FUNC11(bundler_msg) != OPEN_MSG)
		return 0;
	if (FUNC15(bundler) < (pad + size))
		return 0;
	if (FUNC4(l_ptr) < (to_pos + size))
		return 0;

	FUNC14(bundler, pad + size);
	FUNC13(bundler, to_pos, buf->data, size);
	FUNC9(bundler_msg, to_pos + size);
	FUNC8(bundler_msg, FUNC6(bundler_msg) + 1);
	FUNC3("Packed msg # %u(%u octets) into pos %u in buf(#%u)\n",
	    FUNC6(bundler_msg), size, to_pos, FUNC7(bundler_msg));
	FUNC5(msg, "PACKD:");
	FUNC1(buf);
	l_ptr->stats.sent_bundled++;
	return 1;
}