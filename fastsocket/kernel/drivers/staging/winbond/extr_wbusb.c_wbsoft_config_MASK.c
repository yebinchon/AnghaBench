#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct wbsoft_priv {int /*<<< orphan*/  sHwData; } ;
struct ieee80211_hw {struct wbsoft_priv* priv; } ;
struct TYPE_3__ {int band; int ChanNo; } ;
typedef  TYPE_1__ ChanInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *dev, u32 changed)
{
	struct wbsoft_priv *priv = dev->priv;
	ChanInfo ch;

	FUNC6("wbsoft_config called\n");

	/* Should use channel_num, or something, as that is already pre-translated */
	ch.band = 1;
	ch.ChanNo = 1;

	FUNC4(&priv->sHwData, ch);
	FUNC1(&priv->sHwData, 1);
	FUNC3(&priv->sHwData, 1);
	FUNC2(&priv->sHwData, 1);
	FUNC0(&priv->sHwData, 1);
	FUNC5(&priv->sHwData, 0);

	return 0;
}