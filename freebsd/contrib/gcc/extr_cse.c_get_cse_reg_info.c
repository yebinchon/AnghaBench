
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cse_reg_info {scalar_t__ timestamp; } ;


 struct cse_reg_info* cse_reg_info_table ;
 scalar_t__ cse_reg_info_timestamp ;
 int get_cse_reg_info_1 (unsigned int) ;

__attribute__((used)) static inline struct cse_reg_info *
get_cse_reg_info (unsigned int regno)
{
  struct cse_reg_info *p = &cse_reg_info_table[regno];



  if (p->timestamp != cse_reg_info_timestamp)
    get_cse_reg_info_1 (regno);

  return p;
}
