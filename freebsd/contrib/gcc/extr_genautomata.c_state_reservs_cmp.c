
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reserv_sets_t ;


 int reserv_sets_cmp (int ,int ) ;

__attribute__((used)) static int
state_reservs_cmp (const void *reservs_ptr_1, const void *reservs_ptr_2)
{
  return reserv_sets_cmp (*(reserv_sets_t *) reservs_ptr_1,
                          *(reserv_sets_t *) reservs_ptr_2);
}
