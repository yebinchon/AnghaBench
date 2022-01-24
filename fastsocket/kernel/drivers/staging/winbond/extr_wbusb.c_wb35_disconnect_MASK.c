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
struct wbsoft_priv {int dummy; } ;
struct usb_interface {int dummy; } ;
struct ieee80211_hw {struct wbsoft_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*) ; 
 struct ieee80211_hw* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct wbsoft_priv*) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *intf)
{
	struct ieee80211_hw *hw = FUNC4(intf);
	struct wbsoft_priv *priv = hw->priv;

	FUNC7(priv);

	FUNC1(hw);
	FUNC2(hw);
	FUNC0(hw);

	FUNC6(intf, NULL);
	FUNC5(FUNC3(intf));
}