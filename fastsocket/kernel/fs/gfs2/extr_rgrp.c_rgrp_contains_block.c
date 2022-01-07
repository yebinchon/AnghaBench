
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct gfs2_rgrpd {scalar_t__ rd_data0; scalar_t__ rd_data; } ;



__attribute__((used)) static inline int rgrp_contains_block(struct gfs2_rgrpd *rgd, u64 block)
{
 u64 first = rgd->rd_data0;
 u64 last = first + rgd->rd_data;
 return first <= block && block < last;
}
