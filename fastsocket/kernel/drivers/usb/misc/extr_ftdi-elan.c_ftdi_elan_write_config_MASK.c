#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct usb_ftdi {scalar_t__ disconnected; int command_next; int command_head; int /*<<< orphan*/  u132_lock; struct u132_command* command; } ;
struct u132_command {int header; int length; int address; int width; int follows; int /*<<< orphan*/  value; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 size_t COMMAND_MASK ; 
 int COMMAND_SIZE ; 
 int ENODEV ; 
 int cPCIcfgwr ; 
 int /*<<< orphan*/  FUNC0 (struct usb_ftdi*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct usb_ftdi *ftdi, int config_offset,
        u8 width, u32 data)
{
        u8 addressofs = config_offset / 4;
      wait:if (ftdi->disconnected > 0) {
                return -ENODEV;
        } else {
                int command_size;
                FUNC2(&ftdi->u132_lock);
                command_size = ftdi->command_next - ftdi->command_head;
                if (command_size < COMMAND_SIZE) {
                        struct u132_command *command = &ftdi->command[
                                COMMAND_MASK & ftdi->command_next];
                        command->header = 0x00 | (cPCIcfgwr & 0x0F);
                        command->length = 0x04;
                        command->address = addressofs;
                        command->width = 0x00 | (width & 0x0F);
                        command->follows = 4;
                        command->value = data;
                        command->buffer = &command->value;
                        ftdi->command_next += 1;
                        FUNC0(ftdi);
                        FUNC3(&ftdi->u132_lock);
                        return 0;
                } else {
                        FUNC3(&ftdi->u132_lock);
                        FUNC1(100);
                        goto wait;
                }
        }
}