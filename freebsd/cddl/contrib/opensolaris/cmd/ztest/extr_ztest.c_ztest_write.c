
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ztest_ds_t ;
typedef void* uint64_t ;
struct TYPE_6__ {int lr_blkptr; scalar_t__ lr_blkoff; void* lr_length; void* lr_offset; void* lr_foid; } ;
typedef TYPE_1__ lr_write_t ;


 int BP_ZERO (int *) ;
 int B_FALSE ;
 int bcopy (void*,TYPE_1__*,void*) ;
 TYPE_1__* ztest_lr_alloc (void*,int *) ;
 int ztest_lr_free (TYPE_1__*,void*,int *) ;
 int ztest_replay_write (int *,TYPE_1__*,int ) ;

__attribute__((used)) static int
ztest_write(ztest_ds_t *zd, uint64_t object, uint64_t offset, uint64_t size,
    void *data)
{
 lr_write_t *lr;
 int error;

 lr = ztest_lr_alloc(sizeof (*lr) + size, ((void*)0));

 lr->lr_foid = object;
 lr->lr_offset = offset;
 lr->lr_length = size;
 lr->lr_blkoff = 0;
 BP_ZERO(&lr->lr_blkptr);

 bcopy(data, lr + 1, size);

 error = ztest_replay_write(zd, lr, B_FALSE);

 ztest_lr_free(lr, sizeof (*lr) + size, ((void*)0));

 return (error);
}
