
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ machine_is_omap_apollon () ;
 scalar_t__ machine_is_omap_h4 () ;
 scalar_t__ machine_is_omap_innovator () ;
 scalar_t__ machine_is_omap_osk () ;
 scalar_t__ machine_is_sx1 () ;

__attribute__((used)) static inline int machine_without_vbus_sense(void)
{
 return (machine_is_omap_innovator()
  || machine_is_omap_osk()
  || machine_is_omap_apollon()

  || machine_is_omap_h4()

  || machine_is_sx1()
  );
}
