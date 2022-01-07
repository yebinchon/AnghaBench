
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int __bounce_end_io_read (struct bio*,int ,int) ;
 int isa_page_pool ;

__attribute__((used)) static void bounce_end_io_read_isa(struct bio *bio, int err)
{
 __bounce_end_io_read(bio, isa_page_pool, err);
}
