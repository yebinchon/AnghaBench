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
typedef  unsigned char u32 ;
struct tcf_pkt_info {int dummy; } ;
struct tcf_ematch {scalar_t__ data; } ;
struct tcf_em_cmp {int off; int align; int mask; int opnd; unsigned char val; int /*<<< orphan*/  layer; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
#define  TCF_EM_ALIGN_U16 133 
#define  TCF_EM_ALIGN_U32 132 
#define  TCF_EM_ALIGN_U8 131 
#define  TCF_EM_OPND_EQ 130 
#define  TCF_EM_OPND_GT 129 
#define  TCF_EM_OPND_LT 128 
 unsigned char FUNC0 (unsigned char) ; 
 unsigned char FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_em_cmp*) ; 
 unsigned char FUNC3 (unsigned char*) ; 
 unsigned char FUNC4 (unsigned char*) ; 
 unsigned char* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct tcf_ematch *em,
			struct tcf_pkt_info *info)
{
	struct tcf_em_cmp *cmp = (struct tcf_em_cmp *) em->data;
	unsigned char *ptr = FUNC5(skb, cmp->layer) + cmp->off;
	u32 val = 0;

	if (!FUNC6(skb, ptr, cmp->align))
		return 0;

	switch (cmp->align) {
		case TCF_EM_ALIGN_U8:
			val = *ptr;
			break;

		case TCF_EM_ALIGN_U16:
			val = FUNC3(ptr);

			if (FUNC2(cmp))
				val = FUNC0(val);
			break;

		case TCF_EM_ALIGN_U32:
			/* Worth checking boundries? The branching seems
			 * to get worse. Visit again. */
			val = FUNC4(ptr);

			if (FUNC2(cmp))
				val = FUNC1(val);
			break;

		default:
			return 0;
	}

	if (cmp->mask)
		val &= cmp->mask;

	switch (cmp->opnd) {
		case TCF_EM_OPND_EQ:
			return val == cmp->val;
		case TCF_EM_OPND_LT:
			return val < cmp->val;
		case TCF_EM_OPND_GT:
			return val > cmp->val;
	}

	return 0;
}