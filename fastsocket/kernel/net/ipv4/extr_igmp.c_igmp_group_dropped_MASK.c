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
struct ip_mc_list {scalar_t__ multiaddr; int reporter; scalar_t__ loaded; struct in_device* interface; } ;
struct in_device {int /*<<< orphan*/  dead; } ;

/* Variables and functions */
 scalar_t__ IGMP_ALL_HOSTS ; 
 int /*<<< orphan*/  IGMP_HOST_LEAVE_MESSAGE ; 
 scalar_t__ FUNC0 (struct in_device*) ; 
 scalar_t__ FUNC1 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct in_device*,struct ip_mc_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_mc_list*) ; 
 int /*<<< orphan*/  FUNC5 (struct in_device*,struct ip_mc_list*) ; 
 int /*<<< orphan*/  FUNC6 (struct in_device*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct ip_mc_list *im)
{
	struct in_device *in_dev = im->interface;
#ifdef CONFIG_IP_MULTICAST
	int reporter;
#endif

	if (im->loaded) {
		im->loaded = 0;
		FUNC6(in_dev, im->multiaddr);
	}

#ifdef CONFIG_IP_MULTICAST
	if (im->multiaddr == IGMP_ALL_HOSTS)
		return;

	reporter = im->reporter;
	igmp_stop_timer(im);

	if (!in_dev->dead) {
		if (IGMP_V1_SEEN(in_dev))
			return;
		if (IGMP_V2_SEEN(in_dev)) {
			if (reporter)
				igmp_send_report(in_dev, im, IGMP_HOST_LEAVE_MESSAGE);
			return;
		}
		/* IGMPv3 */
		igmpv3_add_delrec(in_dev, im);

		igmp_ifc_event(in_dev);
	}
#endif
}