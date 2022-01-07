
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Value_t ;


 int fprintf (int ,char*) ;
 int get_state (scalar_t__) ;
 int nshifts ;
 scalar_t__* shift_symbol ;
 int * shiftset ;
 int stderr ;

__attribute__((used)) static void
append_states(void)
{
    int i;
    int j;
    Value_t symbol;




    for (i = 1; i < nshifts; i++)
    {
 symbol = shift_symbol[i];
 j = i;
 while (j > 0 && shift_symbol[j - 1] > symbol)
 {
     shift_symbol[j] = shift_symbol[j - 1];
     j--;
 }
 shift_symbol[j] = symbol;
    }

    for (i = 0; i < nshifts; i++)
    {
 symbol = shift_symbol[i];
 shiftset[i] = get_state(symbol);
    }
}
