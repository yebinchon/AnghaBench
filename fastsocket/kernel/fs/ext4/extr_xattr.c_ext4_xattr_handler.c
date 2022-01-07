
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;


 int ARRAY_SIZE (struct xattr_handler**) ;
 struct xattr_handler** ext4_xattr_handler_map ;

__attribute__((used)) static inline struct xattr_handler *
ext4_xattr_handler(int name_index)
{
 struct xattr_handler *handler = ((void*)0);

 if (name_index > 0 && name_index < ARRAY_SIZE(ext4_xattr_handler_map))
  handler = ext4_xattr_handler_map[name_index];
 return handler;
}
