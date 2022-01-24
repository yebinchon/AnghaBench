#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  windres_bfd ;
typedef  int unichar ;
typedef  int rc_uint_type ;
struct TYPE_5__ {TYPE_1__* strings; } ;
typedef  TYPE_2__ rc_stringtable ;
typedef  int /*<<< orphan*/  bfd_byte ;
struct TYPE_4__ {int* string; scalar_t__ length; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static rc_uint_type
FUNC3 (windres_bfd *wrbfd, rc_uint_type off,
			const rc_stringtable *st)
{
  int i;

  for (i = 0; i < 16; i++)
    {
      rc_uint_type slen, length;
      unichar *s;

      slen = (rc_uint_type) st->strings[i].length;
      s = st->strings[i].string;

      length = 2 + slen * 2;
      if (wrbfd)
	{
	  bfd_byte *hp;
	  rc_uint_type j;

	  hp = (bfd_byte *) FUNC0 (length);
	  FUNC2 (wrbfd, hp, slen);

      for (j = 0; j < slen; j++)
	    FUNC2 (wrbfd, hp + 2 + j * 2, s[j]);
	  FUNC1 (wrbfd, hp, off, length);
    }
      off += length;
    }
  return off;
}