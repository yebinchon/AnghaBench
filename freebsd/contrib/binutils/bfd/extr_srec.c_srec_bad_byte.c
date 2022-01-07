
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;
typedef int bfd ;


 int EOF ;
 int ISPRINT (int) ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int *,unsigned int,char*) ;
 int bfd_error_bad_value ;
 int bfd_error_file_truncated ;
 int bfd_set_error (int ) ;
 int sprintf (char*,char*,unsigned int) ;
 int stub1 (int ,int *,unsigned int,char*) ;

__attribute__((used)) static void
srec_bad_byte (bfd *abfd,
        unsigned int lineno,
        int c,
        bfd_boolean error)
{
  if (c == EOF)
    {
      if (! error)
 bfd_set_error (bfd_error_file_truncated);
    }
  else
    {
      char buf[10];

      if (! ISPRINT (c))
 sprintf (buf, "\\%03o", (unsigned int) c);
      else
 {
   buf[0] = c;
   buf[1] = '\0';
 }
      (*_bfd_error_handler)
 (_("%B:%d: Unexpected character `%s' in S-record file\n"),
  abfd, lineno, buf);
      bfd_set_error (bfd_error_bad_value);
    }
}
