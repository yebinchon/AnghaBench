
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct smd_alloc_elm {int ctype; int cid; int * name; int ref_count; } ;


 int ID_CH_ALLOC_TBL ;
 int smd_alloc_channel (int *,int ,int ) ;
 int* smd_ch_allocated ;
 struct smd_alloc_elm* smem_find (int ,int) ;

__attribute__((used)) static void smd_channel_probe_worker(struct work_struct *work)
{
 struct smd_alloc_elm *shared;
 unsigned n;

 shared = smem_find(ID_CH_ALLOC_TBL, sizeof(*shared) * 64);

 for (n = 0; n < 64; n++) {
  if (smd_ch_allocated[n])
   continue;
  if (!shared[n].ref_count)
   continue;
  if (!shared[n].name[0])
   continue;
  smd_alloc_channel(shared[n].name,
      shared[n].cid,
      shared[n].ctype);
  smd_ch_allocated[n] = 1;
 }
}
