
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reserv_sets_t ;


 scalar_t__ reserv_sets_cmp (int ,int ) ;

__attribute__((used)) static int
reserv_sets_eq (reserv_sets_t reservs_1, reserv_sets_t reservs_2)
{
  return reserv_sets_cmp (reservs_1, reservs_2) == 0;
}
