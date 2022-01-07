
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencomm_mini {int dummy; } ;
struct xencomm_desc {int nr_addrs; } ;


 int BUG_ON (int) ;
 int XENCOMM_MINI_ADDRS ;
 int xencomm_init (struct xencomm_desc*,void*,unsigned long) ;

__attribute__((used)) static int xencomm_create_mini(void *buffer,
 unsigned long bytes, struct xencomm_mini *xc_desc,
 struct xencomm_desc **ret)
{
 int rc = 0;
 struct xencomm_desc *desc;
 BUG_ON(((unsigned long)xc_desc) % sizeof(*xc_desc) != 0);

 desc = (void *)xc_desc;

 desc->nr_addrs = XENCOMM_MINI_ADDRS;

 rc = xencomm_init(desc, buffer, bytes);
 if (!rc)
  *ret = desc;

 return rc;
}
