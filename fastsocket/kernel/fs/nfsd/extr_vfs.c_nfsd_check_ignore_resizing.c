
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iattr {int ia_valid; scalar_t__ ia_size; } ;


 int ATTR_SIZE ;

__attribute__((used)) static void
nfsd_check_ignore_resizing(struct iattr *iap)
{
 if ((iap->ia_valid & ATTR_SIZE) && (iap->ia_size == 0))
  iap->ia_valid &= ~ATTR_SIZE;
}
