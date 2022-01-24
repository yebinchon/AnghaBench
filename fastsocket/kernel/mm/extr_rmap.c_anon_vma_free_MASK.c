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
struct anon_vma {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  anon_vma_cachep ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct anon_vma*) ; 

void FUNC1(struct anon_vma *anon_vma)
{
	FUNC0(anon_vma_cachep, anon_vma);
}