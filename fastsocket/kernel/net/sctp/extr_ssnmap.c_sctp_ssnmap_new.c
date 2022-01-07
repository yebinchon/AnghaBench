
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_ssnmap {int malloced; } ;
typedef int gfp_t ;
typedef int __u16 ;


 int MAX_KMALLOC_SIZE ;
 int SCTP_DBG_OBJCNT_INC (int ) ;
 scalar_t__ __get_free_pages (int ,int ) ;
 int free_pages (unsigned long,int ) ;
 int get_order (int) ;
 int kfree (struct sctp_ssnmap*) ;
 struct sctp_ssnmap* kmalloc (int,int ) ;
 int sctp_ssnmap_init (struct sctp_ssnmap*,int ,int ) ;
 int sctp_ssnmap_size (int ,int ) ;
 int ssnmap ;

struct sctp_ssnmap *sctp_ssnmap_new(__u16 in, __u16 out,
        gfp_t gfp)
{
 struct sctp_ssnmap *retval;
 int size;

 size = sctp_ssnmap_size(in, out);
 if (size <= MAX_KMALLOC_SIZE)
  retval = kmalloc(size, gfp);
 else
  retval = (struct sctp_ssnmap *)
     __get_free_pages(gfp, get_order(size));
 if (!retval)
  goto fail;

 if (!sctp_ssnmap_init(retval, in, out))
  goto fail_map;

 retval->malloced = 1;
 SCTP_DBG_OBJCNT_INC(ssnmap);

 return retval;

fail_map:
 if (size <= MAX_KMALLOC_SIZE)
  kfree(retval);
 else
  free_pages((unsigned long)retval, get_order(size));
fail:
 return ((void*)0);
}
