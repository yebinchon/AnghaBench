
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct hists {int lock; struct rb_root* entries_in_array; struct rb_root* entries_in; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static struct rb_root *hists__get_rotate_entries_in(struct hists *hists)
{
 struct rb_root *root;

 pthread_mutex_lock(&hists->lock);

 root = hists->entries_in;
 if (++hists->entries_in > &hists->entries_in_array[1])
  hists->entries_in = &hists->entries_in_array[0];

 pthread_mutex_unlock(&hists->lock);

 return root;
}
