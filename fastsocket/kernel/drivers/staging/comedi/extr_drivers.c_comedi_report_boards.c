
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_driver {char const* const driver_name; char** board_name; unsigned int num_names; int offset; } ;


 int printk (char*,char const* const) ;

void comedi_report_boards(struct comedi_driver *driv)
{
 unsigned int i;
 const char *const *name_ptr;

 printk("comedi: valid board names for %s driver are:\n",
        driv->driver_name);

 name_ptr = driv->board_name;
 for (i = 0; i < driv->num_names; i++) {
  printk(" %s\n", *name_ptr);
  name_ptr = (const char **)((char *)name_ptr + driv->offset);
 }

 if (driv->num_names == 0)
  printk(" %s\n", driv->driver_name);
}
