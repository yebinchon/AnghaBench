
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_protocol_version {scalar_t__ pv_major; scalar_t__ pv_minor; } ;



__attribute__((used)) static int fs_protocol_compare(struct ocfs2_protocol_version *existing,
          struct ocfs2_protocol_version *request)
{
 if (existing->pv_major != request->pv_major)
  return 1;

 if (existing->pv_minor > request->pv_minor)
  return 1;

 if (existing->pv_minor < request->pv_minor)
  request->pv_minor = existing->pv_minor;

 return 0;
}
