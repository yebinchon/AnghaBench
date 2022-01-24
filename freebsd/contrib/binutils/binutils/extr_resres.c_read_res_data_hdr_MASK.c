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
typedef  int /*<<< orphan*/  windres_bfd ;
struct bin_res_hdr {int /*<<< orphan*/  header_size; int /*<<< orphan*/  data_size; } ;
struct TYPE_3__ {void* header_size; void* data_size; } ;
typedef  TYPE_1__ res_hdr ;
typedef  scalar_t__ rc_uint_type ;

/* Variables and functions */
 scalar_t__ BIN_RES_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,long,long) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bin_res_hdr*,scalar_t__,scalar_t__) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3 (windres_bfd *wrbfd, rc_uint_type *off, rc_uint_type omax,
		   res_hdr *reshdr)
{
  struct bin_res_hdr brh;

  if ((off[0] + BIN_RES_HDR_SIZE) > omax)
    FUNC0 ("%s: unexpected end of file %ld/%ld", filename,(long) off[0], (long) omax);

  FUNC1 (wrbfd, &brh, off[0], BIN_RES_HDR_SIZE);
  reshdr->data_size = FUNC2 (wrbfd, brh.data_size, 4);
  reshdr->header_size = FUNC2 (wrbfd, brh.header_size, 4);
  off[0] += BIN_RES_HDR_SIZE;
}