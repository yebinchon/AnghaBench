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
typedef  int /*<<< orphan*/  u8 ;
struct netlbl_audit {int dummy; } ;
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_MAC_UNLBL_ALLOW ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netlabel_unlabel_acceptflg ; 
 struct audit_buffer* FUNC2 (int /*<<< orphan*/ ,struct netlbl_audit*) ; 

__attribute__((used)) static void FUNC3(u8 value,
					 struct netlbl_audit *audit_info)
{
	struct audit_buffer *audit_buf;
	u8 old_val;

	old_val = netlabel_unlabel_acceptflg;
	netlabel_unlabel_acceptflg = value;
	audit_buf = FUNC2(AUDIT_MAC_UNLBL_ALLOW,
					      audit_info);
	if (audit_buf != NULL) {
		FUNC1(audit_buf,
				 " unlbl_accept=%u old=%u", value, old_val);
		FUNC0(audit_buf);
	}
}