
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int TRUE ;
 int arm_Note ;
 unsigned long bfd_get_32 (int *,int *) ;
 unsigned long name ;
 scalar_t__ offsetof (int ,unsigned long) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static bfd_boolean
arm_check_note (bfd *abfd,
  bfd_byte *buffer,
  bfd_size_type buffer_size,
  const char *expected_name,
  char **description_return)
{
  unsigned long namesz;
  unsigned long descsz;
  unsigned long type;
  char * descr;

  if (buffer_size < offsetof (arm_Note, name))
    return FALSE;



  namesz = bfd_get_32 (abfd, buffer);
  descsz = bfd_get_32 (abfd, buffer + offsetof (arm_Note, descsz));
  type = bfd_get_32 (abfd, buffer + offsetof (arm_Note, type));
  descr = (char *) buffer + offsetof (arm_Note, name);


  if (namesz + descsz + offsetof (arm_Note, name) > buffer_size)
    return FALSE;

  if (expected_name == ((void*)0))
    {
      if (namesz != 0)
 return FALSE;
    }
  else
    {
      if (namesz != ((strlen (expected_name) + 1 + 3) & ~3))
 return FALSE;

      if (strcmp (descr, expected_name) != 0)
 return FALSE;

      descr += (namesz + 3) & ~3;
    }



  if (description_return != ((void*)0))
    * description_return = descr;

  return TRUE;
}
