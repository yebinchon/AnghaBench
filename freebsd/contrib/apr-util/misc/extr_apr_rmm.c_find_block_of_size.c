
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rmm_block_t {scalar_t__ size; scalar_t__ next; scalar_t__ prev; } ;
typedef struct rmm_block_t rmm_block_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_5__ {TYPE_1__* base; } ;
typedef TYPE_2__ apr_rmm_t ;
typedef scalar_t__ apr_rmm_off_t ;
struct TYPE_4__ {scalar_t__ firstfree; } ;


 scalar_t__ RMM_BLOCK_SIZE ;

__attribute__((used)) static apr_rmm_off_t find_block_of_size(apr_rmm_t *rmm, apr_size_t size)
{
    apr_rmm_off_t next = rmm->base->firstfree;
    apr_rmm_off_t best = 0;
    apr_rmm_off_t bestsize = 0;

    while (next) {
        struct rmm_block_t *blk = (rmm_block_t*)((char*)rmm->base + next);

        if (blk->size == size)
            return next;

        if (blk->size >= size) {




            if (!bestsize || (blk->size < bestsize)) {
                bestsize = blk->size;
                best = next;
            }
        }

        next = blk->next;
    }

    if (bestsize > RMM_BLOCK_SIZE + size) {
        struct rmm_block_t *blk = (rmm_block_t*)((char*)rmm->base + best);
        struct rmm_block_t *new = (rmm_block_t*)((char*)rmm->base + best + size);

        new->size = blk->size - size;
        new->next = blk->next;
        new->prev = best;

        blk->size = size;
        blk->next = best + size;

        if (new->next) {
            blk = (rmm_block_t*)((char*)rmm->base + new->next);
            blk->prev = best + size;
        }
    }

    return best;
}
