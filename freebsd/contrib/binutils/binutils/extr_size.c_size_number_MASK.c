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
typedef  scalar_t__ bfd_size_type ;

/* Variables and functions */
 scalar_t__ decimal ; 
 scalar_t__ octal ; 
 scalar_t__ radix ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned long) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2 (bfd_size_type num)
{
  char buffer[40];

  FUNC0 (buffer,
	   (radix == decimal ? "%lu" :
	   ((radix == octal) ? "0%lo" : "0x%lx")),
	   (unsigned long) num);

  return FUNC1 (buffer);
}