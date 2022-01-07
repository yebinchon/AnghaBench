
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int FILE ;


 int fputs (char*,int *) ;
 int gcc_unreachable () ;
 int output_addr_const (int *,int ) ;

__attribute__((used)) static void
sparc_output_dwarf_dtprel (FILE *file, int size, rtx x)
{
  switch (size)
    {
    case 4:
      fputs ("\t.word\t%r_tls_dtpoff32(", file);
      break;
    case 8:
      fputs ("\t.xword\t%r_tls_dtpoff64(", file);
      break;
    default:
      gcc_unreachable ();
    }
  output_addr_const (file, x);
  fputs (")", file);
}
