
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iattr {int ia_valid; int ia_mtime; int ia_atime; int ia_size; int ia_gid; int ia_uid; int ia_mode; } ;
typedef int __be32 ;


 int ATTR_ATIME ;
 int ATTR_ATIME_SET ;
 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_MTIME ;
 int ATTR_MTIME_SET ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int __constant_htonl (int) ;
 int const htonl (int ) ;
 int * xdr_encode_current_server_time (int *,int *) ;
 int * xdr_encode_time (int *,int *) ;

__attribute__((used)) static inline __be32 *
xdr_encode_sattr(__be32 *p, struct iattr *attr)
{
 const __be32 not_set = __constant_htonl(0xFFFFFFFF);

 *p++ = (attr->ia_valid & ATTR_MODE) ? htonl(attr->ia_mode) : not_set;
 *p++ = (attr->ia_valid & ATTR_UID) ? htonl(attr->ia_uid) : not_set;
 *p++ = (attr->ia_valid & ATTR_GID) ? htonl(attr->ia_gid) : not_set;
 *p++ = (attr->ia_valid & ATTR_SIZE) ? htonl(attr->ia_size) : not_set;

 if (attr->ia_valid & ATTR_ATIME_SET) {
  p = xdr_encode_time(p, &attr->ia_atime);
 } else if (attr->ia_valid & ATTR_ATIME) {
  p = xdr_encode_current_server_time(p, &attr->ia_atime);
 } else {
  *p++ = not_set;
  *p++ = not_set;
 }

 if (attr->ia_valid & ATTR_MTIME_SET) {
  p = xdr_encode_time(p, &attr->ia_mtime);
 } else if (attr->ia_valid & ATTR_MTIME) {
  p = xdr_encode_current_server_time(p, &attr->ia_mtime);
 } else {
  *p++ = not_set;
  *p++ = not_set;
 }
   return p;
}
