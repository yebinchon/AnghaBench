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
struct smb_vol {int /*<<< orphan*/  srcaddr; } ;
struct TCP_Server_Info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct TCP_Server_Info*,struct sockaddr*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct TCP_Server_Info*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct TCP_Server_Info*,struct smb_vol*) ; 

__attribute__((used)) static int FUNC3(struct TCP_Server_Info *server, struct sockaddr *addr,
			 struct smb_vol *vol)
{
	if (!FUNC0(server, addr,
			   (struct sockaddr *)&vol->srcaddr))
		return 0;

	if (!FUNC1(server, addr))
		return 0;

	if (!FUNC2(server, vol))
		return 0;

	return 1;
}