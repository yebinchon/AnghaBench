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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_TLV_ERROR_STRING ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static inline struct sk_buff *FUNC1(char *string)
{
	return FUNC0(TIPC_TLV_ERROR_STRING, string);
}