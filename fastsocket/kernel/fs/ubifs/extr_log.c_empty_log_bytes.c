
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {long long leb_size; long long lhead_offs; long long log_bytes; scalar_t__ ltail_lnum; scalar_t__ lhead_lnum; } ;



__attribute__((used)) static inline long long empty_log_bytes(const struct ubifs_info *c)
{
 long long h, t;

 h = (long long)c->lhead_lnum * c->leb_size + c->lhead_offs;
 t = (long long)c->ltail_lnum * c->leb_size;

 if (h >= t)
  return c->log_bytes - h + t;
 else
  return t - h;
}
