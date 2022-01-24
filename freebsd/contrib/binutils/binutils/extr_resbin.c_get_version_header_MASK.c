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
typedef  scalar_t__ bfd_byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__ const*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__ const*,int) ; 

__attribute__((used)) static void
FUNC5 (windres_bfd *wrbfd, const bfd_byte *data, rc_uint_type length,
		    const char *key, unichar **pkey,
		    rc_uint_type *len, rc_uint_type *vallen, rc_uint_type *type,
		    rc_uint_type *off)
{
  if (length < 8)
    FUNC3 (key);

  *len = FUNC4 (wrbfd, data, 2);
  *vallen = FUNC4 (wrbfd, data + 2, 2);
  *type = FUNC4 (wrbfd, data + 4, 2);

  *off = 6;

  length -= 6;
  data += 6;

  if (key == NULL)
    {
      rc_uint_type sublen;

      *pkey = FUNC2 (wrbfd, data, length, &sublen);
      *off += (sublen + 1) * sizeof (unichar);
    }
  else
    {
      while (1)
	{
	  if (length < 2)
	    FUNC3 (key);
	  if (FUNC4 (wrbfd, data, 2) != (bfd_byte) *key)
	    FUNC1 (FUNC0("unexpected version string"));

	  *off += 2;
	  length -= 2;
	  data += 2;

	  if (*key == '\0')
	    break;

	  ++key;
	}
    }

  *off = (*off + 3) &~ 3;
}