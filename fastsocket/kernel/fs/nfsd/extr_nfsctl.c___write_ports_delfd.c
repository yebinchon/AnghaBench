
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SIMPLE_TRANSACTION_LIMIT ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;
 int * nfsd_serv ;
 int svc_sock_names (int *,char*,int ,char*) ;

__attribute__((used)) static ssize_t __write_ports_delfd(char *buf)
{
 char *toclose;
 int len = 0;

 toclose = kstrdup(buf + 1, GFP_KERNEL);
 if (toclose == ((void*)0))
  return -ENOMEM;

 if (nfsd_serv != ((void*)0))
  len = svc_sock_names(nfsd_serv, buf,
     SIMPLE_TRANSACTION_LIMIT, toclose);
 kfree(toclose);
 return len;
}
