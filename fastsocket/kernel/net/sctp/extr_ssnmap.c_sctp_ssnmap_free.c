
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
struct TYPE_3__ {int len; } ;
struct sctp_ssnmap {TYPE_2__ out; TYPE_1__ in; scalar_t__ malloced; } ;


 int MAX_KMALLOC_SIZE ;
 int SCTP_DBG_OBJCNT_DEC (int ) ;
 int free_pages (unsigned long,int ) ;
 int get_order (int) ;
 int kfree (struct sctp_ssnmap*) ;
 int sctp_ssnmap_size (int ,int ) ;
 int ssnmap ;

void sctp_ssnmap_free(struct sctp_ssnmap *map)
{
 if (map && map->malloced) {
  int size;

  size = sctp_ssnmap_size(map->in.len, map->out.len);
  if (size <= MAX_KMALLOC_SIZE)
   kfree(map);
  else
   free_pages((unsigned long)map, get_order(size));
  SCTP_DBG_OBJCNT_DEC(ssnmap);
 }
}
