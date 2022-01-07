
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int GFP_TRANSHUGE ;
 int __GFP_WAIT ;

__attribute__((used)) static inline gfp_t alloc_hugepage_gfpmask(int defrag, gfp_t extra_gfp)
{
 return (GFP_TRANSHUGE & ~(defrag ? 0 : __GFP_WAIT)) | extra_gfp;
}
