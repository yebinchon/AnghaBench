
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int windres_bfd ;
typedef scalar_t__ rc_uint_type ;
typedef int rc_res_directory ;
typedef int bfd ;
typedef int asection ;


 int WR_KIND_BFD_BIN_B ;
 int WR_KIND_BFD_BIN_L ;
 int bfd_close (int *) ;
 int bfd_fatal (char*) ;
 int * bfd_get_section_by_name (int *,char*) ;
 int fatal (char*,char const*) ;
 char const* filename ;
 scalar_t__ get_file_size (char const*) ;
 int probe_binary (int *,scalar_t__) ;
 scalar_t__ read_resource_entry (int *,scalar_t__*,scalar_t__) ;
 int * resources ;
 int set_windres_bfd (int *,int *,int *,int ) ;
 int set_windres_bfd_endianess (int *,int) ;
 int skip_null_resource (int *,scalar_t__*,scalar_t__) ;
 scalar_t__ target_is_bigendian ;
 int * windres_open_as_binary (char const*,int) ;

rc_res_directory *
read_res_file (const char *fn)
{
  rc_uint_type off, flen;
  windres_bfd wrbfd;
  bfd *abfd;
  asection *sec;
  filename = fn;

  flen = (rc_uint_type) get_file_size (filename);
  if (! flen)
    fatal ("can't open '%s' for input.", filename);
  abfd = windres_open_as_binary (filename, 1);
  sec = bfd_get_section_by_name (abfd, ".data");
  if (sec == ((void*)0))
    bfd_fatal ("bfd_get_section_by_name");
  set_windres_bfd (&wrbfd, abfd, sec,
     (target_is_bigendian ? WR_KIND_BFD_BIN_B
     : WR_KIND_BFD_BIN_L));
  off = 0;

  if (! probe_binary (&wrbfd, flen))
    set_windres_bfd_endianess (&wrbfd, ! target_is_bigendian);

  skip_null_resource (&wrbfd, &off, flen);

  while (read_resource_entry (&wrbfd, &off, flen))
    ;

  bfd_close (abfd);

  return resources;
}
