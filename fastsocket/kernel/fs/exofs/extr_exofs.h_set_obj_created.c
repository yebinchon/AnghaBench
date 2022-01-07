
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exofs_i_info {int i_flags; } ;


 int OBJ_CREATED ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void set_obj_created(struct exofs_i_info *oi)
{
 set_bit(OBJ_CREATED, &oi->i_flags);
}
