#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long address; unsigned int last_file_entry; } ;

/* Variables and functions */
#define  DW_LNE_define_file 130 
#define  DW_LNE_end_sequence 129 
#define  DW_LNE_set_address 128 
 char* FUNC0 (char*) ; 
 unsigned long FUNC1 (unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 unsigned int FUNC3 (unsigned char*,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__ state_machine_regs ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7 (unsigned char *data, int is_stmt)
{
  unsigned char op_code;
  unsigned int bytes_read;
  unsigned int len;
  unsigned char *name;
  unsigned long adr;

  len = FUNC3 (data, & bytes_read, 0);
  data += bytes_read;

  if (len == 0)
    {
      FUNC6 (FUNC0("badly formed extended line op encountered!\n"));
      return bytes_read;
    }

  len += bytes_read;
  op_code = *data++;

  FUNC2 (FUNC0("  Extended opcode %d: "), op_code);

  switch (op_code)
    {
    case DW_LNE_end_sequence:
      FUNC2 (FUNC0("End of Sequence\n\n"));
      FUNC4 (is_stmt);
      break;

    case DW_LNE_set_address:
      adr = FUNC1 (data, len - bytes_read - 1);
      FUNC2 (FUNC0("set Address to 0x%lx\n"), adr);
      state_machine_regs.address = adr;
      break;

    case DW_LNE_define_file:
      FUNC2 (FUNC0("  define new File Table entry\n"));
      FUNC2 (FUNC0("  Entry\tDir\tTime\tSize\tName\n"));

      FUNC2 (FUNC0("   %d\t"), ++state_machine_regs.last_file_entry);
      name = data;
      data += FUNC5 ((char *) data) + 1;
      FUNC2 (FUNC0("%lu\t"), FUNC3 (data, & bytes_read, 0));
      data += bytes_read;
      FUNC2 (FUNC0("%lu\t"), FUNC3 (data, & bytes_read, 0));
      data += bytes_read;
      FUNC2 (FUNC0("%lu\t"), FUNC3 (data, & bytes_read, 0));
      FUNC2 (FUNC0("%s\n\n"), name);
      break;

    default:
      FUNC2 (FUNC0("UNKNOWN: length %d\n"), len - bytes_read);
      break;
    }

  return len;
}