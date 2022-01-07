
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int (* get64 ) (int const*) ;} ;


 TYPE_1__* order ;
 int stub1 (int const*) ;

__attribute__((used)) static inline uint64_t get64(const uint64_t *p) { return order->get64(p); }
