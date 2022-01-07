
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int linkage_ptr; } ;
struct so_list {TYPE_2__ pa64_solib_desc; TYPE_5__* objfile; int abfd; } ;
struct section_addr_info {TYPE_1__* other; } ;
struct cleanup {int dummy; } ;
struct TYPE_11__ {int dp; struct so_list* so_info; int * unwind_info; } ;
typedef TYPE_3__ obj_private_data_t ;
typedef int bfd ;
struct TYPE_12__ {scalar_t__ filepos; } ;
typedef TYPE_4__ asection ;
struct TYPE_13__ {TYPE_3__* obj_private; int objfile_obstack; int flags; int obfd; } ;
struct TYPE_9__ {char* name; int addr; } ;
typedef int CORE_ADDR ;


 int OBJF_SHARED ;
 struct section_addr_info* alloc_section_addr_info (int ) ;
 int bfd_check_format (int *,int ) ;
 int bfd_close (int *) ;
 int bfd_count_sections (int *) ;
 char* bfd_errmsg (int ) ;
 int bfd_get_error () ;
 TYPE_4__* bfd_get_section_by_name (int *,char*) ;
 int bfd_map_over_sections (int *,int ,TYPE_4__**) ;
 int bfd_object ;
 int * bfd_openr (char*,int ) ;
 scalar_t__ bfd_section_vma (int *,TYPE_4__*) ;
 int do_cleanups (struct cleanup*) ;
 int error (char*,char*,char*) ;
 int find_lowest_section ;
 int gnutarget ;
 struct cleanup* make_cleanup (int ,struct section_addr_info*) ;
 scalar_t__ obstack_alloc (int *,int) ;
 int perror_with_name (char*) ;
 TYPE_5__* symbol_file_add (char*,int,struct section_addr_info*,int ,int ) ;
 int xfree ;

__attribute__((used)) static void
pa64_solib_add_solib_objfile (struct so_list *so, char *name, int from_tty,
         CORE_ADDR text_addr)
{
  bfd *tmp_bfd;
  asection *sec;
  obj_private_data_t *obj_private;
  struct section_addr_info *section_addrs;
  struct cleanup *my_cleanups;



  tmp_bfd = bfd_openr (name, gnutarget);
  if (tmp_bfd == ((void*)0))
    {
      perror_with_name (name);
      return;
    }

  if (!bfd_check_format (tmp_bfd, bfd_object))
    {
      bfd_close (tmp_bfd);
      error ("\"%s\" is not an object file: %s", name,
      bfd_errmsg (bfd_get_error ()));
    }






  sec = bfd_get_section_by_name (tmp_bfd, ".text");
  text_addr += bfd_section_vma (tmp_bfd, sec);


  sec = ((void*)0);
  bfd_map_over_sections (tmp_bfd, find_lowest_section, &sec);

  if (sec)
    {

      text_addr -= bfd_section_vma (tmp_bfd, sec);


      text_addr += sec->filepos;
    }

  section_addrs = alloc_section_addr_info (bfd_count_sections (tmp_bfd));
  my_cleanups = make_cleanup (xfree, section_addrs);



  bfd_close (tmp_bfd);
  tmp_bfd = ((void*)0);


  section_addrs->other[0].addr = text_addr;
  section_addrs->other[0].name = ".text";
  so->objfile = symbol_file_add (name, from_tty, section_addrs, 0, OBJF_SHARED);
  so->abfd = so->objfile->obfd;


  so->objfile->flags |= OBJF_SHARED;

  if (so->objfile->obj_private == ((void*)0))
    {
      obj_private = (obj_private_data_t *)
 obstack_alloc (&so->objfile->objfile_obstack,
         sizeof (obj_private_data_t));
      obj_private->unwind_info = ((void*)0);
      obj_private->so_info = ((void*)0);
      so->objfile->obj_private = obj_private;
    }

  obj_private = (obj_private_data_t *) so->objfile->obj_private;
  obj_private->so_info = so;
  obj_private->dp = so->pa64_solib_desc.linkage_ptr;
  do_cleanups (my_cleanups);
}
