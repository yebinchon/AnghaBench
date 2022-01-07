
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buff ;
typedef int bfd_vma ;
struct TYPE_2__ {int e_machine; } ;


 int EM_X86_64 ;





 int SHF_MASKOS ;
 int SHF_MASKPROC ;





 int SHF_X86_64_LARGE ;
 int abort () ;
 scalar_t__ do_section_details ;
 TYPE_1__ elf_header ;
 scalar_t__ is_32bit_elf ;
 int sprintf (char*,char*,int,int,unsigned long) ;
 char* stpcpy (char*,char const*) ;

__attribute__((used)) static const char *
get_elf_section_flags (bfd_vma sh_flags)
{
  static char buff[1024];
  char *p = buff;
  int field_size = is_32bit_elf ? 8 : 16;
  int index, size = sizeof (buff) - (field_size + 4 + 1);
  bfd_vma os_flags = 0;
  bfd_vma proc_flags = 0;
  bfd_vma unknown_flags = 0;
  const struct
    {
      const char *str;
      int len;
    }
  flags [] =
    {
 { "WRITE", 5 },
 { "ALLOC", 5 },
 { "EXEC", 4 },
 { "MERGE", 5 },
 { "STRINGS", 7 },
 { "INFO LINK", 9 },
 { "LINK ORDER", 10 },
 { "OS NONCONF", 10 },
 { "GROUP", 5 },
 { "TLS", 3 }
    };

  if (do_section_details)
    {
      sprintf (buff, "[%*.*lx]: ",
        field_size, field_size, (unsigned long) sh_flags);
      p += field_size + 4;
    }

  while (sh_flags)
    {
      bfd_vma flag;

      flag = sh_flags & - sh_flags;
      sh_flags &= ~ flag;

      if (do_section_details)
 {
   switch (flag)
     {
     case 128: index = 0; break;
     case 137: index = 1; break;
     case 136: index = 2; break;
     case 132: index = 3; break;
     case 130: index = 4; break;
     case 134: index = 5; break;
     case 133: index = 6; break;
     case 131: index = 7; break;
     case 135: index = 8; break;
     case 129: index = 9; break;

     default:
       index = -1;
       break;
     }

   if (index != -1)
     {
       if (p != buff + field_size + 4)
  {
    if (size < (10 + 2))
      abort ();
    size -= 2;
    *p++ = ',';
    *p++ = ' ';
  }

       size -= flags [index].len;
       p = stpcpy (p, flags [index].str);
     }
   else if (flag & SHF_MASKOS)
     os_flags |= flag;
   else if (flag & SHF_MASKPROC)
     proc_flags |= flag;
   else
     unknown_flags |= flag;
 }
      else
 {
   switch (flag)
     {
     case 128: *p = 'W'; break;
     case 137: *p = 'A'; break;
     case 136: *p = 'X'; break;
     case 132: *p = 'M'; break;
     case 130: *p = 'S'; break;
     case 134: *p = 'I'; break;
     case 133: *p = 'L'; break;
     case 131: *p = 'O'; break;
     case 135: *p = 'G'; break;
     case 129: *p = 'T'; break;

     default:
       if (elf_header.e_machine == EM_X86_64
    && flag == SHF_X86_64_LARGE)
  *p = 'l';
       else if (flag & SHF_MASKOS)
  {
    *p = 'o';
    sh_flags &= ~ SHF_MASKOS;
  }
       else if (flag & SHF_MASKPROC)
  {
    *p = 'p';
    sh_flags &= ~ SHF_MASKPROC;
  }
       else
  *p = 'x';
       break;
     }
   p++;
 }
    }

  if (do_section_details)
    {
      if (os_flags)
 {
   size -= 5 + field_size;
   if (p != buff + field_size + 4)
     {
       if (size < (2 + 1))
  abort ();
       size -= 2;
       *p++ = ',';
       *p++ = ' ';
     }
   sprintf (p, "OS (%*.*lx)", field_size, field_size,
     (unsigned long) os_flags);
   p += 5 + field_size;
 }
      if (proc_flags)
 {
   size -= 7 + field_size;
   if (p != buff + field_size + 4)
     {
       if (size < (2 + 1))
  abort ();
       size -= 2;
       *p++ = ',';
       *p++ = ' ';
     }
   sprintf (p, "PROC (%*.*lx)", field_size, field_size,
     (unsigned long) proc_flags);
   p += 7 + field_size;
 }
      if (unknown_flags)
 {
   size -= 10 + field_size;
   if (p != buff + field_size + 4)
     {
       if (size < (2 + 1))
  abort ();
       size -= 2;
       *p++ = ',';
       *p++ = ' ';
     }
   sprintf (p, "UNKNOWN (%*.*lx)", field_size, field_size,
     (unsigned long) unknown_flags);
   p += 10 + field_size;
 }
    }

  *p = '\0';
  return buff;
}
