
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct bio {int dummy; } ;



__attribute__((used)) static int must_snapshot_stable_pages(struct request_queue *q, struct bio *bio)
{
 return 0;
}
