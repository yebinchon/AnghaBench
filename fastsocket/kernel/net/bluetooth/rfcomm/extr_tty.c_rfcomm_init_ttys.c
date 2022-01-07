
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int c_cflag; int c_lflag; } ;
struct TYPE_8__ {char* driver_name; char* name; int flags; TYPE_1__ init_termios; int subtype; int type; int minor_start; int major; int owner; } ;


 int B9600 ;
 int BT_ERR (char*) ;
 int BT_INFO (char*) ;
 int CLOCAL ;
 int CREAD ;
 int CS8 ;
 int HUPCL ;
 int ICANON ;
 int RFCOMM_TTY_MAJOR ;
 int RFCOMM_TTY_MINOR ;
 int RFCOMM_TTY_PORTS ;
 int SERIAL_TYPE_NORMAL ;
 int THIS_MODULE ;
 int TTY_DRIVER_DYNAMIC_DEV ;
 int TTY_DRIVER_REAL_RAW ;
 int TTY_DRIVER_TYPE_SERIAL ;
 TYPE_2__* alloc_tty_driver (int ) ;
 int put_tty_driver (TYPE_2__*) ;
 int rfcomm_ops ;
 TYPE_2__* rfcomm_tty_driver ;
 scalar_t__ tty_register_driver (TYPE_2__*) ;
 int tty_set_operations (TYPE_2__*,int *) ;
 TYPE_1__ tty_std_termios ;

int rfcomm_init_ttys(void)
{
 rfcomm_tty_driver = alloc_tty_driver(RFCOMM_TTY_PORTS);
 if (!rfcomm_tty_driver)
  return -1;

 rfcomm_tty_driver->owner = THIS_MODULE;
 rfcomm_tty_driver->driver_name = "rfcomm";
 rfcomm_tty_driver->name = "rfcomm";
 rfcomm_tty_driver->major = RFCOMM_TTY_MAJOR;
 rfcomm_tty_driver->minor_start = RFCOMM_TTY_MINOR;
 rfcomm_tty_driver->type = TTY_DRIVER_TYPE_SERIAL;
 rfcomm_tty_driver->subtype = SERIAL_TYPE_NORMAL;
 rfcomm_tty_driver->flags = TTY_DRIVER_REAL_RAW | TTY_DRIVER_DYNAMIC_DEV;
 rfcomm_tty_driver->init_termios = tty_std_termios;
 rfcomm_tty_driver->init_termios.c_cflag = B9600 | CS8 | CREAD | HUPCL | CLOCAL;
 rfcomm_tty_driver->init_termios.c_lflag &= ~ICANON;
 tty_set_operations(rfcomm_tty_driver, &rfcomm_ops);

 if (tty_register_driver(rfcomm_tty_driver)) {
  BT_ERR("Can't register RFCOMM TTY driver");
  put_tty_driver(rfcomm_tty_driver);
  return -1;
 }

 BT_INFO("RFCOMM TTY layer initialized");

 return 0;
}
