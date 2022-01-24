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

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 size_t FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,unsigned long) ; 
 int FUNC6 (int,size_t) ; 
 int _dos_ds ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,size_t,void*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,size_t) ; 

__attribute__((used)) static int
FUNC10 (unsigned long addr, void *dest, size_t len)
{
  unsigned long dos_ds_limit = FUNC3 (_dos_ds);
  int retval = 1;

  /* For the low memory, we can simply use _dos_ds.  */
  if (addr <= dos_ds_limit - len)
    FUNC8 (addr, len, dest);
  else
    {
      /* For memory above 1MB we need to set up a special segment to
	 be able to access that memory.  */
      int sel = FUNC0 (1);

      if (sel <= 0)
	retval = 0;
      else
	{
	  int access_rights = FUNC2 (sel);
	  size_t segment_limit = len - 1;

	  /* Make sure the crucial bits in the descriptor access
	     rights are set correctly.  Some DPMI providers might barf
	     if we set the segment limit to something that is not an
	     integral multiple of 4KB pages if the granularity bit is
	     not set to byte-granular, even though the DPMI spec says
	     it's the host's responsibility to set that bit correctly.  */
	  if (len > 1024 * 1024)
	    {
	      access_rights |= 0x8000;
	      /* Page-granular segments should have the low 12 bits of
		 the limit set.  */
	      segment_limit |= 0xfff;
	    }
	  else
	    access_rights &= ~0x8000;

	  if (FUNC5 (sel, addr) != -1
	      && FUNC4 (sel, access_rights) != -1
	      && FUNC6 (sel, segment_limit) != -1
	      /* W2K silently fails to set the segment limit, leaving
		 it at zero; this test avoids the resulting crash.  */
	      && FUNC3 (sel) >= segment_limit)
	    FUNC9 (sel, 0, FUNC7 (), (unsigned)dest, len);
	  else
	    retval = 0;

	  FUNC1 (sel);
	}
    }
  return retval;
}