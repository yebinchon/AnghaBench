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
typedef  int /*<<< orphan*/  uint8_t ;
struct ustr {int u_cmpID; int u_len; int /*<<< orphan*/  u_name; } ;

/* Variables and functions */
 int UDF_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ustr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct ustr *dest, const uint8_t *src, int strlen)
{
	if ((!dest) || (!src) || (!strlen) || (strlen > UDF_NAME_LEN - 2))
		return 0;

	FUNC1(dest, 0, sizeof(struct ustr));
	FUNC0(dest->u_name, src, strlen);
	dest->u_cmpID = 0x08;
	dest->u_len = strlen;

	return strlen;
}