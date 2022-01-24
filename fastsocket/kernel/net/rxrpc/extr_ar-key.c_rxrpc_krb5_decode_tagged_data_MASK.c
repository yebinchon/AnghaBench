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
struct krb5_tagged_data {unsigned int data_len; void* tag; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,void*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 void* FUNC5 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int FUNC6(struct krb5_tagged_data *td,
					 size_t max_data_size,
					 const __be32 **_xdr,
					 unsigned *_toklen)
{
	const __be32 *xdr = *_xdr;
	unsigned toklen = *_toklen, len;

	/* there must be at least one tag and one length word */
	if (toklen <= 8)
		return -EINVAL;

	FUNC1(",%zu,{%x,%x},%u",
	       max_data_size, FUNC5(xdr[0]), FUNC5(xdr[1]), toklen);

	td->tag = FUNC5(*xdr++);
	len = FUNC5(*xdr++);
	toklen -= 8;
	if (len > max_data_size)
		return -EINVAL;
	td->data_len = len;

	if (len > 0) {
		td->data = FUNC3(len, GFP_KERNEL);
		if (!td->data)
			return -ENOMEM;
		FUNC4(td->data, xdr, len);
		len = (len + 3) & ~3;
		toklen -= len;
		xdr += len >> 2;
	}

	FUNC0("tag %x len %x", td->tag, td->data_len);

	*_xdr = xdr;
	*_toklen = toklen;
	FUNC2(" = 0 [toklen=%u]", toklen);
	return 0;
}