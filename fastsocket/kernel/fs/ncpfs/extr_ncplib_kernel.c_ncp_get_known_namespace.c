
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct ncp_server {TYPE_1__ m; } ;
typedef int __u8 ;
typedef scalar_t__ __u16 ;


 int DPRINTK (char*,int,int) ;
 int NCP_MOUNT_NO_NFS ;
 int NCP_MOUNT_NO_OS2 ;
 int NW_NS_DOS ;
 int NW_NS_NFS ;
 int NW_NS_OS2 ;
 int ncp_add_byte (struct ncp_server*,int) ;
 int ncp_add_word (struct ncp_server*,int ) ;
 int ncp_init_request (struct ncp_server*) ;
 int* ncp_reply_data (struct ncp_server*,int) ;
 scalar_t__ ncp_reply_le16 (struct ncp_server*,int ) ;
 int ncp_request (struct ncp_server*,int) ;
 int ncp_unlock_server (struct ncp_server*) ;

__attribute__((used)) static inline int
ncp_get_known_namespace(struct ncp_server *server, __u8 volume)
{
 return NW_NS_DOS;

}
