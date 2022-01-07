
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioctl_trans {struct ioctl_trans* next; int cmd; } ;


 unsigned long ioctl32_hash (int ) ;
 struct ioctl_trans** ioctl32_hash_table ;

__attribute__((used)) static void ioctl32_insert_translation(struct ioctl_trans *trans)
{
 unsigned long hash;
 struct ioctl_trans *t;

 hash = ioctl32_hash (trans->cmd);
 if (!ioctl32_hash_table[hash])
  ioctl32_hash_table[hash] = trans;
 else {
  t = ioctl32_hash_table[hash];
  while (t->next)
   t = t->next;
  trans->next = ((void*)0);
  t->next = trans;
 }
}
