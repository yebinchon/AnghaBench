
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_7__ {int size; scalar_t__ vma; } ;
typedef TYPE_1__ asection ;
struct TYPE_8__ {int virt_size; } ;
typedef int FILE ;


 int FALSE ;
 scalar_t__ GET_PDATA_ENTRY (int *,int *) ;
 int PDATA_ROW_SIZE ;
 int TRUE ;
 char* _ (char*) ;
 TYPE_1__* bfd_get_section_by_name (int *,char*) ;
 int bfd_malloc_and_get_section (int *,TYPE_1__*,int **) ;
 int * coff_section_data (int *,TYPE_1__*) ;
 int fprintf (int *,char*,...) ;
 int fprintf_vma (int *,scalar_t__) ;
 int fputc (char,int *) ;
 int free (int *) ;
 TYPE_2__* pei_section_data (int *,TYPE_1__*) ;

__attribute__((used)) static bfd_boolean
pe_print_pdata (bfd * abfd, void * vfile)
{





  FILE *file = (FILE *) vfile;
  bfd_byte *data = 0;
  asection *section = bfd_get_section_by_name (abfd, ".pdata");
  bfd_size_type datasize = 0;
  bfd_size_type i;
  bfd_size_type start, stop;
  int onaline = (5 * 4);

  if (section == ((void*)0)
      || coff_section_data (abfd, section) == ((void*)0)
      || pei_section_data (abfd, section) == ((void*)0))
    return TRUE;

  stop = pei_section_data (abfd, section)->virt_size;
  if ((stop % onaline) != 0)
    fprintf (file,
      _("Warning, .pdata section size (%ld) is not a multiple of %d\n"),
      (long) stop, onaline);

  fprintf (file,
    _("\nThe Function Table (interpreted .pdata section contents)\n"));




  fprintf (file, _(" vma:\t\tBegin    End      EH       EH       PrologEnd  Exception\n     \t\tAddress  Address  Handler  Data     Address    Mask\n"));




  datasize = section->size;
  if (datasize == 0)
    return TRUE;

  if (! bfd_malloc_and_get_section (abfd, section, &data))
    {
      if (data != ((void*)0))
 free (data);
      return FALSE;
    }

  start = 0;

  for (i = start; i < stop; i += onaline)
    {
      bfd_vma begin_addr;
      bfd_vma end_addr;
      bfd_vma eh_handler;
      bfd_vma eh_data;
      bfd_vma prolog_end_addr;
      int em_data;

      if (i + (5 * 4) > stop)
 break;

      begin_addr = GET_PDATA_ENTRY (abfd, data + i );
      end_addr = GET_PDATA_ENTRY (abfd, data + i + 4);
      eh_handler = GET_PDATA_ENTRY (abfd, data + i + 8);
      eh_data = GET_PDATA_ENTRY (abfd, data + i + 12);
      prolog_end_addr = GET_PDATA_ENTRY (abfd, data + i + 16);

      if (begin_addr == 0 && end_addr == 0 && eh_handler == 0
   && eh_data == 0 && prolog_end_addr == 0)

 break;

      em_data = ((eh_handler & 0x1) << 2) | (prolog_end_addr & 0x3);
      eh_handler &= ~(bfd_vma) 0x3;
      prolog_end_addr &= ~(bfd_vma) 0x3;

      fputc (' ', file);
      fprintf_vma (file, i + section->vma); fputc ('\t', file);
      fprintf_vma (file, begin_addr); fputc (' ', file);
      fprintf_vma (file, end_addr); fputc (' ', file);
      fprintf_vma (file, eh_handler);

      fputc (' ', file);
      fprintf_vma (file, eh_data); fputc (' ', file);
      fprintf_vma (file, prolog_end_addr);
      fprintf (file, "   %x", em_data);
      fprintf (file, "\n");
    }

  free (data);

  return TRUE;
}
