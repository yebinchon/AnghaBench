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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,char*,int) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC4(u16 tlv_type, char *string)
{
	struct sk_buff *buf;
	int string_len = FUNC1(string) + 1;

	buf = FUNC3(FUNC0(string_len));
	if (buf)
		FUNC2(buf, tlv_type, string, string_len);
	return buf;
}