
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int NT_FPREGSET ;
 char* elfcore_write_note (int *,char*,int*,char const*,int ,void const*,int) ;

char *
elfcore_write_prfpreg (bfd *abfd,
         char *buf,
         int *bufsiz,
         const void *fpregs,
         int size)
{
  const char *note_name = "CORE";
  return elfcore_write_note (abfd, buf, bufsiz,
        note_name, NT_FPREGSET, fpregs, size);
}
