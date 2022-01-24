#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct simple_bitmap_def {int dummy; } ;
typedef  TYPE_1__* sbitmap ;
struct TYPE_4__ {unsigned int n_bits; unsigned int size; unsigned int bytes; } ;
typedef  int /*<<< orphan*/  SBITMAP_ELT_TYPE ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 TYPE_1__* FUNC1 (unsigned int) ; 

sbitmap
FUNC2 (unsigned int n_elms)
{
  unsigned int bytes, size, amt;
  sbitmap bmap;

  size = FUNC0 (n_elms);
  bytes = size * sizeof (SBITMAP_ELT_TYPE);
  amt = (sizeof (struct simple_bitmap_def)
	 + bytes - sizeof (SBITMAP_ELT_TYPE));
  bmap = FUNC1 (amt);
  bmap->n_bits = n_elms;
  bmap->size = size;
  bmap->bytes = bytes;
  return bmap;
}