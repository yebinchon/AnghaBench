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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

void
FUNC2 (FILE *stream)
{
  FUNC1 (stream, FUNC0("\n\
The following i386/x86-64 specific disassembler options are supported for use\n\
with the -M switch (multiple options should be separated by commas):\n"));

  FUNC1 (stream, FUNC0("  x86-64      Disassemble in 64bit mode\n"));
  FUNC1 (stream, FUNC0("  i386        Disassemble in 32bit mode\n"));
  FUNC1 (stream, FUNC0("  i8086       Disassemble in 16bit mode\n"));
  FUNC1 (stream, FUNC0("  att         Display instruction in AT&T syntax\n"));
  FUNC1 (stream, FUNC0("  intel       Display instruction in Intel syntax\n"));
  FUNC1 (stream, FUNC0("  addr64      Assume 64bit address size\n"));
  FUNC1 (stream, FUNC0("  addr32      Assume 32bit address size\n"));
  FUNC1 (stream, FUNC0("  addr16      Assume 16bit address size\n"));
  FUNC1 (stream, FUNC0("  data32      Assume 32bit data size\n"));
  FUNC1 (stream, FUNC0("  data16      Assume 16bit data size\n"));
  FUNC1 (stream, FUNC0("  suffix      Always display instruction suffix in AT&T syntax\n"));
}