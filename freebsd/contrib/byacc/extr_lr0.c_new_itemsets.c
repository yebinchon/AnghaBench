
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t Value_t ;


 size_t* itemset ;
 size_t* itemsetend ;
 size_t** kernel_base ;
 size_t** kernel_end ;
 int nshifts ;
 size_t nsyms ;
 size_t* ritem ;
 size_t* shift_symbol ;

__attribute__((used)) static void
new_itemsets(void)
{
    Value_t i;
    int shiftcount;
    Value_t *isp;
    Value_t *ksp;
    Value_t symbol;

    for (i = 0; i < nsyms; i++)
 kernel_end[i] = 0;

    shiftcount = 0;
    isp = itemset;
    while (isp < itemsetend)
    {
 i = *isp++;
 symbol = ritem[i];
 if (symbol > 0)
 {
     ksp = kernel_end[symbol];
     if (!ksp)
     {
  shift_symbol[shiftcount++] = symbol;
  ksp = kernel_base[symbol];
     }

     *ksp++ = (Value_t)(i + 1);
     kernel_end[symbol] = ksp;
 }
    }

    nshifts = shiftcount;
}
