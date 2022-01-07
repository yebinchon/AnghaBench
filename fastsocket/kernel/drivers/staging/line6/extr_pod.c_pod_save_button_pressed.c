
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_pod {int atomic_flags; scalar_t__ dirty; } ;


 int POD_SAVE_PRESSED ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void pod_save_button_pressed(struct usb_line6_pod *pod, int type, int index)
{
 pod->dirty = 0;
 set_bit(POD_SAVE_PRESSED, &pod->atomic_flags);
}
