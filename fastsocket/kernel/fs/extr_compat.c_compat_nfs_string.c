
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_string {int len; int data; } ;
struct compat_nfs_string {int len; int data; } ;


 int compat_ptr (int ) ;

__attribute__((used)) static inline void compat_nfs_string(struct nfs_string *dst,
         struct compat_nfs_string *src)
{
 dst->data = compat_ptr(src->data);
 dst->len = src->len;
}
