#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
typedef  int subsegT ;
typedef  scalar_t__ segT ;
typedef  int /*<<< orphan*/  relax_substateT ;
typedef  int /*<<< orphan*/  offsetT ;
struct TYPE_4__ {int bss; } ;
struct TYPE_3__ {int /*<<< orphan*/ * fr_symbol; } ;

/* Variables and functions */
 scalar_t__ C_EXT ; 
 int /*<<< orphan*/  C_STAT ; 
 scalar_t__ OUTPUT_FLAVOR ; 
 int /*<<< orphan*/  SEC_ALLOC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 unsigned int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_target_aout_flavour ; 
 scalar_t__ bfd_target_ecoff_flavour ; 
 scalar_t__ bfd_target_elf_flavour ; 
 scalar_t__ bss_section ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  frag_now ; 
 char* FUNC24 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC25 () ; 
 char FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 char* input_line_pointer ; 
 scalar_t__* is_end_of_line ; 
 scalar_t__ now_seg ; 
 int now_subseg ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__,int) ; 
 int /*<<< orphan*/  rs_org ; 
 TYPE_2__* FUNC29 (scalar_t__) ; 
 int /*<<< orphan*/  stdoutput ; 
 scalar_t__ FUNC30 (char*,int) ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC32 (char*) ; 
 TYPE_1__* FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC35 (int bytes_p)
{
  char *name;
  char c;
  char *p;
  int temp;
  symbolS *symbolP;
  segT current_seg = now_seg;
  subsegT current_subseg = now_subseg;
  const int max_alignment = 15;
  int align = 0;
  segT bss_seg = bss_section;
  int needs_align = 0;

  name = input_line_pointer;
  c = FUNC26 ();
  p = input_line_pointer;
  *p = c;

  if (name == p)
    {
      FUNC14 (FUNC12("expected symbol name"));
      FUNC21 ();
      return;
    }

  FUNC0 ();

  /* Accept an optional comma after the name.  The comma used to be
     required, but Irix 5 cc does not generate it.  */
  if (*input_line_pointer == ',')
    {
      ++input_line_pointer;
      FUNC0 ();
    }

  if (is_end_of_line[(unsigned char)*input_line_pointer])
    {
      FUNC14 (FUNC12("missing size expression"));
      return;
    }

  if ((temp = FUNC25 ()) < 0)
    {
      FUNC15 (FUNC12("BSS length (%d) < 0 ignored"), temp);
      FUNC27 ();
      return;
    }

#if defined (TC_SCORE)
  if (OUTPUT_FLAVOR == bfd_target_ecoff_flavour || OUTPUT_FLAVOR == bfd_target_elf_flavour)
    {
      /* For Score and Alpha ECOFF or ELF, small objects are put in .sbss.  */
      if ((unsigned)temp <= bfd_get_gp_size (stdoutput))
        {
          bss_seg = subseg_new (".sbss", 1);
          seg_info (bss_seg)->bss = 1;
#ifdef BFD_ASSEMBLER
          if (!bfd_set_section_flags (stdoutput, bss_seg, SEC_ALLOC))
            as_warn (_("error setting flags for \".sbss\": %s"), bfd_errmsg (bfd_get_error ()));
#endif
        }
    }
#endif

  FUNC0 ();
  if (*input_line_pointer == ',')
    {
      ++input_line_pointer;
      FUNC0 ();

      if (is_end_of_line[(unsigned char)*input_line_pointer])
        {
          FUNC14 (FUNC12("missing alignment"));
          return;
        }
      else
        {
          align = FUNC25 ();
          needs_align = 1;
        }
    }

  if (!needs_align)
    {
      FUNC11 (temp, align);

      /* Still zero unless TC_IMPLICIT_LCOMM_ALIGNMENT set it.  */
      if (align)
        FUNC28 (bss_seg, align);
    }

  if (needs_align)
    {
      if (bytes_p)
        {
          /* Convert to a power of 2.  */
          if (align != 0)
            {
              unsigned int i;

              for (i = 0; align != 0; align >>= 1, ++i)
                ;
              align = i - 1;
            }
        }

      if (align > max_alignment)
        {
          align = max_alignment;
          FUNC15 (FUNC12("alignment too large; %d assumed"), align);
        }
      else if (align < 0)
        {
          align = 0;
          FUNC15 (FUNC12("alignment negative; 0 assumed"));
        }

      FUNC28 (bss_seg, align);
    }
  else
    {
      /* Assume some objects may require alignment on some systems.  */
#if defined (TC_ALPHA) && ! defined (VMS)
      if (temp > 1)
        {
          align = ffs (temp) - 1;
          if (temp % (1 << align))
            abort ();
        }
#endif
    }

  *p = 0;
  symbolP = FUNC32 (name);
  *p = c;

  if (
#if (defined (OBJ_AOUT) || defined (OBJ_MAYBE_AOUT) \
     || defined (OBJ_BOUT) || defined (OBJ_MAYBE_BOUT))
#ifdef BFD_ASSEMBLER
       (OUTPUT_FLAVOR != bfd_target_aout_flavour
        || (S_GET_OTHER (symbolP) == 0 && S_GET_DESC (symbolP) == 0)) &&
#else
       (S_GET_OTHER (symbolP) == 0 && S_GET_DESC (symbolP) == 0) &&
#endif
#endif
       (FUNC4 (symbolP) == bss_seg || (!FUNC7 (symbolP) && FUNC6 (symbolP) == 0)))
    {
      char *pfrag;

      FUNC31 (bss_seg, 1);

      if (align)
        FUNC23 (align, 0, 0);

      /* Detach from old frag.  */
      if (FUNC4 (symbolP) == bss_seg)
        FUNC33 (symbolP)->fr_symbol = NULL;

      FUNC34 (symbolP, frag_now);
      pfrag = FUNC24 (rs_org, 1, 1, (relax_substateT) 0, symbolP, (offsetT) temp, NULL);
      *pfrag = 0;


      FUNC8 (symbolP, bss_seg);

#ifdef OBJ_COFF
      /* The symbol may already have been created with a preceding
         ".globl" directive -- be careful not to step on storage class
         in that case.  Otherwise, set it to static.  */
      if (S_GET_STORAGE_CLASS (symbolP) != C_EXT)
        {
          S_SET_STORAGE_CLASS (symbolP, C_STAT);
        }
#endif /* OBJ_COFF */

#ifdef S_SET_SIZE
      S_SET_SIZE (symbolP, temp);
#endif
    }
  else
    FUNC14 (FUNC12("symbol `%s' is already defined"), FUNC2 (symbolP));

  FUNC31 (current_seg, current_subseg);

  FUNC20 ();
}