
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int private_list; int private_lock; struct address_space* assoc_mapping; } ;


 int fsync_buffers_list (int *,int *) ;
 scalar_t__ list_empty (int *) ;

int sync_mapping_buffers(struct address_space *mapping)
{
 struct address_space *buffer_mapping = mapping->assoc_mapping;

 if (buffer_mapping == ((void*)0) || list_empty(&mapping->private_list))
  return 0;

 return fsync_buffers_list(&buffer_mapping->private_lock,
     &mapping->private_list);
}
