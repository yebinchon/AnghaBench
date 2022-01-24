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
struct super_block {int dummy; } ;
struct nfs_server {int dummy; } ;

/* Variables and functions */
 struct nfs_server* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_server*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 

__attribute__((used)) static void FUNC4(struct super_block *s)
{
	struct nfs_server *server = FUNC0(s);

	FUNC1(s);
	FUNC3(s);
	FUNC2(server);
}