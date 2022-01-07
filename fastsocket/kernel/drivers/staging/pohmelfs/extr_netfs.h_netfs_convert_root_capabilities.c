
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfs_root_capabilities {void* flags; void* avail; void* used; void* nr_files; } ;


 void* __cpu_to_be64 (void*) ;

__attribute__((used)) static inline void netfs_convert_root_capabilities(struct netfs_root_capabilities *cap)
{
 cap->nr_files = __cpu_to_be64(cap->nr_files);
 cap->used = __cpu_to_be64(cap->used);
 cap->avail = __cpu_to_be64(cap->avail);
 cap->flags = __cpu_to_be64(cap->flags);
}
