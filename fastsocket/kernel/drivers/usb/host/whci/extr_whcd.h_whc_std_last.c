
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whc_std {int ntds_remaining; } ;



__attribute__((used)) static inline bool whc_std_last(struct whc_std *std)
{
 return std->ntds_remaining <= 1;
}
