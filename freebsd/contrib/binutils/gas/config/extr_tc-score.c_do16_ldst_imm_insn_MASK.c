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
struct TYPE_2__ {unsigned int instruction; int relax_inst; int relax_size; } ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 unsigned int LDST16_RI_MASK ; 
 int MAX_LITERAL_POOL_SIZE ; 
 int N16_LBUP ; 
 unsigned int N16_LHP ; 
 unsigned int N16_LIU ; 
 unsigned int N16_LWP ; 
 int N16_SBP ; 
 unsigned int N16_SHP ; 
 unsigned int N16_SWP ; 
 int /*<<< orphan*/  _IMM5 ; 
 int /*<<< orphan*/  _IMM5_RSHIFT_1 ; 
 int /*<<< orphan*/  _IMM5_RSHIFT_2 ; 
 int /*<<< orphan*/  _IMM8 ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char**,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ inst ; 
 int FUNC2 (char**,int) ; 
 int FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5 (char *str)
{
  char data_exp[MAX_LITERAL_POOL_SIZE];
  int reg_rd;
  char *dataptr = NULL, *pp = NULL;
  int cnt = 0;
  int assign_data = (int) FAIL;
  unsigned int ldst_func;

  FUNC4 (str);

  if (((reg_rd = FUNC2 (&str, 8)) == (int) FAIL)
      || (FUNC3 (&str) == (int) FAIL))
    return;

  FUNC4 (str);
  dataptr = str;

  while ((*dataptr != '\0') && (*dataptr != '|') && (cnt <= MAX_LITERAL_POOL_SIZE))
    {
      data_exp[cnt] = *dataptr;
      dataptr++;
      cnt++;
    }

  data_exp[cnt] = '\0';
  pp = &data_exp[0];

  str = dataptr;

  ldst_func = inst.instruction & LDST16_RI_MASK;
  if (ldst_func == N16_LIU)
    assign_data = FUNC1 (&pp, 0, _IMM8);
  else if (ldst_func == N16_LHP || ldst_func == N16_SHP)
    assign_data = FUNC1 (&pp, 3, _IMM5_RSHIFT_1);
  else if (ldst_func == N16_LWP || ldst_func == N16_SWP)
    assign_data = FUNC1 (&pp, 3, _IMM5_RSHIFT_2);
  else
    assign_data = FUNC1 (&pp, 3, _IMM5);

  if ((assign_data == (int) FAIL) || (FUNC0 (pp) == (int) FAIL))
    return;
  else
    {
      if ((inst.instruction & 0x7000) == N16_LIU)
        {
          inst.relax_inst |= ((inst.instruction >> 8) & 0xf) << 20
                          | ((inst.instruction & 0xff) << 1);
        }
      else if (((inst.instruction & 0x7007) == N16_LHP)
               || ((inst.instruction & 0x7007) == N16_SHP))
        {
          inst.relax_inst |= ((inst.instruction >> 8) & 0xf) << 20 | 2 << 15
                          | (((inst.instruction >> 3) & 0x1f) << 1);
        }
      else if (((inst.instruction & 0x7007) == N16_LWP)
               || ((inst.instruction & 0x7007) == N16_SWP))
        {
          inst.relax_inst |= ((inst.instruction >> 8) & 0xf) << 20 | 2 << 15
                          | (((inst.instruction >> 3) & 0x1f) << 2);
        }
      else if (((inst.instruction & 0x7007) == N16_LBUP)
               || ((inst.instruction & 0x7007) == N16_SBP))
        {
          inst.relax_inst |= ((inst.instruction >> 8) & 0xf) << 20 | 2 << 15
                          | (((inst.instruction >> 3) & 0x1f));
        }

      inst.relax_size = 4;
    }
}