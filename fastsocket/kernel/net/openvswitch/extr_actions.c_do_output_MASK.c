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
struct vport {int dummy; } ;
struct sk_buff {int dummy; } ;
struct datapath {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct vport* FUNC1 (struct datapath*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vport*,struct sk_buff*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct datapath *dp, struct sk_buff *skb, int out_port)
{
	struct vport *vport;

	if (FUNC3(!skb))
		return -ENOMEM;

	vport = FUNC1(dp, out_port);
	if (FUNC3(!vport)) {
		FUNC0(skb);
		return -ENODEV;
	}

	FUNC2(vport, skb);
	return 0;
}