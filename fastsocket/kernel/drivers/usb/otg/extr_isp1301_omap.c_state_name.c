
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct isp1301 {TYPE_1__ otg; } ;


 char const* state_string (int ) ;

__attribute__((used)) static inline const char *state_name(struct isp1301 *isp)
{
 return state_string(isp->otg.state);
}
