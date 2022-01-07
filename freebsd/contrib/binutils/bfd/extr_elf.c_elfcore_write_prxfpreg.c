
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int NT_PRXFPREG ;
 char* elfcore_write_note (int *,char*,int*,char*,int ,void const*,int) ;

char *
elfcore_write_prxfpreg (bfd *abfd,
   char *buf,
   int *bufsiz,
   const void *xfpregs,
   int size)
{
  char *note_name = "LINUX";
  return elfcore_write_note (abfd, buf, bufsiz,
        note_name, NT_PRXFPREG, xfpregs, size);
}
