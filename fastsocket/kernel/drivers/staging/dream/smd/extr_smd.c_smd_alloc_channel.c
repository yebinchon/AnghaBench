
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct smd_shared {int ch1; int ch0; } ;
struct TYPE_2__ {int id; scalar_t__* name; } ;
struct smd_channel {TYPE_1__ pdev; int ch_list; scalar_t__ n; scalar_t__* name; int update_state; int write_avail; int read_avail; int write; int read; int * recv; int * send; } ;


 int GFP_KERNEL ;
 scalar_t__ ID_SMD_CHANNELS ;
 struct smd_channel* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (scalar_t__*,char const*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int platform_device_register (TYPE_1__*) ;
 int pr_err (char*,...) ;
 int pr_info (char*,scalar_t__*,scalar_t__,struct smd_shared*) ;
 int smd_ch_closed_list ;
 int smd_creation_mutex ;
 scalar_t__ smd_is_packet (scalar_t__) ;
 int smd_packet_read ;
 int smd_packet_read_avail ;
 int smd_packet_write ;
 int smd_packet_write_avail ;
 int smd_stream_read ;
 int smd_stream_read_avail ;
 int smd_stream_write ;
 int smd_stream_write_avail ;
 struct smd_shared* smem_alloc (scalar_t__,int) ;
 int update_packet_state ;
 int update_stream_state ;

__attribute__((used)) static void smd_alloc_channel(const char *name, uint32_t cid, uint32_t type)
{
 struct smd_channel *ch;
 struct smd_shared *shared;

 shared = smem_alloc(ID_SMD_CHANNELS + cid, sizeof(*shared));
 if (!shared) {
  pr_err("smd_alloc_channel() cid %d does not exist\n", cid);
  return;
 }

 ch = kzalloc(sizeof(struct smd_channel), GFP_KERNEL);
 if (ch == 0) {
  pr_err("smd_alloc_channel() out of memory\n");
  return;
 }

 ch->send = &shared->ch0;
 ch->recv = &shared->ch1;
 ch->n = cid;

 if (smd_is_packet(cid)) {
  ch->read = smd_packet_read;
  ch->write = smd_packet_write;
  ch->read_avail = smd_packet_read_avail;
  ch->write_avail = smd_packet_write_avail;
  ch->update_state = update_packet_state;
 } else {
  ch->read = smd_stream_read;
  ch->write = smd_stream_write;
  ch->read_avail = smd_stream_read_avail;
  ch->write_avail = smd_stream_write_avail;
  ch->update_state = update_stream_state;
 }

 memcpy(ch->name, "SMD_", 4);
 memcpy(ch->name + 4, name, 20);
 ch->name[23] = 0;
 ch->pdev.name = ch->name;
 ch->pdev.id = -1;

 pr_info("smd_alloc_channel() '%s' cid=%d, shared=%p\n",
  ch->name, ch->n, shared);

 mutex_lock(&smd_creation_mutex);
 list_add(&ch->ch_list, &smd_ch_closed_list);
 mutex_unlock(&smd_creation_mutex);

 platform_device_register(&ch->pdev);
}
