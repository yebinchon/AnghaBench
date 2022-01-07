
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rmm_block_t {scalar_t__ next; } ;
typedef struct rmm_block_t rmm_block_t ;
struct TYPE_3__ {scalar_t__ base; } ;
typedef TYPE_1__ apr_rmm_t ;
typedef scalar_t__ apr_rmm_off_t ;



__attribute__((used)) static apr_rmm_off_t find_block_by_offset(apr_rmm_t *rmm, apr_rmm_off_t next,
                                          apr_rmm_off_t find, int includes)
{
    apr_rmm_off_t prev = 0;

    while (next) {
        struct rmm_block_t *blk = (rmm_block_t*)((char*)rmm->base + next);

        if (find == next)
            return next;


        if (find < next)
            return includes ? prev : 0;

        prev = next;
        next = blk->next;
    }
    return includes ? prev : 0;
}
