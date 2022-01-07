
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_address {scalar_t__ base; scalar_t__ indx; scalar_t__ disp; } ;
typedef int rtx ;
typedef int FILE ;


 size_t REGNO (scalar_t__) ;
 int REGNO_OK_FOR_BASE_P (size_t) ;
 int REGNO_OK_FOR_INDEX_P (size_t) ;
 int fprintf (int *,char*,...) ;
 int output_addr_const (int *,scalar_t__) ;
 int output_operand_lossage (char*) ;
 char** reg_names ;
 int s390_decompose_address (int ,struct s390_address*) ;

void
print_operand_address (FILE *file, rtx addr)
{
  struct s390_address ad;

  if (!s390_decompose_address (addr, &ad)
      || (ad.base && !REGNO_OK_FOR_BASE_P (REGNO (ad.base)))
      || (ad.indx && !REGNO_OK_FOR_INDEX_P (REGNO (ad.indx))))
    output_operand_lossage ("cannot decompose address");

  if (ad.disp)
    output_addr_const (file, ad.disp);
  else
    fprintf (file, "0");

  if (ad.base && ad.indx)
    fprintf (file, "(%s,%s)", reg_names[REGNO (ad.indx)],
                              reg_names[REGNO (ad.base)]);
  else if (ad.base)
    fprintf (file, "(%s)", reg_names[REGNO (ad.base)]);
}
