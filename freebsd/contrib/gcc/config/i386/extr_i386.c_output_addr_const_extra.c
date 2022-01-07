
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int FILE ;


 scalar_t__ GET_CODE (int ) ;
 int TARGET_64BIT ;
 scalar_t__ UNSPEC ;






 int XINT (int ,int) ;
 int XVECEXP (int ,int ,int ) ;
 int fputs (char*,int *) ;
 int output_addr_const (int *,int ) ;

bool
output_addr_const_extra (FILE *file, rtx x)
{
  rtx op;

  if (GET_CODE (x) != UNSPEC)
    return 0;

  op = XVECEXP (x, 0, 0);
  switch (XINT (x, 1))
    {
    case 131:
      output_addr_const (file, op);

      fputs ("@GOTTPOFF", file);
      break;
    case 128:
      output_addr_const (file, op);
      fputs ("@TPOFF", file);
      break;
    case 129:
      output_addr_const (file, op);
      if (TARGET_64BIT)
 fputs ("@TPOFF", file);
      else
 fputs ("@NTPOFF", file);
      break;
    case 133:
      output_addr_const (file, op);
      fputs ("@DTPOFF", file);
      break;
    case 132:
      output_addr_const (file, op);
      if (TARGET_64BIT)
 fputs ("@GOTTPOFF(%rip)", file);
      else
 fputs ("@GOTNTPOFF", file);
      break;
    case 130:
      output_addr_const (file, op);
      fputs ("@INDNTPOFF", file);
      break;

    default:
      return 0;
    }

  return 1;
}
