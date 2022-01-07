
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int FILE ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ UNSPEC ;
 int XINT (int ,int) ;
 int XVECEXP (int ,int ,int ) ;
 int XVECLEN (int ,int ) ;
 int assemble_name (int *,int ) ;
 int fprintf (int *,char*) ;
 int get_some_local_dynamic_name () ;
 int output_addr_const (int *,int ) ;

bool
s390_output_addr_const_extra (FILE *file, rtx x)
{
  if (GET_CODE (x) == UNSPEC && XVECLEN (x, 0) == 1)
    switch (XINT (x, 1))
      {
      case 136:
 output_addr_const (file, XVECEXP (x, 0, 0));
 fprintf (file, "@GOTENT");
 return 1;
      case 137:
 output_addr_const (file, XVECEXP (x, 0, 0));
 fprintf (file, "@GOT");
 return 1;
      case 134:
 output_addr_const (file, XVECEXP (x, 0, 0));
 fprintf (file, "@GOTOFF");
 return 1;
      case 131:
 output_addr_const (file, XVECEXP (x, 0, 0));
 fprintf (file, "@PLT");
 return 1;
      case 130:
 output_addr_const (file, XVECEXP (x, 0, 0));
 fprintf (file, "@PLTOFF");
 return 1;
      case 129:
 output_addr_const (file, XVECEXP (x, 0, 0));
 fprintf (file, "@TLSGD");
 return 1;
      case 128:
 assemble_name (file, get_some_local_dynamic_name ());
 fprintf (file, "@TLSLDM");
 return 1;
      case 138:
 output_addr_const (file, XVECEXP (x, 0, 0));
 fprintf (file, "@DTPOFF");
 return 1;
      case 132:
 output_addr_const (file, XVECEXP (x, 0, 0));
 fprintf (file, "@NTPOFF");
 return 1;
      case 135:
 output_addr_const (file, XVECEXP (x, 0, 0));
 fprintf (file, "@GOTNTPOFF");
 return 1;
      case 133:
 output_addr_const (file, XVECEXP (x, 0, 0));
 fprintf (file, "@INDNTPOFF");
 return 1;
      }

  return 0;
}
