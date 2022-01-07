
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {scalar_t__ dentry_ttl; } ;
struct dentry {scalar_t__ d_time; } ;


 scalar_t__ jiffies ;

__attribute__((used)) static inline void
ncp_age_dentry(struct ncp_server* server, struct dentry* dentry)
{
 dentry->d_time = jiffies - server->dentry_ttl;
}
