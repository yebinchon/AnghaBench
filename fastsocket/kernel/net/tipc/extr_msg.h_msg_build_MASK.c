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
typedef  int u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct iovec {scalar_t__ iov_len; int /*<<< orphan*/  iov_base; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int TIPC_MAX_USER_MSG_SIZE ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct iovec const*,int) ; 
 int FUNC5 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static inline int FUNC10(struct tipc_msg *hdr,
			    struct iovec const *msg_sect, u32 num_sect,
			    int max_size, int usrmem, struct sk_buff** buf)
{
	int dsz, sz, hsz, pos, res, cnt;

	dsz = FUNC4(msg_sect, num_sect);
	if (FUNC9(dsz > TIPC_MAX_USER_MSG_SIZE)) {
		*buf = NULL;
		return -EINVAL;
	}

	pos = hsz = FUNC5(hdr);
	sz = hsz + dsz;
	FUNC6(hdr, sz);
	if (FUNC9(sz > max_size)) {
		*buf = NULL;
		return dsz;
	}

	*buf = FUNC0(sz);
	if (!(*buf))
		return -ENOMEM;
	FUNC7(*buf, hdr, hsz);
	for (res = 1, cnt = 0; res && (cnt < num_sect); cnt++) {
		if (FUNC3(usrmem))
			res = !FUNC2((*buf)->data + pos,
					      msg_sect[cnt].iov_base,
					      msg_sect[cnt].iov_len);
		else
			FUNC8(*buf, pos,
						       msg_sect[cnt].iov_base,
						       msg_sect[cnt].iov_len);
		pos += msg_sect[cnt].iov_len;
	}
	if (FUNC3(res))
		return dsz;

	FUNC1(*buf);
	*buf = NULL;
	return -EFAULT;
}