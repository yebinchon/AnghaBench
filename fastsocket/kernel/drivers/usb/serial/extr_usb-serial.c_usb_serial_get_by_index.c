
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int kref; int disc_mutex; scalar_t__ disconnected; } ;


 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct usb_serial** serial_table ;
 int table_lock ;

struct usb_serial *usb_serial_get_by_index(unsigned index)
{
 struct usb_serial *serial;

 mutex_lock(&table_lock);
 serial = serial_table[index];

 if (serial) {
  mutex_lock(&serial->disc_mutex);
  if (serial->disconnected) {
   mutex_unlock(&serial->disc_mutex);
   serial = ((void*)0);
  } else {
   kref_get(&serial->kref);
  }
 }
 mutex_unlock(&table_lock);
 return serial;
}
