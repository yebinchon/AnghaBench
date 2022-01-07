
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int NT_THRMISC ;
 char* elfcore_write_note (int *,char*,int*,char*,int ,char const*,int) ;

char *
elfcore_write_thrmisc (bfd *abfd,
         char *buf,
         int *bufsiz,
         const char *tname,
         int size)
{





  return buf;

}
