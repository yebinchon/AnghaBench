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
struct cifs_sid {int dummy; } ;
struct cifs_ntsd {void* gsidoffset; void* osidoffset; scalar_t__ sacloffset; void* dacloffset; int /*<<< orphan*/  type; int /*<<< orphan*/  revision; } ;
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cifs_sid*,struct cifs_sid*) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (void*) ; 

__attribute__((used)) static void FUNC3(const struct cifs_ntsd *pntsd,
				struct cifs_ntsd *pnntsd, __u32 sidsoffset)
{
	struct cifs_sid *owner_sid_ptr, *group_sid_ptr;
	struct cifs_sid *nowner_sid_ptr, *ngroup_sid_ptr;

	/* copy security descriptor control portion */
	pnntsd->revision = pntsd->revision;
	pnntsd->type = pntsd->type;
	pnntsd->dacloffset = FUNC1(sizeof(struct cifs_ntsd));
	pnntsd->sacloffset = 0;
	pnntsd->osidoffset = FUNC1(sidsoffset);
	pnntsd->gsidoffset = FUNC1(sidsoffset + sizeof(struct cifs_sid));

	/* copy owner sid */
	owner_sid_ptr = (struct cifs_sid *)((char *)pntsd +
				FUNC2(pntsd->osidoffset));
	nowner_sid_ptr = (struct cifs_sid *)((char *)pnntsd + sidsoffset);
	FUNC0(nowner_sid_ptr, owner_sid_ptr);

	/* copy group sid */
	group_sid_ptr = (struct cifs_sid *)((char *)pntsd +
				FUNC2(pntsd->gsidoffset));
	ngroup_sid_ptr = (struct cifs_sid *)((char *)pnntsd + sidsoffset +
					sizeof(struct cifs_sid));
	FUNC0(ngroup_sid_ptr, group_sid_ptr);

	return;
}