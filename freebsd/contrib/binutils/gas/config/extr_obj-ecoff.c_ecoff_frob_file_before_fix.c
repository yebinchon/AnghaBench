
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ bfd_vma ;
struct TYPE_13__ {int name; struct TYPE_13__* next; } ;
typedef TYPE_1__ asection ;
struct TYPE_14__ {TYPE_1__* sections; } ;


 int _ (char*) ;
 unsigned long alpha_fprmask ;
 int alpha_frob_ecoff_data () ;
 int alpha_gp_value ;
 unsigned long alpha_gprmask ;
 int as_fatal (int ) ;
 int bfd_ecoff_set_gp_value (TYPE_2__*,int ) ;
 int bfd_ecoff_set_regmasks (TYPE_2__*,unsigned long,unsigned long,unsigned long*) ;
 int bfd_section_list_prepend (TYPE_2__*,TYPE_1__*) ;
 int bfd_section_list_remove (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ bfd_section_size (TYPE_2__*,TYPE_1__*) ;
 int bfd_set_section_vma (TYPE_2__*,TYPE_1__*,scalar_t__) ;
 unsigned long* mips_cprmask ;
 unsigned long mips_gprmask ;
 int n_names ;
 TYPE_2__* stdoutput ;
 int strcmp (int ,char const* const) ;

void
ecoff_frob_file_before_fix (void)
{
  bfd_vma addr;
  asection *sec;
  static const char *const names[] =
  {

    ".text", ".rdata", ".init", ".fini",

    ".data", ".lita", ".lit8", ".lit4", ".sdata", ".got",

    ".sbss", ".bss",
  };



  asection *secs[((int) (sizeof (names) / sizeof (names[0])))];
  int i;

  addr = 0;
  for (i = 0; i < ((int) (sizeof (names) / sizeof (names[0]))); i++)
    secs[i] = ((void*)0);

  for (sec = stdoutput->sections; sec != ((void*)0); sec = sec->next)
    {
      for (i = 0; i < ((int) (sizeof (names) / sizeof (names[0]))); i++)
 if (!strcmp (sec->name, names[i]))
   {
     secs[i] = sec;
     bfd_section_list_remove (stdoutput, sec);
     break;
   }
      if (i == ((int) (sizeof (names) / sizeof (names[0]))))
 {
   bfd_set_section_vma (stdoutput, sec, addr);
   addr += bfd_section_size (stdoutput, sec);
 }
    }
  for (i = 0; i < ((int) (sizeof (names) / sizeof (names[0]))); i++)
    if (secs[i])
      {
 bfd_set_section_vma (stdoutput, secs[i], addr);
 addr += bfd_section_size (stdoutput, secs[i]);
      }
  for (i = ((int) (sizeof (names) / sizeof (names[0]))) - 1; i >= 0; i--)
    if (secs[i])
      bfd_section_list_prepend (stdoutput, secs[i]);


  {
    unsigned long gprmask = 0;
    unsigned long fprmask = 0;
    unsigned long *cprmask = ((void*)0);
    if (! bfd_ecoff_set_regmasks (stdoutput, gprmask, fprmask, cprmask))
      as_fatal (_("Can't set register masks"));
  }
}
