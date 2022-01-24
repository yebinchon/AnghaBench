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
struct wlp_attr_hdr {void* length; void* type; } ;

/* Variables and functions */
 void* FUNC0 (size_t) ; 

__attribute__((used)) static inline void FUNC1(struct wlp_attr_hdr *hdr, unsigned type,
				    size_t len)
{
	hdr->type = FUNC0(type);
	hdr->length = FUNC0(len);
}