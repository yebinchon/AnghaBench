
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd ;


 int DESCOFF ;
 unsigned char N_UNDF ;
 int OTHEROFF ;
 int STABSIZE ;
 int STRDXOFF ;
 int TYPEOFF ;
 int VALOFF ;
 char* _ (char*) ;
 char* bfd_get_stab_name (unsigned char) ;
 unsigned short bfd_h_get_16 (int *,int *) ;
 void* bfd_h_get_32 (int *,int *) ;
 unsigned char bfd_h_get_8 (int *,int *) ;
 int bfd_printf_vma (int *,unsigned int) ;
 int printf (char*,...) ;
 int stab_size ;
 int * stabs ;
 unsigned long stabstr_size ;
 char* strtab ;

__attribute__((used)) static void
print_section_stabs (bfd *abfd,
       const char *stabsect_name,
       unsigned *string_offset_ptr)
{
  int i;
  unsigned file_string_table_offset = 0;
  unsigned next_file_string_table_offset = *string_offset_ptr;
  bfd_byte *stabp, *stabs_end;

  stabp = stabs;
  stabs_end = stabp + stab_size;

  printf (_("Contents of %s section:\n\n"), stabsect_name);
  printf ("Symnum n_type n_othr n_desc n_value  n_strx String\n");





  for (i = -1; stabp < stabs_end; stabp += STABSIZE, i++)
    {
      const char *name;
      unsigned long strx;
      unsigned char type, other;
      unsigned short desc;
      bfd_vma value;

      strx = bfd_h_get_32 (abfd, stabp + STRDXOFF);
      type = bfd_h_get_8 (abfd, stabp + TYPEOFF);
      other = bfd_h_get_8 (abfd, stabp + OTHEROFF);
      desc = bfd_h_get_16 (abfd, stabp + DESCOFF);
      value = bfd_h_get_32 (abfd, stabp + VALOFF);

      printf ("\n%-6d ", i);


      name = bfd_get_stab_name (type);
      if (name != ((void*)0))
 printf ("%-6s", name);
      else if (type == N_UNDF)
 printf ("HdrSym");
      else
 printf ("%-6d", type);
      printf (" %-6d %-6d ", other, desc);
      bfd_printf_vma (abfd, value);
      printf (" %-6lu", strx);




      if (type == N_UNDF)
 {
   file_string_table_offset = next_file_string_table_offset;
   next_file_string_table_offset += value;
 }
      else
 {


   if ((strx + file_string_table_offset) < stabstr_size)
     printf (" %s", &strtab[strx + file_string_table_offset]);
   else
     printf (" *");
 }
    }
  printf ("\n\n");
  *string_offset_ptr = next_file_string_table_offset;
}
