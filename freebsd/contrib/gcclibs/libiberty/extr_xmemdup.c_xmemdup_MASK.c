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
typedef  int /*<<< orphan*/  PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,size_t) ; 

PTR
FUNC2 (const PTR input, size_t copy_size, size_t alloc_size)
{
  PTR output = FUNC1 (1, alloc_size);
  return (PTR) FUNC0 (output, input, copy_size);
}