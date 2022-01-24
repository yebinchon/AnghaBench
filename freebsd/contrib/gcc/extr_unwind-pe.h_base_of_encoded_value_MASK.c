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
struct _Unwind_Context {int dummy; } ;
typedef  int /*<<< orphan*/  _Unwind_Ptr ;

/* Variables and functions */
#define  DW_EH_PE_absptr 133 
#define  DW_EH_PE_aligned 132 
#define  DW_EH_PE_datarel 131 
#define  DW_EH_PE_funcrel 130 
 unsigned char DW_EH_PE_omit ; 
#define  DW_EH_PE_pcrel 129 
#define  DW_EH_PE_textrel 128 
 int /*<<< orphan*/  FUNC0 (struct _Unwind_Context*) ; 
 int /*<<< orphan*/  FUNC1 (struct _Unwind_Context*) ; 
 int /*<<< orphan*/  FUNC2 (struct _Unwind_Context*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static _Unwind_Ptr
FUNC4 (unsigned char encoding, struct _Unwind_Context *context)
{
  if (encoding == DW_EH_PE_omit)
    return 0;

  switch (encoding & 0x70)
    {
    case DW_EH_PE_absptr:
    case DW_EH_PE_pcrel:
    case DW_EH_PE_aligned:
      return 0;

    case DW_EH_PE_textrel:
      return FUNC2 (context);
    case DW_EH_PE_datarel:
      return FUNC0 (context);
    case DW_EH_PE_funcrel:
      return FUNC1 (context);
    }
  FUNC3 ();
}