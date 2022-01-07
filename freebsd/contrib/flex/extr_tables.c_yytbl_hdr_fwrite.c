
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yytbl_writer {int th_ssize_pos; int out; } ;
struct yytbl_hdr {scalar_t__ th_hsize; int th_name; int th_version; int th_flags; scalar_t__ th_ssize; scalar_t__ th_magic; } ;


 int _ (char*) ;
 scalar_t__ fgetpos (int ,int *) ;
 int flex_die (int ) ;
 int strlen (int ) ;
 scalar_t__ yytbl_write16 (struct yytbl_writer*,int ) ;
 scalar_t__ yytbl_write32 (struct yytbl_writer*,scalar_t__) ;
 int yytbl_write_pad64 (struct yytbl_writer*) ;
 int yytbl_writen (struct yytbl_writer*,int ,int) ;

int yytbl_hdr_fwrite (struct yytbl_writer *wr, const struct yytbl_hdr *th)
{
 int sz, rv;
 int bwritten = 0;

 if (yytbl_write32 (wr, th->th_magic) < 0
     || yytbl_write32 (wr, th->th_hsize) < 0)
  flex_die (_("th_magic|th_hsize write32 failed"));
 bwritten += 8;

 if (fgetpos (wr->out, &(wr->th_ssize_pos)) != 0)
  flex_die (_("fgetpos failed"));

 if (yytbl_write32 (wr, th->th_ssize) < 0
     || yytbl_write16 (wr, th->th_flags) < 0)
  flex_die (_("th_ssize|th_flags write failed"));
 bwritten += 6;

 sz = strlen (th->th_version) + 1;
 if ((rv = yytbl_writen (wr, th->th_version, sz)) != sz)
  flex_die (_("th_version writen failed"));
 bwritten += rv;

 sz = strlen (th->th_name) + 1;
 if ((rv = yytbl_writen (wr, th->th_name, sz)) != sz)
  flex_die (_("th_name writen failed"));
 bwritten += rv;


 if ((rv = yytbl_write_pad64 (wr)) < 0)
  flex_die (_("pad64 failed"));
 bwritten += rv;


 if (bwritten != (int) th->th_hsize)
  flex_die (_("pad64 failed"));

 return bwritten;
}
