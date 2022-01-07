
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_type_t ;
typedef int * acl_t ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_NFS4 ;
 scalar_t__ EINVAL ;
 int _PC_ACL_EXTENDED ;
 int _PC_ACL_NFS4 ;
 int acl_free (int *) ;
 int * acl_get_fd_np (int,int ) ;
 scalar_t__ acl_is_trivial_np (int *,int*) ;
 scalar_t__ acl_set_fd_np (int,int *,int ) ;
 scalar_t__ errno ;
 int fpathconf (int,int ) ;
 int warn (char*,char const*) ;

__attribute__((used)) static void
preserve_fd_acls(int source_fd, int dest_fd, const char *source_path,
    const char *dest_path)
{
 acl_t acl;
 acl_type_t acl_type;
 int acl_supported = 0, ret, trivial;

 ret = fpathconf(source_fd, _PC_ACL_NFS4);
 if (ret > 0 ) {
  acl_supported = 1;
  acl_type = ACL_TYPE_NFS4;
 } else if (ret < 0 && errno != EINVAL) {
  warn("fpathconf(..., _PC_ACL_NFS4) failed for %s",
      source_path);
  return;
 }
 if (acl_supported == 0) {
  ret = fpathconf(source_fd, _PC_ACL_EXTENDED);
  if (ret > 0 ) {
   acl_supported = 1;
   acl_type = ACL_TYPE_ACCESS;
  } else if (ret < 0 && errno != EINVAL) {
   warn("fpathconf(..., _PC_ACL_EXTENDED) failed for %s",
       source_path);
   return;
  }
 }
 if (acl_supported == 0)
  return;

 acl = acl_get_fd_np(source_fd, acl_type);
 if (acl == ((void*)0)) {
  warn("failed to get acl entries for %s", source_path);
  return;
 }
 if (acl_is_trivial_np(acl, &trivial)) {
  warn("acl_is_trivial() failed for %s", source_path);
  acl_free(acl);
  return;
 }
 if (trivial) {
  acl_free(acl);
  return;
 }
 if (acl_set_fd_np(dest_fd, acl, acl_type) < 0) {
  warn("failed to set acl entries for %s", dest_path);
  acl_free(acl);
  return;
 }
 acl_free(acl);
}
