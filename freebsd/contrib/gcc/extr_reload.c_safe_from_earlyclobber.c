
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decomposition {int dummy; } ;
typedef int rtx ;


 struct decomposition decompose (int ) ;
 int immune_p (int ,int ,struct decomposition) ;

int
safe_from_earlyclobber (rtx op, rtx clobber)
{
  struct decomposition early_data;

  early_data = decompose (clobber);
  return immune_p (op, clobber, early_data);
}
