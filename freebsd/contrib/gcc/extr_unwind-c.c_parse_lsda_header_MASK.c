#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct _Unwind_Context {int dummy; } ;
struct TYPE_3__ {unsigned char ttype_encoding; unsigned char const* TType; unsigned char const* action_table; int /*<<< orphan*/  call_site_encoding; int /*<<< orphan*/  Start; int /*<<< orphan*/  LPStart; } ;
typedef  TYPE_1__ lsda_header_info ;
typedef  int _Unwind_Word ;

/* Variables and functions */
 unsigned char DW_EH_PE_omit ; 
 int /*<<< orphan*/  FUNC0 (struct _Unwind_Context*) ; 
 unsigned char* FUNC1 (struct _Unwind_Context*,unsigned char,unsigned char const*,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC2 (unsigned char const*,int*) ; 

__attribute__((used)) static const unsigned char *
FUNC3 (struct _Unwind_Context *context, const unsigned char *p,
		   lsda_header_info *info)
{
  _Unwind_Word tmp;
  unsigned char lpstart_encoding;

  info->Start = (context ? FUNC0 (context) : 0);

  /* Find @LPStart, the base to which landing pad offsets are relative.  */
  lpstart_encoding = *p++;
  if (lpstart_encoding != DW_EH_PE_omit)
    p = FUNC1 (context, lpstart_encoding, p, &info->LPStart);
  else
    info->LPStart = info->Start;

  /* Find @TType, the base of the handler and exception spec type data.  */
  info->ttype_encoding = *p++;
  if (info->ttype_encoding != DW_EH_PE_omit)
    {
      p = FUNC2 (p, &tmp);
      info->TType = p + tmp;
    }
  else
    info->TType = 0;

  /* The encoding and length of the call-site table; the action table
     immediately follows.  */
  info->call_site_encoding = *p++;
  p = FUNC2 (p, &tmp);
  info->action_table = p + tmp;

  return p;
}