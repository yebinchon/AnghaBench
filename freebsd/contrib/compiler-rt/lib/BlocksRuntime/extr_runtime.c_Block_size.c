
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Block_layout {TYPE_1__* descriptor; } ;
struct TYPE_2__ {unsigned long size; } ;



unsigned long int Block_size(void *arg) {
    return ((struct Block_layout *)arg)->descriptor->size;
}
