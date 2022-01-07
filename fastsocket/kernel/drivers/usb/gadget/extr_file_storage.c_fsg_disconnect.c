
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct fsg_dev {int dummy; } ;


 int DBG (struct fsg_dev*,char*) ;
 int FSG_STATE_DISCONNECT ;
 struct fsg_dev* get_gadget_data (struct usb_gadget*) ;
 int raise_exception (struct fsg_dev*,int ) ;

__attribute__((used)) static void fsg_disconnect(struct usb_gadget *gadget)
{
 struct fsg_dev *fsg = get_gadget_data(gadget);

 DBG(fsg, "disconnect or port reset\n");
 raise_exception(fsg, FSG_STATE_DISCONNECT);
}
