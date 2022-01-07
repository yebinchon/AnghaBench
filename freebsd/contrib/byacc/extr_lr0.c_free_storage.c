
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREE (int ) ;
 int kernel_base ;
 int kernel_end ;
 int kernel_items ;
 int redset ;
 int shift_symbol ;
 int shiftset ;
 int state_set ;

__attribute__((used)) static void
free_storage(void)
{
    FREE(shift_symbol);
    FREE(redset);
    FREE(shiftset);
    FREE(kernel_base);
    FREE(kernel_end);
    FREE(kernel_items);
    FREE(state_set);
}
