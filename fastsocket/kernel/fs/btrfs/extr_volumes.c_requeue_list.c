
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_pending_bios {struct bio* tail; struct bio* head; } ;
struct bio {struct bio* bi_next; } ;



__attribute__((used)) static void requeue_list(struct btrfs_pending_bios *pending_bios,
   struct bio *head, struct bio *tail)
{

 struct bio *old_head;

 old_head = pending_bios->head;
 pending_bios->head = head;
 if (pending_bios->tail)
  tail->bi_next = old_head;
 else
  pending_bios->tail = tail;
}
