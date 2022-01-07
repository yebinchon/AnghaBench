
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
struct callback_data {scalar_t__ load_start; scalar_t__ load_end; scalar_t__ load_offset; } ;
typedef scalar_t__ bfd_vma ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd ;
typedef int asection ;


 int SEC_LOAD ;
 char* bfd_errmsg (int ) ;
 int bfd_get_error () ;
 int bfd_get_filename (int *) ;
 int bfd_get_section_contents (int *,int *,char*,int ,scalar_t__) ;
 int bfd_get_section_flags (int *,int *) ;
 int bfd_section_name (int *,int *) ;
 scalar_t__ bfd_section_size (int *,int *) ;
 scalar_t__ bfd_section_vma (int *,int *) ;
 int do_cleanups (struct cleanup*) ;
 int error (char*,int ,char*) ;
 struct cleanup* make_cleanup (int ,char*) ;
 int paddr_nz (scalar_t__) ;
 int printf_filtered (char*,int ,...) ;
 int puts_filtered (char*) ;
 int safe_strerror (int) ;
 int target_write_memory (scalar_t__,char*,scalar_t__) ;
 int warning (char*,int ) ;
 int xfree ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static void
restore_section_callback (bfd *ibfd, asection *isec, void *args)
{
  struct callback_data *data = args;
  bfd_vma sec_start = bfd_section_vma (ibfd, isec);
  bfd_size_type size = bfd_section_size (ibfd, isec);
  bfd_vma sec_end = sec_start + size;
  bfd_size_type sec_offset = 0;
  bfd_size_type sec_load_count = size;
  struct cleanup *old_chain;
  char *buf;
  int ret;


  if (!(bfd_get_section_flags (ibfd, isec) & SEC_LOAD))
    return;


  if (sec_end <= data->load_start
      || (data->load_end > 0 && sec_start >= data->load_end))
    {

      printf_filtered ("skipping section %s...\n",
         bfd_section_name (ibfd, isec));
      return;
    }




  if (sec_start < data->load_start)
    sec_offset = data->load_start - sec_start;

  sec_load_count -= sec_offset;
  if (data->load_end > 0 && sec_end > data->load_end)
    sec_load_count -= sec_end - data->load_end;


  buf = xmalloc (size);
  old_chain = make_cleanup (xfree, buf);
  if (!bfd_get_section_contents (ibfd, isec, buf, 0, size))
    error ("Failed to read bfd file %s: '%s'.", bfd_get_filename (ibfd),
    bfd_errmsg (bfd_get_error ()));

  printf_filtered ("Restoring section %s (0x%lx to 0x%lx)",
     bfd_section_name (ibfd, isec),
     (unsigned long) sec_start,
     (unsigned long) sec_end);

  if (data->load_offset != 0 || data->load_start != 0 || data->load_end != 0)
    printf_filtered (" into memory (0x%s to 0x%s)\n",
       paddr_nz ((unsigned long) sec_start
          + sec_offset + data->load_offset),
       paddr_nz ((unsigned long) sec_start + sec_offset
         + data->load_offset + sec_load_count));
  else
    puts_filtered ("\n");


  ret = target_write_memory (sec_start + sec_offset + data->load_offset,
        buf + sec_offset, sec_load_count);
  if (ret != 0)
    warning ("restore: memory write failed (%s).", safe_strerror (ret));
  do_cleanups (old_chain);
  return;
}
