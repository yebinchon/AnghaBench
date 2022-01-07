
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dir_private_info {int curr_minor_hash; int curr_hash; } ;
typedef int loff_t ;


 int GFP_KERNEL ;
 struct dir_private_info* kzalloc (int,int ) ;
 int pos2maj_hash (int ) ;
 int pos2min_hash (int ) ;

__attribute__((used)) static struct dir_private_info *ext3_htree_create_dir_info(loff_t pos)
{
 struct dir_private_info *p;

 p = kzalloc(sizeof(struct dir_private_info), GFP_KERNEL);
 if (!p)
  return ((void*)0);
 p->curr_hash = pos2maj_hash(pos);
 p->curr_minor_hash = pos2min_hash(pos);
 return p;
}
