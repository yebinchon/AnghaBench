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
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
typedef  int sa_family_t ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 

__attribute__((used)) static inline int FUNC0(sa_family_t family)
{
	switch (family) {
	case AF_INET:
		return sizeof(struct sockaddr_in);
#if defined(CONFIG_IPV6) || defined(CONFIG_IPV6_MODULE)
	case AF_INET6:
		return sizeof(struct sockaddr_in6);
#endif
	}
	return 0;
}