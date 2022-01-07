
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vaddr; } ;
typedef TYPE_1__ vaddr_t ;


 unsigned int readb (scalar_t__) ;

__attribute__((used)) static inline unsigned int mga_readb(vaddr_t va, unsigned int offs) {
 return readb(va.vaddr + offs);
}
