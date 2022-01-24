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
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int PREDICATE_BITS ; 
 int /*<<< orphan*/  TRUE ; 
 int X4_SHIFT ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC9 (bfd_byte *contents, bfd_vma off)
{
  unsigned int template, mlx;
  bfd_vma t0, t1, s0, s1, s2, br_code;
  long br_slot;
  bfd_byte *hit_addr;

  hit_addr = (bfd_byte *) (contents + off);
  br_slot = (long) hit_addr & 0x3;
  hit_addr -= br_slot;
  t0 = FUNC7 (hit_addr + 0);
  t1 = FUNC7 (hit_addr + 8);

  /* Check if we can turn br into brl.  A label is always at the start
     of the bundle.  Even if there are predicates on NOPs, we still
     perform this optimization.  */
  template = t0 & 0x1e;
  s0 = (t0 >> 5) & 0x1ffffffffffLL;
  s1 = ((t0 >> 46) | (t1 << 18)) & 0x1ffffffffffLL;
  s2 = (t1 >> 23) & 0x1ffffffffffLL;
  switch (br_slot)
    {
    case 0:
      /* Check if slot 1 and slot 2 are NOPs. Possible template is
         BBB.  We only need to check nop.b.  */
      if (!(FUNC2 (s1) && FUNC2 (s2)))
	return FALSE;
      br_code = s0;
      break;
    case 1:
      /* Check if slot 2 is NOP. Possible templates are MBB and BBB.
	 For BBB, slot 0 also has to be nop.b.  */
      if (!((template == 0x12				/* MBB */
	     && FUNC2 (s2))
	    || (template == 0x16			/* BBB */
		&& FUNC2 (s0)
		&& FUNC2 (s2))))
	return FALSE;
      br_code = s1;
      break;
    case 2:
      /* Check if slot 1 is NOP. Possible templates are MIB, MBB, BBB,
	 MMB and MFB. For BBB, slot 0 also has to be nop.b.  */
      if (!((template == 0x10				/* MIB */
	     && FUNC4 (s1))
	    || (template == 0x12			/* MBB */
		&& FUNC2 (s1))
	    || (template == 0x16			/* BBB */
		&& FUNC2 (s0)
		&& FUNC2 (s1))
	    || (template == 0x18			/* MMB */
		&& FUNC5 (s1))
	    || (template == 0x1c			/* MFB */
		&& FUNC3 (s1))))
	return FALSE;
      br_code = s2;
      break;
    default:
      /* It should never happen.  */
      FUNC6 ();
    }
  
  /* We can turn br.cond/br.call into brl.cond/brl.call.  */
  if (!(FUNC1 (br_code) || FUNC0 (br_code)))
    return FALSE;

  /* Turn br into brl by setting bit 40.  */
  br_code |= 0x1LL << 40;

  /* Turn the old bundle into a MLX bundle with the same stop-bit
     variety.  */
  if (t0 & 0x1)
    mlx = 0x5;
  else
    mlx = 0x4;

  if (template == 0x16)
    {
      /* For BBB, we need to put nop.m in slot 0.  We keep the original
	 predicate only if slot 0 isn't br.  */
      if (br_slot == 0)
	t0 = 0LL;
      else
	t0 &= PREDICATE_BITS << 5;
      t0 |= 0x1LL << (X4_SHIFT + 5);
    }
  else
    {
      /* Keep the original instruction in slot 0.  */
      t0 &= 0x1ffffffffffLL << 5;
    }

  t0 |= mlx;

  /* Put brl in slot 1.  */
  t1 = br_code << 23;

  FUNC8 (t0, hit_addr);
  FUNC8 (t1, hit_addr + 8);
  return TRUE;
}