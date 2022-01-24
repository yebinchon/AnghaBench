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
struct tnode {int dummy; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 size_t PAGE_SIZE ; 
 int __GFP_ZERO ; 
 struct tnode* FUNC0 (size_t,int,int /*<<< orphan*/ ) ; 
 struct tnode* FUNC1 (size_t,int) ; 

__attribute__((used)) static struct tnode *FUNC2(size_t size)
{
	if (size <= PAGE_SIZE)
		return FUNC1(size, GFP_KERNEL);
	else
		return FUNC0(size, GFP_KERNEL | __GFP_ZERO, PAGE_KERNEL);
}