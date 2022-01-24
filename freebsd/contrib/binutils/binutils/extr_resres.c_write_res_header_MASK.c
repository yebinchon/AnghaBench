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
struct TYPE_3__ {int data_size; int header_size; } ;
typedef  TYPE_1__ res_hdr ;
typedef  int rc_uint_type ;
typedef  int /*<<< orphan*/  rc_res_res_info ;
typedef  int /*<<< orphan*/  rc_res_id ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static rc_uint_type
FUNC4 (windres_bfd *wrbfd, rc_uint_type off, rc_uint_type datasize,
		  const rc_res_id *type, const rc_res_id *name,
		  const rc_res_res_info *resinfo)
{
  res_hdr reshdr;
  reshdr.data_size = datasize;
  reshdr.header_size = 24 + FUNC0 (type) + FUNC0 (name);

  reshdr.header_size = (reshdr.header_size + 3) & ~3;

  off = (off + 3) & ~3;

  off = FUNC1 (wrbfd, off, &reshdr);
  off = FUNC2 (wrbfd, off, type);
  off = FUNC2 (wrbfd, off, name);

  off = (off + 3) & ~3;

  off = FUNC3 (wrbfd, off, resinfo);
  off = (off + 3) & ~3;
  return off;
}