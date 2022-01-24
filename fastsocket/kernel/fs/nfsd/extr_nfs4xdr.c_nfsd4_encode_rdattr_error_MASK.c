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
typedef  void* __be32 ;

/* Variables and functions */
 int FATTR4_WORD0_RDATTR_ERROR ; 
 void* FUNC0 (int) ; 

__attribute__((used)) static __be32 *
FUNC1(__be32 *p, int buflen, __be32 nfserr)
{
	__be32 *attrlenp;

	if (buflen < 6)
		return NULL;
	*p++ = FUNC0(2);
	*p++ = FUNC0(FATTR4_WORD0_RDATTR_ERROR); /* bmval0 */
	*p++ = FUNC0(0);			 /* bmval1 */

	attrlenp = p++;
	*p++ = nfserr;       /* no htonl */
	*attrlenp = FUNC0((char *)p - (char *)attrlenp - 4);
	return p;
}