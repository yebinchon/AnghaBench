
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (unsigned char*) ;

void jffs2_free_comprbuf(unsigned char *comprbuf, unsigned char *orig)
{
 if (orig != comprbuf)
  kfree(comprbuf);
}
