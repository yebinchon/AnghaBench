
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int QH_LINK_PTR (int) ;
 int QH_LINK_PTR_MASK ;
 int QH_LINK_T ;

__attribute__((used)) static inline void whc_qset_set_link_ptr(u64 *ptr, u64 target)
{
 if (target)
  *ptr = (*ptr & ~(QH_LINK_PTR_MASK | QH_LINK_T)) | QH_LINK_PTR(target);
 else
  *ptr = QH_LINK_T;
}
