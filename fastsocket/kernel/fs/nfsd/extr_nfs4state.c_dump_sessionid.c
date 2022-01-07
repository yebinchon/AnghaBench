
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfs4_sessionid {int * data; } ;


 int dprintk (char*,char const*,int ,int ,int ,int ) ;

__attribute__((used)) static inline void
dump_sessionid(const char *fn, struct nfs4_sessionid *sessionid)
{
 u32 *ptr = (u32 *)(&sessionid->data[0]);
 dprintk("%s: %u:%u:%u:%u\n", fn, ptr[0], ptr[1], ptr[2], ptr[3]);
}
