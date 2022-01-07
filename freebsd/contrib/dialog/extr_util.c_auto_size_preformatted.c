
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_2__ {int aspect_ratio; } ;


 int SCOLS ;
 int SLINES ;
 TYPE_1__ dialog_state ;
 int justify_text (int *,char const*,int,int,int*,int*) ;

__attribute__((used)) static void
auto_size_preformatted(const char *prompt, int *height, int *width)
{
    int high = 0, wide = 0;
    float car;
    float diff;
    int max_y = SLINES - 1;
    int max_x = SCOLS - 2;
    int max_width = max_x;
    int ar = dialog_state.aspect_ratio;


    justify_text((WINDOW *) 0, prompt, max_y, max_x, &high, &wide);
    car = (float) (wide / high);





    if (car > ar) {
 diff = car / (float) ar;
 max_x = (int) ((float) wide / diff + 4);
 justify_text((WINDOW *) 0, prompt, max_y, max_x, &high, &wide);
 car = (float) wide / (float) high;
    }






    while (car < ar && max_x < max_width) {
 max_x += 4;
 justify_text((WINDOW *) 0, prompt, max_y, max_x, &high, &wide);
 car = (float) (wide / high);
    }

    *height = high;
    *width = wide;
}
