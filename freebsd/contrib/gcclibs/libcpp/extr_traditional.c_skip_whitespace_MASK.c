#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char uchar ;
struct TYPE_5__ {char* cur; } ;
struct TYPE_6__ {TYPE_1__ out; } ;
typedef  TYPE_2__ cpp_reader ;

/* Variables and functions */
 char* FUNC0 (TYPE_2__*,char const*,int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 

__attribute__((used)) static const uchar *
FUNC2 (cpp_reader *pfile, const uchar *cur, int skip_comments)
{
  uchar *out = pfile->out.cur;

  for (;;)
    {
      unsigned int c = *cur++;
      *out++ = c;

      if (FUNC1 (c))
	continue;

      if (c == '/' && *cur == '*' && skip_comments)
	{
	  pfile->out.cur = out;
	  cur = FUNC0 (pfile, cur, false /* in_define */);
	  out = pfile->out.cur;
	  continue;
	}

      out--;
      break;
    }

  pfile->out.cur = out;
  return cur - 1;
}