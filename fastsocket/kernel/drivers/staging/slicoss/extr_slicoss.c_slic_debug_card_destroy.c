
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sliccard {int card_size; int * debugfs_dir; int * debugfs_cardinfo; struct adapter** adapter; } ;
struct adapter {int dummy; } ;


 int debugfs_remove (int *) ;
 int slic_debug_adapter_destroy (struct adapter*) ;

__attribute__((used)) static void slic_debug_card_destroy(struct sliccard *card)
{
 int i;

 for (i = 0; i < card->card_size; i++) {
  struct adapter *adapter;

  adapter = card->adapter[i];
  if (adapter)
   slic_debug_adapter_destroy(adapter);
 }
 if (card->debugfs_cardinfo) {
  debugfs_remove(card->debugfs_cardinfo);
  card->debugfs_cardinfo = ((void*)0);
 }
 if (card->debugfs_dir) {
  debugfs_remove(card->debugfs_dir);
  card->debugfs_dir = ((void*)0);
 }
}
