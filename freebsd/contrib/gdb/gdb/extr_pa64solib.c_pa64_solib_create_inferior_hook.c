
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct so_list {struct so_list* next; } ;
struct objfile {int dummy; } ;
struct minimal_symbol {int dummy; } ;
struct breakpoint {int dummy; } ;
struct TYPE_9__ {scalar_t__ start_address; } ;
typedef TYPE_1__ bfd ;
typedef int asection ;
struct TYPE_11__ {int dld_flags; int dld_flags_addr; } ;
struct TYPE_10__ {int obfd; } ;
typedef scalar_t__ CORE_ADDR ;


 int DT_HP_DEBUG_CALLBACK ;
 int DT_HP_DEBUG_PRIVATE ;
 char* alloca (unsigned int) ;
 int bfd_check_format (TYPE_1__*,int ) ;
 int bfd_close (TYPE_1__*) ;
 int * bfd_get_section_by_name (int ,char*) ;
 int bfd_get_section_contents (int ,int *,char*,int ,unsigned int) ;
 scalar_t__ bfd_lookup_symbol (TYPE_1__*,char*) ;
 int bfd_object ;
 TYPE_1__* bfd_openr (char*,int ) ;
 unsigned int bfd_section_size (int ,int *) ;
 int clear_symtab_users () ;
 struct breakpoint* create_solib_event_breakpoint (scalar_t__) ;
 TYPE_3__ dld_cache ;
 int error (char*) ;
 int exec_bfd ;
 int gnutarget ;
 int make_breakpoint_permanent (struct breakpoint*) ;
 int read_dynamic_info (int *,TYPE_3__*) ;
 scalar_t__ read_pc () ;
 int remove_solib_event_breakpoints () ;
 struct so_list* so_list_head ;
 TYPE_2__* symfile_objfile ;
 unsigned int target_write_memory (int ,char*,int) ;
 int warning (char*,char*) ;
 int xfree (struct so_list*) ;

void
pa64_solib_create_inferior_hook (void)
{
  struct minimal_symbol *msymbol;
  unsigned int dld_flags, status;
  asection *shlib_info, *interp_sect;
  char buf[4];
  struct objfile *objfile;
  CORE_ADDR anaddr;



  remove_solib_event_breakpoints ();

  if (symfile_objfile == ((void*)0))
    return;


  shlib_info = bfd_get_section_by_name (symfile_objfile->obfd, ".dynamic");
  if (!shlib_info)
    return;


  if (bfd_section_size (symfile_objfile->obfd, shlib_info) == 0)
    return;


  if (! read_dynamic_info (shlib_info, &dld_cache))
    error ("Unable to read the .dynamic section.");


  dld_cache.dld_flags |= DT_HP_DEBUG_PRIVATE;
  dld_cache.dld_flags |= DT_HP_DEBUG_CALLBACK;
  status = target_write_memory (dld_cache.dld_flags_addr,
    (char *) &dld_cache.dld_flags,
    sizeof (dld_cache.dld_flags));
  if (status != 0)
    error ("Unable to modify dynamic linker flags.");





  interp_sect = bfd_get_section_by_name (exec_bfd, ".interp");
  if (interp_sect)
    {
      unsigned int interp_sect_size;
      char *buf;
      CORE_ADDR load_addr;
      bfd *tmp_bfd;
      CORE_ADDR sym_addr = 0;



      interp_sect_size = bfd_section_size (exec_bfd, interp_sect);
      buf = alloca (interp_sect_size);
      bfd_get_section_contents (exec_bfd, interp_sect,
    buf, 0, interp_sect_size);
      tmp_bfd = bfd_openr (buf, gnutarget);
      if (tmp_bfd == ((void*)0))
 goto get_out;


      if (!bfd_check_format (tmp_bfd, bfd_object))
 {
   warning ("Unable to grok dynamic linker %s as an object file", buf);
   bfd_close (tmp_bfd);
   goto get_out;
 }







      load_addr = read_pc () - tmp_bfd->start_address;
      sym_addr = bfd_lookup_symbol (tmp_bfd, "__dld_break");
      sym_addr = load_addr + sym_addr + 4;


      {
 struct breakpoint *b
   = create_solib_event_breakpoint (sym_addr);






 make_breakpoint_permanent (b);
      }


      bfd_close (tmp_bfd);
    }

get_out:


  while (so_list_head)
    {
      struct so_list *temp;

      temp = so_list_head;
      xfree (so_list_head);
      so_list_head = temp->next;
    }
  clear_symtab_users ();
}
