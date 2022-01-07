
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int bounce_end_io (struct bio*,int ,int) ;
 int page_pool ;

__attribute__((used)) static void bounce_end_io_write(struct bio *bio, int err)
{
 bounce_end_io(bio, page_pool, err);
}
