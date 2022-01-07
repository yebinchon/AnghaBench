
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
struct TYPE_6__ {scalar_t__ filesize; int filename; } ;
typedef TYPE_1__ filename_and_size_t ;
typedef int file_ptr ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd ;
struct TYPE_7__ {int flags; int filepos; } ;
typedef TYPE_2__ asection ;


 int DATA_FLAGS ;
 int TRUE ;
 scalar_t__ bfd_get_section_contents (int *,TYPE_2__*,void*,int ,scalar_t__) ;
 scalar_t__ bfd_get_section_size (TYPE_2__*) ;
 scalar_t__ bfd_stat (int *,struct stat*) ;
 int free (void*) ;
 int got_a_section ;
 int print_strings (int ,int *,int ,int ,scalar_t__,void*) ;
 void* xmalloc (scalar_t__) ;

__attribute__((used)) static void
strings_a_section (bfd *abfd, asection *sect, void *arg)
{
  filename_and_size_t * filename_and_sizep;
  bfd_size_type *filesizep;
  bfd_size_type sectsize;
  void *mem;

  if ((sect->flags & DATA_FLAGS) != DATA_FLAGS)
    return;

  sectsize = bfd_get_section_size (sect);

  if (sectsize <= 0)
    return;


  filename_and_sizep = (filename_and_size_t *) arg;
  filesizep = & filename_and_sizep->filesize;

  if (*filesizep == 0)
    {
      struct stat st;

      if (bfd_stat (abfd, &st))
 return;


      *filesizep = st.st_size;
    }




  if (sectsize >= *filesizep)
    return;

  mem = xmalloc (sectsize);

  if (bfd_get_section_contents (abfd, sect, mem, (file_ptr) 0, sectsize))
    {
      got_a_section = TRUE;

      print_strings (filename_and_sizep->filename, ((void*)0), sect->filepos,
       0, sectsize, mem);
    }

  free (mem);
}
