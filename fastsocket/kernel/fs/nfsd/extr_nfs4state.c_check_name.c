
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {scalar_t__ len; } ;


 scalar_t__ NFS4_OPAQUE_LIMIT ;
 int dprintk (char*,scalar_t__) ;

__attribute__((used)) static int check_name(struct xdr_netobj name)
{
 if (name.len == 0)
  return 0;
 if (name.len > NFS4_OPAQUE_LIMIT) {
  dprintk("NFSD: check_name: name too long(%d)!\n", name.len);
  return 0;
 }
 return 1;
}
