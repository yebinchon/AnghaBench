
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_jack {TYPE_2__* input_dev; int registered; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int WARN_ON (int ) ;

void snd_jack_set_parent(struct snd_jack *jack, struct device *parent)
{
 WARN_ON(jack->registered);

 jack->input_dev->dev.parent = parent;
}
