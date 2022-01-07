
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int mutex; int work; } ;
struct TYPE_6__ {int mutex; int work; } ;
struct TYPE_5__ {int mutex; int work; } ;
struct gpio_runtime {TYPE_3__ line_out_notify; TYPE_2__ line_in_notify; TYPE_1__ headphone_notify; scalar_t__ implementation_private; } ;
struct TYPE_8__ {int get_master; int set_master; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int amp_mute_gpio ;
 int amp_mute_gpio_activestate ;
 int ftr_gpio_all_amps_off (struct gpio_runtime*) ;
 int ftr_gpio_get_master ;
 int ftr_gpio_set_master ;
 int ftr_handle_notify ;
 scalar_t__ get_gpio (char*,char*,int *,int *) ;
 int get_irq (scalar_t__,int *) ;
 int gpio_enable_dual_edge (int ) ;
 int headphone_detect_gpio ;
 int headphone_detect_gpio_activestate ;
 int headphone_detect_irq ;
 scalar_t__ headphone_detect_node ;
 int headphone_mute_gpio ;
 int headphone_mute_gpio_activestate ;
 int hw_reset_gpio ;
 int hw_reset_gpio_activestate ;
 int linein_detect_gpio ;
 int linein_detect_gpio_activestate ;
 int linein_detect_irq ;
 scalar_t__ linein_detect_node ;
 int lineout_detect_gpio ;
 int lineout_detect_gpio_activestate ;
 int lineout_detect_irq ;
 scalar_t__ lineout_detect_node ;
 int lineout_mute_gpio ;
 int lineout_mute_gpio_activestate ;
 int master_mute_gpio ;
 int master_mute_gpio_activestate ;
 TYPE_4__ methods ;
 int mutex_init (int *) ;

__attribute__((used)) static void ftr_gpio_init(struct gpio_runtime *rt)
{
 get_gpio("headphone-mute", ((void*)0),
   &headphone_mute_gpio,
   &headphone_mute_gpio_activestate);
 get_gpio("amp-mute", ((void*)0),
   &amp_mute_gpio,
   &amp_mute_gpio_activestate);
 get_gpio("lineout-mute", ((void*)0),
   &lineout_mute_gpio,
   &lineout_mute_gpio_activestate);
 get_gpio("hw-reset", "audio-hw-reset",
   &hw_reset_gpio,
   &hw_reset_gpio_activestate);
 if (get_gpio("master-mute", ((void*)0),
       &master_mute_gpio,
       &master_mute_gpio_activestate)) {
  methods.set_master = ftr_gpio_set_master;
  methods.get_master = ftr_gpio_get_master;
 }

 headphone_detect_node = get_gpio("headphone-detect", ((void*)0),
      &headphone_detect_gpio,
      &headphone_detect_gpio_activestate);


 lineout_detect_node = get_gpio("lineout-detect", "line-output-detect",
           &lineout_detect_gpio,
           &lineout_detect_gpio_activestate);
 linein_detect_node = get_gpio("linein-detect", "line-input-detect",
          &linein_detect_gpio,
          &linein_detect_gpio_activestate);

 gpio_enable_dual_edge(headphone_detect_gpio);
 gpio_enable_dual_edge(lineout_detect_gpio);
 gpio_enable_dual_edge(linein_detect_gpio);

 get_irq(headphone_detect_node, &headphone_detect_irq);
 get_irq(lineout_detect_node, &lineout_detect_irq);
 get_irq(linein_detect_node, &linein_detect_irq);

 ftr_gpio_all_amps_off(rt);
 rt->implementation_private = 0;
 INIT_DELAYED_WORK(&rt->headphone_notify.work, ftr_handle_notify);
 INIT_DELAYED_WORK(&rt->line_in_notify.work, ftr_handle_notify);
 INIT_DELAYED_WORK(&rt->line_out_notify.work, ftr_handle_notify);
 mutex_init(&rt->headphone_notify.mutex);
 mutex_init(&rt->line_in_notify.mutex);
 mutex_init(&rt->line_out_notify.mutex);
}
