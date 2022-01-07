
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_map_data {struct bio_map_data* sgvecs; struct bio_map_data* iovecs; } ;


 int kfree (struct bio_map_data*) ;

__attribute__((used)) static void bio_free_map_data(struct bio_map_data *bmd)
{
 kfree(bmd->iovecs);
 kfree(bmd->sgvecs);
 kfree(bmd);
}
