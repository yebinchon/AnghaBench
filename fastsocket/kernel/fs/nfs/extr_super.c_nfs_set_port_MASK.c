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
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int NFS_UNSPEC_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr*,int) ; 

__attribute__((used)) static void FUNC1(struct sockaddr *sap, int *port,
				 const unsigned short default_port)
{
	if (*port == NFS_UNSPEC_PORT)
		*port = default_port;

	FUNC0(sap, *port);
}