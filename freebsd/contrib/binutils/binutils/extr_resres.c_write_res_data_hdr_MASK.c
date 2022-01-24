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
struct TYPE_3__ {int /*<<< orphan*/  header_size; int /*<<< orphan*/  data_size; } ;
typedef  TYPE_1__ res_hdr ;
typedef  scalar_t__ rc_uint_type ;

/* Variables and functions */
 scalar_t__ BIN_RES_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bin_res_hdr*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rc_uint_type
FUNC2 (windres_bfd *wrbfd, rc_uint_type off, res_hdr *hdr)
{
  if (wrbfd)
    {
      struct bin_res_hdr brh;
      FUNC1 (wrbfd, brh.data_size, hdr->data_size);
      FUNC1 (wrbfd, brh.header_size, hdr->header_size);
      FUNC0 (wrbfd, &brh, off, BIN_RES_HDR_SIZE);
    }
  return off + BIN_RES_HDR_SIZE;
}