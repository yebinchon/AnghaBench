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
typedef  int u16 ;
struct usb_ftdi {char* response; int expected; int ed_found; scalar_t__ recieved; int /*<<< orphan*/  u132_lock; } ;
struct u132_target {int non_null; int repeat_number; scalar_t__ abandoning; scalar_t__ actual; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_ftdi*,struct u132_target*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC3(struct usb_ftdi *ftdi,
        struct u132_target *target, u16 ed_length, int ed_number, int ed_type,
        char *b)
{
        int payload = (ed_length >> 0) & 0x07FF;
        FUNC1(&ftdi->u132_lock);
        target->actual = 0;
        target->non_null = (ed_length >> 15) & 0x0001;
        target->repeat_number = (ed_length >> 11) & 0x000F;
        if (ed_type == 0x02) {
                if (payload == 0 || target->abandoning > 0) {
                        target->abandoning = 0;
                        FUNC2(&ftdi->u132_lock);
                        FUNC0(ftdi, target, 4 + ftdi->response,
                                payload);
                        ftdi->recieved = 0;
                        ftdi->expected = 4;
                        ftdi->ed_found = 0;
                        return ftdi->response;
                } else {
                        ftdi->expected = 4 + payload;
                        ftdi->ed_found = 1;
                        FUNC2(&ftdi->u132_lock);
                        return b;
                }
        } else if (ed_type == 0x03) {
                if (payload == 0 || target->abandoning > 0) {
                        target->abandoning = 0;
                        FUNC2(&ftdi->u132_lock);
                        FUNC0(ftdi, target, 4 + ftdi->response,
                                payload);
                        ftdi->recieved = 0;
                        ftdi->expected = 4;
                        ftdi->ed_found = 0;
                        return ftdi->response;
                } else {
                        ftdi->expected = 4 + payload;
                        ftdi->ed_found = 1;
                        FUNC2(&ftdi->u132_lock);
                        return b;
                }
        } else if (ed_type == 0x01) {
                target->abandoning = 0;
                FUNC2(&ftdi->u132_lock);
                FUNC0(ftdi, target, 4 + ftdi->response,
                        payload);
                ftdi->recieved = 0;
                ftdi->expected = 4;
                ftdi->ed_found = 0;
                return ftdi->response;
        } else {
                target->abandoning = 0;
                FUNC2(&ftdi->u132_lock);
                FUNC0(ftdi, target, 4 + ftdi->response,
                        payload);
                ftdi->recieved = 0;
                ftdi->expected = 4;
                ftdi->ed_found = 0;
                return ftdi->response;
        }
}