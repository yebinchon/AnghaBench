
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char sockaddr ;
struct nsm_handle {char* sm_name; size_t sm_addrlen; int sm_addrbuf; int sm_count; } ;


 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 struct nsm_handle* kzalloc (int,int ) ;
 int memcpy (char*,char const*,size_t const) ;
 char* nsm_addr (struct nsm_handle*) ;
 int nsm_init_private (struct nsm_handle*) ;
 scalar_t__ rpc_ntop (char*,int ,int) ;
 int snprintf (int ,int,char*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct nsm_handle *nsm_create_handle(const struct sockaddr *sap,
         const size_t salen,
         const char *hostname,
         const size_t hostname_len)
{
 struct nsm_handle *new;

 new = kzalloc(sizeof(*new) + hostname_len + 1, GFP_KERNEL);
 if (unlikely(new == ((void*)0)))
  return ((void*)0);

 atomic_set(&new->sm_count, 1);
 new->sm_name = (char *)(new + 1);
 memcpy(nsm_addr(new), sap, salen);
 new->sm_addrlen = salen;
 nsm_init_private(new);

 if (rpc_ntop(nsm_addr(new), new->sm_addrbuf,
     sizeof(new->sm_addrbuf)) == 0)
  (void)snprintf(new->sm_addrbuf, sizeof(new->sm_addrbuf),
    "unsupported address family");
 memcpy(new->sm_name, hostname, hostname_len);
 new->sm_name[hostname_len] = '\0';

 return new;
}
