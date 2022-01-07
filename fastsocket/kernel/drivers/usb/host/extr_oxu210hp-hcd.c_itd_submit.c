
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct oxu_hcd {int dummy; } ;
typedef int gfp_t ;


 int ENOSYS ;
 int oxu_dbg (struct oxu_hcd*,char*) ;

__attribute__((used)) static inline int itd_submit(struct oxu_hcd *oxu, struct urb *urb,
      gfp_t mem_flags)
{
 oxu_dbg(oxu, "iso support is missing!\n");
 return -ENOSYS;
}
