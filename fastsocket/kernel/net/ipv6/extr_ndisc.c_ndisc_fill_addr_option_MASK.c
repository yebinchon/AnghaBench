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
typedef  int u8 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (unsigned short) ; 

__attribute__((used)) static u8 *FUNC4(u8 *opt, int type, void *data, int data_len,
				  unsigned short addr_type)
{
	int space = FUNC0(data_len);
	int pad   = FUNC3(addr_type);

	opt[0] = type;
	opt[1] = space>>3;

	FUNC2(opt + 2, 0, pad);
	opt   += pad;
	space -= pad;

	FUNC1(opt+2, data, data_len);
	data_len += 2;
	opt += data_len;
	if ((space -= data_len) > 0)
		FUNC2(opt, 0, space);
	return opt + space;
}