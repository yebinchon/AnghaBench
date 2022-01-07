
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 struct list_head* family_ht ;
 size_t genl_family_hash (unsigned int) ;

__attribute__((used)) static inline struct list_head *genl_family_chain(unsigned int id)
{
 return &family_ht[genl_family_hash(id)];
}
