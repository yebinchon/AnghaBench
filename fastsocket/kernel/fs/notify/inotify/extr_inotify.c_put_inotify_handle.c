
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotify_handle {int idr; int count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int idr_destroy (int *) ;
 int kfree (struct inotify_handle*) ;

__attribute__((used)) static inline void put_inotify_handle(struct inotify_handle *ih)
{
 if (atomic_dec_and_test(&ih->count)) {
  idr_destroy(&ih->idr);
  kfree(ih);
 }
}
