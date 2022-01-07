
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct u132 {int dummy; } ;
struct TYPE_2__ {int state; } ;


 int HC_STATE_HALT ;
 TYPE_1__* u132_to_hcd (struct u132*) ;

__attribute__((used)) static inline void u132_disable(struct u132 *u132)
{
 u132_to_hcd(u132)->state = HC_STATE_HALT;
}
