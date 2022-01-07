
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Block_layout {int flags; } ;


 int BLOCK_IS_GC ;
 int _Block_release (struct Block_layout*) ;

__attribute__((used)) static void _Block_destroy(const void *arg) {
    struct Block_layout *aBlock;
    if (!arg) return;
    aBlock = (struct Block_layout *)arg;
    if (aBlock->flags & BLOCK_IS_GC) {

        return;
    }
    _Block_release(aBlock);
}
