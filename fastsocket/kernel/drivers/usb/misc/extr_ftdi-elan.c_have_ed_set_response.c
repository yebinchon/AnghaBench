
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_ftdi {char* response; int expected; int ed_found; scalar_t__ recieved; int u132_lock; } ;
struct u132_target {int non_null; int repeat_number; scalar_t__ abandoning; scalar_t__ actual; } ;


 int ftdi_elan_do_callback (struct usb_ftdi*,struct u132_target*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static char *have_ed_set_response(struct usb_ftdi *ftdi,
        struct u132_target *target, u16 ed_length, int ed_number, int ed_type,
        char *b)
{
        int payload = (ed_length >> 0) & 0x07FF;
        mutex_lock(&ftdi->u132_lock);
        target->actual = 0;
        target->non_null = (ed_length >> 15) & 0x0001;
        target->repeat_number = (ed_length >> 11) & 0x000F;
        if (ed_type == 0x02) {
                if (payload == 0 || target->abandoning > 0) {
                        target->abandoning = 0;
                        mutex_unlock(&ftdi->u132_lock);
                        ftdi_elan_do_callback(ftdi, target, 4 + ftdi->response,
                                payload);
                        ftdi->recieved = 0;
                        ftdi->expected = 4;
                        ftdi->ed_found = 0;
                        return ftdi->response;
                } else {
                        ftdi->expected = 4 + payload;
                        ftdi->ed_found = 1;
                        mutex_unlock(&ftdi->u132_lock);
                        return b;
                }
        } else if (ed_type == 0x03) {
                if (payload == 0 || target->abandoning > 0) {
                        target->abandoning = 0;
                        mutex_unlock(&ftdi->u132_lock);
                        ftdi_elan_do_callback(ftdi, target, 4 + ftdi->response,
                                payload);
                        ftdi->recieved = 0;
                        ftdi->expected = 4;
                        ftdi->ed_found = 0;
                        return ftdi->response;
                } else {
                        ftdi->expected = 4 + payload;
                        ftdi->ed_found = 1;
                        mutex_unlock(&ftdi->u132_lock);
                        return b;
                }
        } else if (ed_type == 0x01) {
                target->abandoning = 0;
                mutex_unlock(&ftdi->u132_lock);
                ftdi_elan_do_callback(ftdi, target, 4 + ftdi->response,
                        payload);
                ftdi->recieved = 0;
                ftdi->expected = 4;
                ftdi->ed_found = 0;
                return ftdi->response;
        } else {
                target->abandoning = 0;
                mutex_unlock(&ftdi->u132_lock);
                ftdi_elan_do_callback(ftdi, target, 4 + ftdi->response,
                        payload);
                ftdi->recieved = 0;
                ftdi->expected = 4;
                ftdi->ed_found = 0;
                return ftdi->response;
        }
}
