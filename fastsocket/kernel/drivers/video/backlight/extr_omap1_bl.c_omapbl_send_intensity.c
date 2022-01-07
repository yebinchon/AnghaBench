
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OMAP_PWL_ENABLE ;
 int omap_writeb (int,int ) ;

__attribute__((used)) static void inline omapbl_send_intensity(int intensity)
{
 omap_writeb(intensity, OMAP_PWL_ENABLE);
}
