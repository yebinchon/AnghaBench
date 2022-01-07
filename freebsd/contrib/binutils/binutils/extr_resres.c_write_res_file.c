
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int windres_bfd ;
typedef int sign ;
typedef int rc_uint_type ;
typedef int rc_res_id ;
typedef int rc_res_directory ;
typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_6__ {struct TYPE_6__* output_section; } ;
typedef TYPE_1__ asection ;


 int SEC_ALLOC ;
 int SEC_DATA ;
 int SEC_HAS_CONTENTS ;
 int SEC_LOAD ;
 int WR_KIND_BFD_BIN_B ;
 int WR_KIND_BFD_BIN_L ;
 int bfd_close (int *) ;
 int bfd_fatal (char*) ;
 TYPE_1__* bfd_make_section (int *,char*) ;
 int bfd_set_section_flags (int *,TYPE_1__*,int) ;
 int bfd_set_section_size (int *,TYPE_1__*,unsigned long) ;
 int fatal (char*,long,long) ;
 char const* filename ;
 int set_windres_bfd (int *,int *,TYPE_1__*,int ) ;
 int set_windres_bfd_content (int *,int const*,unsigned long,int) ;
 scalar_t__ target_is_bigendian ;
 int * windres_open_as_binary (char const*,int ) ;
 unsigned long write_res_directory (int *,int,int const*,int const*,int const*,int*,int) ;

void
write_res_file (const char *fn,const rc_res_directory *resdir)
{
  asection *sec;
  rc_uint_type language;
  bfd *abfd;
  windres_bfd wrbfd;
  unsigned long sec_length = 0,sec_length_wrote;
  static const bfd_byte sign[] =
  {0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00,
   0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

  filename = fn;

  abfd = windres_open_as_binary (filename, 0);
  sec = bfd_make_section (abfd, ".data");
  if (sec == ((void*)0))
    bfd_fatal ("bfd_make_section");
  if (! bfd_set_section_flags (abfd, sec,
          (SEC_HAS_CONTENTS | SEC_ALLOC
           | SEC_LOAD | SEC_DATA)))
    bfd_fatal ("bfd_set_section_flags");

  sec->output_section = sec;

  set_windres_bfd (&wrbfd, abfd, sec,
     (target_is_bigendian ? WR_KIND_BFD_BIN_B
     : WR_KIND_BFD_BIN_L));

  language = -1;
  sec_length = write_res_directory ((windres_bfd *) ((void*)0), 0x20UL, resdir,
        (const rc_res_id *) ((void*)0),
        (const rc_res_id *) ((void*)0), &language, 1);
  if (! bfd_set_section_size (abfd, sec, (sec_length + 3) & ~3))
    bfd_fatal ("bfd_set_section_size");
  if ((sec_length & 3) != 0)
    set_windres_bfd_content (&wrbfd, sign, sec_length, 4-(sec_length & 3));
  set_windres_bfd_content (&wrbfd, sign, 0, sizeof (sign));
  language = -1;
  sec_length_wrote = write_res_directory (&wrbfd, 0x20UL, resdir,
       (const rc_res_id *) ((void*)0),
       (const rc_res_id *) ((void*)0),
       &language, 1);
  if (sec_length != sec_length_wrote)
    fatal ("res write failed with different sizes (%lu/%lu).", (long) sec_length,
        (long) sec_length_wrote);

  bfd_close (abfd);
  return;
}
