
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ bfd_vma ;
typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_5__ {char* obj_attrs_vendor; } ;
struct TYPE_4__ {int sh_size; int bfd_section; } ;
typedef TYPE_1__ Elf_Internal_Shdr ;


 int OBJ_ATTR_GNU ;
 int OBJ_ATTR_PROC ;



 int _bfd_elf_obj_attrs_arg_type (int *,int,int) ;
 int abort () ;
 int bfd_elf_add_obj_attr_compat (int *,int,unsigned int,char*) ;
 int bfd_elf_add_obj_attr_int (int *,int,int,unsigned int) ;
 int bfd_elf_add_obj_attr_string (int *,int,int,char*) ;
 scalar_t__ bfd_get_32 (int *,int *) ;
 int bfd_get_section_contents (int *,int ,int *,int ,int ) ;
 int * bfd_malloc (int ) ;
 int free (int *) ;
 TYPE_2__* get_elf_backend_data (int *) ;
 void* read_unsigned_leb128 (int *,int *,unsigned int*) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char*) ;

void
_bfd_elf_parse_attributes (bfd *abfd, Elf_Internal_Shdr * hdr)
{
  bfd_byte *contents;
  bfd_byte *p;
  bfd_vma len;
  const char *std_section;

  contents = bfd_malloc (hdr->sh_size);
  if (!contents)
    return;
  if (!bfd_get_section_contents (abfd, hdr->bfd_section, contents, 0,
     hdr->sh_size))
    {
      free (contents);
      return;
    }
  p = contents;
  std_section = get_elf_backend_data (abfd)->obj_attrs_vendor;
  if (*(p++) == 'A')
    {
      len = hdr->sh_size - 1;
      while (len > 0)
 {
   int namelen;
   bfd_vma section_len;
   int vendor;

   section_len = bfd_get_32 (abfd, p);
   p += 4;
   if (section_len > len)
     section_len = len;
   len -= section_len;
   namelen = strlen ((char *)p) + 1;
   section_len -= namelen + 4;
   if (std_section && strcmp ((char *)p, std_section) == 0)
     vendor = OBJ_ATTR_PROC;
   else if (strcmp ((char *)p, "gnu") == 0)
     vendor = OBJ_ATTR_GNU;
   else
     {

       p += namelen + section_len;
       continue;
     }

   p += namelen;
   while (section_len > 0)
     {
       int tag;
       unsigned int n;
       unsigned int val;
       bfd_vma subsection_len;
       bfd_byte *end;

       tag = read_unsigned_leb128 (abfd, p, &n);
       p += n;
       subsection_len = bfd_get_32 (abfd, p);
       p += 4;
       if (subsection_len > section_len)
  subsection_len = section_len;
       section_len -= subsection_len;
       subsection_len -= n + 4;
       end = p + subsection_len;
       switch (tag)
  {
  case 130:
    while (p < end)
      {
        int type;

        tag = read_unsigned_leb128 (abfd, p, &n);
        p += n;
        type = _bfd_elf_obj_attrs_arg_type (abfd, vendor, tag);
        switch (type)
   {
   case 3:
     val = read_unsigned_leb128 (abfd, p, &n);
     p += n;
     bfd_elf_add_obj_attr_compat (abfd, vendor, val,
             (char *)p);
     p += strlen ((char *)p) + 1;
     break;
   case 2:
     bfd_elf_add_obj_attr_string (abfd, vendor, tag,
             (char *)p);
     p += strlen ((char *)p) + 1;
     break;
   case 1:
     val = read_unsigned_leb128 (abfd, p, &n);
     p += n;
     bfd_elf_add_obj_attr_int (abfd, vendor, tag, val);
     break;
   default:
     abort ();
   }
      }
    break;
  case 129:
  case 128:


  default:

    p += subsection_len;
    subsection_len = 0;
    break;
  }
     }
 }
    }
  free (contents);
}
