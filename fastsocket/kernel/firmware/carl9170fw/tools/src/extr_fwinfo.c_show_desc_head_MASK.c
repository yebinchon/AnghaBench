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
struct carl9170fw_desc_head {int /*<<< orphan*/  length; int /*<<< orphan*/ * magic; int /*<<< orphan*/  cur_ver; int /*<<< orphan*/  min_ver; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC3(struct carl9170fw_desc_head *head)
{
#define P(c) (isprint(c) ? c :  ' ')

	FUNC1(stdout, ">\t%c%c%c%c Descriptor: size:%d, compatible:%d, "
			"version:%d\n",
		P(head->magic[0]), P(head->magic[1]), P(head->magic[2]),
		P(head->magic[3]), FUNC2(head->length), head->min_ver,
		head->cur_ver);
}