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
struct svc_serv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct svc_serv*,char*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nlm_tcpport ; 
 int /*<<< orphan*/  nlm_udpport ; 

__attribute__((used)) static int FUNC1(struct svc_serv *serv, const int family)
{
	int err;

	err = FUNC0(serv, "udp", family, nlm_udpport);
	if (err < 0)
		return err;

	return FUNC0(serv, "tcp", family, nlm_tcpport);
}