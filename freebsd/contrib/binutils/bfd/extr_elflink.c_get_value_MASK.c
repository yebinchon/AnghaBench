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
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_vma 
FUNC5 (bfd_vma        size,
	   unsigned long  chunksz,
	   bfd *          input_bfd,
	   bfd_byte *     location)
{
  bfd_vma x = 0;

  for (; size; size -= chunksz, location += chunksz) 
    {
      switch (chunksz)
	{
	default:
	case 0:
	  FUNC0 ();
	case 1:
	  x = (x << (8 * chunksz)) | FUNC4 (input_bfd, location);
	  break;
	case 2:
	  x = (x << (8 * chunksz)) | FUNC1 (input_bfd, location);
	  break;
	case 4:
	  x = (x << (8 * chunksz)) | FUNC2 (input_bfd, location);
	  break;
	case 8:
#ifdef BFD64
	  x = (x << (8 * chunksz)) | bfd_get_64 (input_bfd, location);
#else
	  FUNC0 ();
#endif
	  break;
	}
    }
  return x;
}