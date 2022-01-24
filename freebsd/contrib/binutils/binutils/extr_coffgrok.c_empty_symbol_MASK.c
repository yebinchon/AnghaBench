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
struct coff_symbol {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 

__attribute__((used)) static struct coff_symbol *
FUNC1 (void)
{
  return (struct coff_symbol *) (FUNC0 (sizeof (struct coff_symbol), 1));
}