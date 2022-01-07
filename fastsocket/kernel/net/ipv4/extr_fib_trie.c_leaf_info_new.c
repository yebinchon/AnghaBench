
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct leaf_info {int plen; int falh; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct leaf_info* kmalloc (int,int ) ;

__attribute__((used)) static struct leaf_info *leaf_info_new(int plen)
{
 struct leaf_info *li = kmalloc(sizeof(struct leaf_info), GFP_KERNEL);
 if (li) {
  li->plen = plen;
  INIT_LIST_HEAD(&li->falh);
 }
 return li;
}
