
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_name {char* data; int sync_create_entry; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct pohmelfs_name* kzalloc (int,int ) ;

__attribute__((used)) static struct pohmelfs_name *pohmelfs_name_alloc(unsigned int len)
{
 struct pohmelfs_name *n;

 n = kzalloc(sizeof(struct pohmelfs_name) + len, GFP_KERNEL);
 if (!n)
  return ((void*)0);

 INIT_LIST_HEAD(&n->sync_create_entry);

 n->data = (char *)(n+1);

 return n;
}
