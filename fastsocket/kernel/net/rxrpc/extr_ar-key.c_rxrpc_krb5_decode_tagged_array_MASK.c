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
typedef  unsigned int u8 ;
struct krb5_tagged_data {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,size_t,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 struct krb5_tagged_data* FUNC3 (int,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/  const) ; 
 int FUNC5 (struct krb5_tagged_data*,size_t,int /*<<< orphan*/  const**,unsigned int*) ; 

__attribute__((used)) static int FUNC6(struct krb5_tagged_data **_td,
					  u8 *_n_elem,
					  u8 max_n_elem,
					  size_t max_elem_size,
					  const __be32 **_xdr,
					  unsigned *_toklen)
{
	struct krb5_tagged_data *td;
	const __be32 *xdr = *_xdr;
	unsigned toklen = *_toklen, n_elem, loop;
	int ret;

	/* there must be at least one count */
	if (toklen < 4)
		return -EINVAL;

	FUNC1(",,%u,%zu,{%x},%u",
	       max_n_elem, max_elem_size, FUNC4(xdr[0]), toklen);

	n_elem = FUNC4(*xdr++);
	toklen -= 4;
	if (n_elem < 0 || n_elem > max_n_elem)
		return -EINVAL;
	*_n_elem = n_elem;
	if (n_elem > 0) {
		if (toklen <= (n_elem + 1) * 4)
			return -EINVAL;

		FUNC0("n_elem %d", n_elem);

		td = FUNC3(sizeof(struct krb5_tagged_data), n_elem,
			     GFP_KERNEL);
		if (!td)
			return -ENOMEM;
		*_td = td;

		for (loop = 0; loop < n_elem; loop++) {
			ret = FUNC5(&td[loop],
							    max_elem_size,
							    &xdr, &toklen);
			if (ret < 0)
				return ret;
		}
	}

	*_xdr = xdr;
	*_toklen = toklen;
	FUNC2(" = 0 [toklen=%u]", toklen);
	return 0;
}