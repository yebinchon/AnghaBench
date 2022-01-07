
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_2__ {char* name; int type; int descsz; int namesz; } ;
typedef TYPE_1__ Elf_External_Note ;


 int H_PUT_32 (int *,int,int ) ;
 int memcpy (char*,void const*,int) ;
 char* realloc (char*,int) ;
 int strlen (char const*) ;

char *
elfcore_write_note (bfd *abfd,
      char *buf,
      int *bufsiz,
      const char *name,
      int type,
      const void *input,
      int size)
{
  Elf_External_Note *xnp;
  size_t namesz;
  size_t newspace;
  char *dest;

  namesz = 0;
  if (name != ((void*)0))
    namesz = strlen (name) + 1;

  newspace = 12 + ((namesz + 3) & -4) + ((size + 3) & -4);

  buf = realloc (buf, *bufsiz + newspace);
  dest = buf + *bufsiz;
  *bufsiz += newspace;
  xnp = (Elf_External_Note *) dest;
  H_PUT_32 (abfd, namesz, xnp->namesz);
  H_PUT_32 (abfd, size, xnp->descsz);
  H_PUT_32 (abfd, type, xnp->type);
  dest = xnp->name;
  if (name != ((void*)0))
    {
      memcpy (dest, name, namesz);
      dest += namesz;
      while (namesz & 3)
 {
   *dest++ = '\0';
   ++namesz;
 }
    }
  memcpy (dest, input, size);
  dest += size;
  while (size & 3)
    {
      *dest++ = '\0';
      ++size;
    }
  return buf;
}
