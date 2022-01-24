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
struct list_head {int dummy; } ;

/* Variables and functions */
 struct list_head* family_ht ; 
 size_t FUNC0 (unsigned int) ; 

__attribute__((used)) static inline struct list_head *FUNC1(unsigned int id)
{
	return &family_ht[FUNC0(id)];
}