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
struct completion {int dummy; } ;
struct bio {scalar_t__ bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct completion*) ; 

__attribute__((used)) static void FUNC1(struct bio *bio, int err)
{
	FUNC0((struct completion *)bio->bi_private);
}