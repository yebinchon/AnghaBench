
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int ro_media; scalar_t__ no_chk_data_crc; } ;


 int dbg_dump_stack () ;
 int ubifs_warn (char*,int) ;

void ubifs_ro_mode(struct ubifs_info *c, int err)
{
 if (!c->ro_media) {
  c->ro_media = 1;
  c->no_chk_data_crc = 0;
  ubifs_warn("switched to read-only mode, error %d", err);
  dbg_dump_stack();
 }
}
