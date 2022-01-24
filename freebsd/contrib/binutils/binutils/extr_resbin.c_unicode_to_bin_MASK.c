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
typedef  int /*<<< orphan*/  windres_bfd ;
typedef  int /*<<< orphan*/  unichar ;
typedef  int rc_uint_type ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 

__attribute__((used)) static rc_uint_type
FUNC4 (windres_bfd *wrbfd, rc_uint_type off, const unichar *str)
{
  rc_uint_type len = 0;

  if (str != NULL)
    len = FUNC2 (str);

  if (wrbfd)
    {
      bfd_byte *d;
      rc_uint_type i;
      d = (bfd_byte *) FUNC0 ( (len + 1) * sizeof (unichar));
      for (i = 0; i < len; i++)
	FUNC3 (wrbfd, d + (i * sizeof (unichar)), str[i]);
      FUNC3 (wrbfd, d + (len * sizeof (unichar)), 0);
      FUNC1 (wrbfd, d, off, (len + 1) * sizeof (unichar));
    }
  off += (rc_uint_type) ((len + 1) * sizeof (unichar));

  return off;
}