
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct internal_exec {int dummy; } ;
typedef int file_ptr ;
typedef int bfd ;


 int N_DRELOFF (struct internal_exec) ;
 int N_SYMOFF (struct internal_exec) ;
 int N_TRELOFF (struct internal_exec) ;
 struct internal_exec* exec_hdr (int *) ;

__attribute__((used)) static void
MY_final_link_callback (bfd *abfd,
   file_ptr *ptreloff,
   file_ptr *pdreloff,
   file_ptr *psymoff)
{
  struct internal_exec *execp = exec_hdr (abfd);

  *ptreloff = N_TRELOFF (*execp);
  *pdreloff = N_DRELOFF (*execp);
  *psymoff = N_SYMOFF (*execp);
}
