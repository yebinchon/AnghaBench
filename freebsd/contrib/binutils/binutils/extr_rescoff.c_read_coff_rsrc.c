
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int windres_bfd ;
struct coff_file_info {char const* filename; scalar_t__ secaddr; int * data_end; int * data; } ;
typedef int rc_res_id ;
typedef int rc_res_directory ;
typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd ;
typedef int asection ;
struct TYPE_3__ {scalar_t__ ImageBase; } ;
struct TYPE_4__ {TYPE_1__ pe_opthdr; } ;


 int WR_KIND_BFD ;
 int _ (char*) ;
 int bfd_check_format_matches (int *,int ,char***) ;
 int bfd_close (int *) ;
 scalar_t__ bfd_error_file_ambiguously_recognized ;
 int bfd_fatal (char const*) ;
 scalar_t__ bfd_get_error () ;
 int bfd_get_filename (int *) ;
 int * bfd_get_section_by_name (int *,char*) ;
 scalar_t__ bfd_get_section_vma (int *,int *) ;
 int bfd_nonfatal (int ) ;
 int bfd_object ;
 int * bfd_openr (char const*,char const*) ;
 int bfd_section_size (int *,int *) ;
 int fatal (int ,...) ;
 int get_windres_bfd_content (int *,int *,int ,int) ;
 int list_matching_formats (char**) ;
 TYPE_2__* pe_data (int *) ;
 int * read_coff_res_dir (int *,int *,struct coff_file_info*,int const*,int ) ;
 scalar_t__ res_alloc (int) ;
 int set_windres_bfd (int *,int *,int *,int ) ;
 int xexit (int) ;

rc_res_directory *
read_coff_rsrc (const char *filename, const char *target)
{
  rc_res_directory *ret;
  bfd *abfd;
  windres_bfd wrbfd;
  char **matching;
  asection *sec;
  bfd_size_type size;
  bfd_byte *data;
  struct coff_file_info finfo;

  if (filename == ((void*)0))
    fatal (_("filename required for COFF input"));

  abfd = bfd_openr (filename, target);
  if (abfd == ((void*)0))
    bfd_fatal (filename);

  if (! bfd_check_format_matches (abfd, bfd_object, &matching))
    {
      bfd_nonfatal (bfd_get_filename (abfd));
      if (bfd_get_error () == bfd_error_file_ambiguously_recognized)
 list_matching_formats (matching);
      xexit (1);
    }

  sec = bfd_get_section_by_name (abfd, ".rsrc");
  if (sec == ((void*)0))
    {
      fatal (_("%s: no resource section"), filename);
    }

  set_windres_bfd (&wrbfd, abfd, sec, WR_KIND_BFD);
  size = bfd_section_size (abfd, sec);
  data = (bfd_byte *) res_alloc (size);

  get_windres_bfd_content (&wrbfd, data, 0, size);

  finfo.filename = filename;
  finfo.data = data;
  finfo.data_end = data + size;
  finfo.secaddr = (bfd_get_section_vma (abfd, sec)
     - pe_data (abfd)->pe_opthdr.ImageBase);






  ret = read_coff_res_dir (&wrbfd, data, &finfo, (const rc_res_id *) ((void*)0), 0);

  bfd_close (abfd);

  return ret;
}
