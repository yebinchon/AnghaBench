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
typedef  int bfd_size_type ;
typedef  unsigned int bfd_byte ;
typedef  int bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int MAXCHUNK ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int const,unsigned int) ; 
 int FUNC1 (void*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC2 (bfd *abfd,
		   unsigned int type,
		   bfd_vma address,
		   const bfd_byte *data,
		   const bfd_byte *end)
{
  char buffer[2 * MAXCHUNK + 6];
  unsigned int check_sum = 0;
  const bfd_byte *src = data;
  char *dst = buffer;
  char *length;
  bfd_size_type wrlen;

  *dst++ = 'S';
  *dst++ = '0' + type;

  length = dst;
  dst += 2;			/* Leave room for dst.  */

  switch (type)
    {
    case 3:
    case 7:
      FUNC0 (dst, (address >> 24), check_sum);
      dst += 2;
    case 8:
    case 2:
      FUNC0 (dst, (address >> 16), check_sum);
      dst += 2;
    case 9:
    case 1:
    case 0:
      FUNC0 (dst, (address >> 8), check_sum);
      dst += 2;
      FUNC0 (dst, (address), check_sum);
      dst += 2;
      break;

    }
  for (src = data; src < end; src++)
    {
      FUNC0 (dst, *src, check_sum);
      dst += 2;
    }

  /* Fill in the length.  */
  FUNC0 (length, (dst - length) / 2, check_sum);
  check_sum &= 0xff;
  check_sum = 255 - check_sum;
  FUNC0 (dst, check_sum, check_sum);
  dst += 2;

  *dst++ = '\r';
  *dst++ = '\n';
  wrlen = dst - buffer;

  return FUNC1 ((void *) buffer, wrlen, abfd) == wrlen;
}