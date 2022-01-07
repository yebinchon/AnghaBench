
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_mode {int owner; } ;


 int module_put (int ) ;

__attribute__((used)) static void xfrm_put_mode(struct xfrm_mode *mode)
{
 module_put(mode->owner);
}
