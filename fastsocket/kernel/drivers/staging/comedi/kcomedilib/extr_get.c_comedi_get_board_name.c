
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {char const* board_name; } ;



const char *comedi_get_board_name(void *d)
{
 struct comedi_device *dev = (struct comedi_device *)d;

 return dev->board_name;
}
