
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int spa_max_ashift; } ;


 scalar_t__ SPA_MAXBLOCKSIZE ;
 int SPA_MINBLOCKSHIFT ;
 int SPA_OLD_MAXBLOCKSHIFT ;
 scalar_t__ spa_maxblocksize (TYPE_1__*) ;
 int ztest_random (int) ;
 TYPE_1__* ztest_spa ;

__attribute__((used)) static int
ztest_random_blocksize(void)
{
 uint64_t block_shift;




 int maxbs = SPA_OLD_MAXBLOCKSHIFT;
 if (spa_maxblocksize(ztest_spa) == SPA_MAXBLOCKSIZE)
  maxbs = 20;
 block_shift = ztest_random(maxbs - ztest_spa->spa_max_ashift + 1);
 return (1 << (SPA_MINBLOCKSHIFT + block_shift));
}
