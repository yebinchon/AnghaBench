
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long fx_pcrel_adjust; long fx_im_disp; int fx_size; int fx_r_type; scalar_t__ fx_subsy; scalar_t__ fx_addsy; scalar_t__ fx_addnumber; scalar_t__ fx_offset; scalar_t__ fx_where; scalar_t__ fx_frag; scalar_t__ fx_done; scalar_t__ fx_tcbit; scalar_t__ fx_pcrel; int fx_line; int fx_file; } ;
typedef TYPE_1__ fixS ;


 int TC_FIX_DATA_PRINT (int ,TYPE_1__*) ;
 char* bfd_get_reloc_code_name (int) ;
 int fprintf (int ,char*,...) ;
 int indent_level ;
 int print_symbol_value_1 (int ,scalar_t__) ;
 int stderr ;

void
print_fixup (fixS *fixp)
{
  indent_level = 1;
  fprintf (stderr, "fix %lx %s:%d", (long) fixp, fixp->fx_file, fixp->fx_line);
  if (fixp->fx_pcrel)
    fprintf (stderr, " pcrel");
  if (fixp->fx_pcrel_adjust)
    fprintf (stderr, " pcrel_adjust=%d", fixp->fx_pcrel_adjust);
  if (fixp->fx_im_disp)
    {



      fprintf (stderr, " im_disp");

    }
  if (fixp->fx_tcbit)
    fprintf (stderr, " tcbit");
  if (fixp->fx_done)
    fprintf (stderr, " done");
  fprintf (stderr, "\n    size=%d frag=%lx where=%ld offset=%lx addnumber=%lx",
    fixp->fx_size, (long) fixp->fx_frag, (long) fixp->fx_where,
    (long) fixp->fx_offset, (long) fixp->fx_addnumber);
  fprintf (stderr, "\n    %s (%d)", bfd_get_reloc_code_name (fixp->fx_r_type),
    fixp->fx_r_type);
  if (fixp->fx_addsy)
    {
      fprintf (stderr, "\n   +<");
      print_symbol_value_1 (stderr, fixp->fx_addsy);
      fprintf (stderr, ">");
    }
  if (fixp->fx_subsy)
    {
      fprintf (stderr, "\n   -<");
      print_symbol_value_1 (stderr, fixp->fx_subsy);
      fprintf (stderr, ">");
    }
  fprintf (stderr, "\n");



}
