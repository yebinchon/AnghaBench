
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_change_info {int after_ctime_nsec; int after_ctime_sec; int before_ctime_nsec; int before_ctime_sec; int after_change; int before_change; scalar_t__ change_supported; int atomic; } ;
typedef int __be32 ;


 int write32 (int **,int ) ;
 int write64 (int **,int ) ;

__attribute__((used)) static void write_cinfo(__be32 **p, struct nfsd4_change_info *c)
{
 write32(p, c->atomic);
 if (c->change_supported) {
  write64(p, c->before_change);
  write64(p, c->after_change);
 } else {
  write32(p, c->before_ctime_sec);
  write32(p, c->before_ctime_nsec);
  write32(p, c->after_ctime_sec);
  write32(p, c->after_ctime_nsec);
 }
}
