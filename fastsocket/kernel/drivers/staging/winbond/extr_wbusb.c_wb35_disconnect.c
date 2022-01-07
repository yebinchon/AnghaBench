
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsoft_priv {int dummy; } ;
struct usb_interface {int dummy; } ;
struct ieee80211_hw {struct wbsoft_priv* priv; } ;


 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_stop_queues (struct ieee80211_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 struct ieee80211_hw* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int wb35_hw_halt (struct wbsoft_priv*) ;

__attribute__((used)) static void wb35_disconnect(struct usb_interface *intf)
{
 struct ieee80211_hw *hw = usb_get_intfdata(intf);
 struct wbsoft_priv *priv = hw->priv;

 wb35_hw_halt(priv);

 ieee80211_stop_queues(hw);
 ieee80211_unregister_hw(hw);
 ieee80211_free_hw(hw);

 usb_set_intfdata(intf, ((void*)0));
 usb_put_dev(interface_to_usbdev(intf));
}
