
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct net_device {int name; scalar_t__ ieee80211_ptr; scalar_t__ wireless_handlers; } ;
struct TYPE_6__ {int updated; scalar_t__ noise; scalar_t__ level; int qual; } ;
struct TYPE_5__ {int beacon; } ;
struct TYPE_4__ {int misc; int retries; int fragment; int code; int nwid; } ;
struct iw_statistics {TYPE_3__ qual; TYPE_2__ miss; TYPE_1__ discard; int status; } ;
typedef scalar_t__ __s32 ;


 int IW_QUAL_ALL_UPDATED ;
 int IW_QUAL_DBM ;
 int IW_QUAL_LEVEL_UPDATED ;
 int IW_QUAL_NOISE_UPDATED ;
 int IW_QUAL_QUAL_UPDATED ;
 struct iw_statistics* get_wireless_stats (struct net_device*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,char,scalar_t__,char,scalar_t__,char,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void wireless_seq_printf_stats(struct seq_file *seq,
          struct net_device *dev)
{

 struct iw_statistics *stats = get_wireless_stats(dev);
 static struct iw_statistics nullstats = {};


 if (!stats) {
 }

 if (stats) {
  seq_printf(seq, "%6s: %04x  %3d%c  %3d%c  %3d%c  %6d %6d %6d "
    "%6d %6d   %6d\n",
      dev->name, stats->status, stats->qual.qual,
      stats->qual.updated & IW_QUAL_QUAL_UPDATED
      ? '.' : ' ',
      ((__s32) stats->qual.level) -
      ((stats->qual.updated & IW_QUAL_DBM) ? 0x100 : 0),
      stats->qual.updated & IW_QUAL_LEVEL_UPDATED
      ? '.' : ' ',
      ((__s32) stats->qual.noise) -
      ((stats->qual.updated & IW_QUAL_DBM) ? 0x100 : 0),
      stats->qual.updated & IW_QUAL_NOISE_UPDATED
      ? '.' : ' ',
      stats->discard.nwid, stats->discard.code,
      stats->discard.fragment, stats->discard.retries,
      stats->discard.misc, stats->miss.beacon);

  if (stats != &nullstats)
   stats->qual.updated &= ~IW_QUAL_ALL_UPDATED;
 }
}
