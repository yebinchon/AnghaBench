
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_wm87x6 {int hdmi; } ;
struct oxygen {struct xonar_wm87x6* model_data; } ;


 int wm8776_registers_init (struct oxygen*) ;
 int xonar_enable_output (struct oxygen*) ;
 int xonar_hdmi_resume (struct oxygen*,int *) ;

__attribute__((used)) static void xonar_hdav_slim_resume(struct oxygen *chip)
{
 struct xonar_wm87x6 *data = chip->model_data;

 wm8776_registers_init(chip);
 xonar_hdmi_resume(chip, &data->hdmi);
 xonar_enable_output(chip);
}
