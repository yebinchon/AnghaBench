
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exofs_i_info {int i_flags; } ;


 int OBJ_2BCREATED ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void set_obj_2bcreated(struct exofs_i_info *oi)
{
 set_bit(OBJ_2BCREATED, &oi->i_flags);
}
