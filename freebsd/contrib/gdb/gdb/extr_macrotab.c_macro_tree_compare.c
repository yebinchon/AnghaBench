
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_key {int start_line; int start_file; int name; } ;
typedef scalar_t__ splay_tree_key ;


 int key_compare (struct macro_key*,int ,int ,int ) ;

__attribute__((used)) static int
macro_tree_compare (splay_tree_key untyped_key1,
                    splay_tree_key untyped_key2)
{
  struct macro_key *key1 = (struct macro_key *) untyped_key1;
  struct macro_key *key2 = (struct macro_key *) untyped_key2;

  return key_compare (key1, key2->name, key2->start_file, key2->start_line);
}
