
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int od_name; scalar_t__ od_gen; scalar_t__ od_blocksize; int od_type; void* od_crgen; void* od_crdnodesize; void* od_crblocksize; int od_crtype; scalar_t__ od_object; int od_dir; } ;
typedef TYPE_1__ ztest_od_t ;
typedef void* uint64_t ;
typedef int int64_t ;
typedef int dmu_object_type_t ;


 int DMU_OT_NONE ;
 int ZTEST_DIROBJ ;
 int snprintf (int ,int,char*,char*,int ,void*) ;
 void* ztest_random_blocksize () ;
 void* ztest_random_dnodesize () ;

__attribute__((used)) static void
ztest_od_init(ztest_od_t *od, uint64_t id, char *tag, uint64_t index,
    dmu_object_type_t type, uint64_t blocksize, uint64_t dnodesize,
    uint64_t gen)
{
 od->od_dir = ZTEST_DIROBJ;
 od->od_object = 0;

 od->od_crtype = type;
 od->od_crblocksize = blocksize ? blocksize : ztest_random_blocksize();
 od->od_crdnodesize = dnodesize ? dnodesize : ztest_random_dnodesize();
 od->od_crgen = gen;

 od->od_type = DMU_OT_NONE;
 od->od_blocksize = 0;
 od->od_gen = 0;

 (void) snprintf(od->od_name, sizeof (od->od_name), "%s(%lld)[%llu]",
     tag, (int64_t)id, index);
}
