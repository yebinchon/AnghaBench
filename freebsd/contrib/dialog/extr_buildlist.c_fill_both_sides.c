
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ALL_DATA ;


 int fill_one_side (int *,int) ;

__attribute__((used)) static void
fill_both_sides(ALL_DATA * all)
{
    int k;

    for (k = 0; k < 2; ++k) {
 fill_one_side(all, k);
    }
}
