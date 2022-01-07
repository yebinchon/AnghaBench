
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_ftdi {int expected; char* response; scalar_t__ ed_found; scalar_t__ recieved; int u132_lock; } ;
struct u132_target {int actual; int non_null; int repeat_number; scalar_t__ abandoning; scalar_t__ active; int condition_code; } ;


 int TD_DEVNOTRESP ;
 int ftdi_elan_do_callback (struct usb_ftdi*,struct u132_target*,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static char *have_ed_get_response(struct usb_ftdi *ftdi,
        struct u132_target *target, u16 ed_length, int ed_number, int ed_type,
        char *b)
{
        mutex_lock(&ftdi->u132_lock);
        target->condition_code = TD_DEVNOTRESP;
        target->actual = (ed_length >> 0) & 0x01FF;
        target->non_null = (ed_length >> 15) & 0x0001;
        target->repeat_number = (ed_length >> 11) & 0x000F;
        mutex_unlock(&ftdi->u132_lock);
        if (target->active)
                ftdi_elan_do_callback(ftdi, target, ((void*)0), 0);
        target->abandoning = 0;
        ftdi->recieved = 0;
        ftdi->expected = 4;
        ftdi->ed_found = 0;
        return ftdi->response;
}
