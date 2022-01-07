
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* prefix_cmd ) (int,unsigned char) ;} ;


 TYPE_1__** midi_devs ;
 int stub1 (int,unsigned char) ;

__attribute__((used)) static int
prefix_cmd(int midi_dev, unsigned char status)
{
 if ((char *) midi_devs[midi_dev]->prefix_cmd == ((void*)0))
  return 1;

 return midi_devs[midi_dev]->prefix_cmd(midi_dev, status);
}
