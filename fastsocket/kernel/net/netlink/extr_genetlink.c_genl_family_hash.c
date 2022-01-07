
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GENL_FAM_TAB_MASK ;

__attribute__((used)) static inline unsigned int genl_family_hash(unsigned int id)
{
 return id & GENL_FAM_TAB_MASK;
}
