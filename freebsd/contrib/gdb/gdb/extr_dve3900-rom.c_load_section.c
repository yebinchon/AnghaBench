
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int header ;
typedef scalar_t__ bfd_vma ;
typedef unsigned int bfd_size_type ;
typedef int bfd ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ asection ;


 int SEC_LOAD ;
 int bfd_get_section_contents (int *,TYPE_1__*,unsigned char*,int ,unsigned int) ;
 scalar_t__ bfd_section_lma (int *,TYPE_1__*) ;
 int bfd_section_name (int *,TYPE_1__*) ;
 unsigned int bfd_section_size (int *,TYPE_1__*) ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 int print_address_numeric (scalar_t__,int,int ) ;
 int printf_filtered (char*,...) ;
 int process_read_request (unsigned char*,unsigned int) ;
 int write_long (unsigned char*,long) ;
 int xfree (unsigned char*) ;
 scalar_t__ xmalloc (unsigned int) ;

__attribute__((used)) static void
load_section (bfd *abfd, asection *s, unsigned int *data_count)
{
  if (s->flags & SEC_LOAD)
    {
      bfd_size_type section_size = bfd_section_size (abfd, s);
      bfd_vma section_base = bfd_section_lma (abfd, s);
      unsigned char *buffer;
      unsigned char header[8];


      if (section_size == 0)
 return;
      if (data_count)
 *data_count += section_size;


      printf_filtered ("Loading section %s, size 0x%lx lma ",
         bfd_section_name (abfd, s), (long) section_size);
      print_address_numeric (section_base, 1, gdb_stdout);
      printf_filtered ("\n");
      gdb_flush (gdb_stdout);


      write_long (&header[0], (long) section_base);
      write_long (&header[4], (long) section_size);
      process_read_request (header, sizeof (header));



      buffer = (unsigned char *) xmalloc (section_size);
      bfd_get_section_contents (abfd, s, buffer, 0, section_size);
      process_read_request (buffer, section_size);
      xfree (buffer);
    }
}
