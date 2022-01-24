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
struct simple_transaction_argresp {size_t size; } ;
struct file {struct simple_transaction_argresp* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t SIMPLE_TRANSACTION_LIMIT ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(struct file *file, size_t n)
{
	struct simple_transaction_argresp *ar = file->private_data;

	FUNC0(n > SIMPLE_TRANSACTION_LIMIT);

	/*
	 * The barrier ensures that ar->size will really remain zero until
	 * ar->data is ready for reading.
	 */
	FUNC1();
	ar->size = n;
}