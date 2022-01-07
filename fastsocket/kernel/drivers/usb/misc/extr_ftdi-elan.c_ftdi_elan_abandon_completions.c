
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ftdi {scalar_t__ respond_next; scalar_t__ respond_head; int u132_lock; struct u132_respond* respond; } ;
struct u132_respond {int wait_completion; scalar_t__* value; int * result; } ;


 int ESHUTDOWN ;
 size_t RESPOND_MASK ;
 int complete (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ftdi_elan_abandon_completions(struct usb_ftdi *ftdi)
{
        mutex_lock(&ftdi->u132_lock);
        while (ftdi->respond_next > ftdi->respond_head) {
                struct u132_respond *respond = &ftdi->respond[RESPOND_MASK &
                        ftdi->respond_head++];
                *respond->result = -ESHUTDOWN;
                *respond->value = 0;
                complete(&respond->wait_completion);
        } mutex_unlock(&ftdi->u132_lock);
}
