
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct usb_ftdi {scalar_t__ disconnected; scalar_t__ initialized; int command_next; int command_head; int u132_lock; struct u132_command* command; struct u132_target* target; } ;
struct u132_target {int abandoning; int active; } ;
struct u132_command {int header; int length; int address; int width; scalar_t__ value; scalar_t__* buffer; scalar_t__ follows; } ;


 size_t COMMAND_MASK ;
 int COMMAND_SIZE ;
 int ENODEV ;
 int ftdi_elan_kick_command_queue (struct usb_ftdi*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ftdi_elan_edset_flush(struct usb_ftdi *ftdi, u8 ed_number,
        void *endp)
{
        u8 ed = ed_number - 1;
        if (ftdi->disconnected > 0) {
                return -ENODEV;
        } else if (ftdi->initialized == 0) {
                return -ENODEV;
        } else {
                struct u132_target *target = &ftdi->target[ed];
                mutex_lock(&ftdi->u132_lock);
                if (target->abandoning > 0) {
                        mutex_unlock(&ftdi->u132_lock);
                        return 0;
                } else {
                        target->abandoning = 1;
                      wait_1:if (target->active == 1) {
                                int command_size = ftdi->command_next -
                                        ftdi->command_head;
                                if (command_size < COMMAND_SIZE) {
                                        struct u132_command *command =
                                                &ftdi->command[COMMAND_MASK &
                                                ftdi->command_next];
                                        command->header = 0x80 | (ed << 5) |
                                                0x4;
                                        command->length = 0x00;
                                        command->address = 0x00;
                                        command->width = 0x00;
                                        command->follows = 0;
                                        command->value = 0;
                                        command->buffer = &command->value;
                                        ftdi->command_next += 1;
                                        ftdi_elan_kick_command_queue(ftdi);
                                } else {
                                        mutex_unlock(&ftdi->u132_lock);
                                        msleep(100);
                                        mutex_lock(&ftdi->u132_lock);
                                        goto wait_1;
                                }
                        }
                        mutex_unlock(&ftdi->u132_lock);
                        return 0;
                }
        }
}
