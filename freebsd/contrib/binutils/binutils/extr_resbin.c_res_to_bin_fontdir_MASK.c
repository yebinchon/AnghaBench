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
typedef  int /*<<< orphan*/  windres_bfd ;
typedef  scalar_t__ rc_uint_type ;
struct TYPE_3__ {int index; int length; int /*<<< orphan*/ * data; struct TYPE_3__* next; } ;
typedef  TYPE_1__ rc_fontdir ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static rc_uint_type
FUNC2 (windres_bfd *wrbfd, rc_uint_type off, const rc_fontdir *fontdirs)
{
  rc_uint_type start;
  int c;
  const rc_fontdir *fd;

  start = off;
  off += 2;

  for (c = 0, fd = fontdirs; fd != NULL; fd = fd->next, c++)
    {
      if (wrbfd)
	{
	  bfd_byte d[2];
	  FUNC1 (wrbfd, d, fd->index);
	  FUNC0 (wrbfd, d, off, 2);
	  if (fd->length)
	    FUNC0 (wrbfd, fd->data, off + 2, fd->length);
	}
      off += (rc_uint_type) fd->length + 2;
    }

  if (wrbfd)
    {
      bfd_byte d[2];
      FUNC1 (wrbfd, d, c);
      FUNC0 (wrbfd, d, start, 2);
    }
  return off;
}