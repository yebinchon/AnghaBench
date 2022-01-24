#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct r8180_priv {TYPE_1__* ieee80211; scalar_t__ bLeisurePs; } ;
struct TYPE_2__ {scalar_t__ ps; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_PS_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct r8180_priv*,scalar_t__) ; 

void FUNC1(struct r8180_priv *priv)
{
	if (priv->bLeisurePs) {
		if (priv->ieee80211->ps != IEEE80211_PS_DISABLED)
			FUNC0(priv, IEEE80211_PS_DISABLED);
	}
}