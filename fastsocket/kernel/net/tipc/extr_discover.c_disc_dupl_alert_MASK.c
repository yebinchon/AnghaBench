#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tipc_media_addr {int dummy; } ;
struct print_buf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct bearer {TYPE_1__ publ; } ;
typedef  int /*<<< orphan*/  media_addr_str ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct print_buf*,struct tipc_media_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct print_buf*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct print_buf*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bearer *b_ptr, u32 node_addr,
			    struct tipc_media_addr *media_addr)
{
	char node_addr_str[16];
	char media_addr_str[64];
	struct print_buf pb;

	FUNC0(node_addr_str, node_addr);
	FUNC2(&pb, media_addr_str, sizeof(media_addr_str));
	FUNC1(&pb, media_addr);
	FUNC3(&pb);
	FUNC4("Duplicate %s using %s seen on <%s>\n",
	     node_addr_str, media_addr_str, b_ptr->publ.name);
}