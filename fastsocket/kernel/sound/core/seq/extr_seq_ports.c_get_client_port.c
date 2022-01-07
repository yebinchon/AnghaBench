
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_client_port {int dummy; } ;
struct snd_seq_client {int dummy; } ;
struct snd_seq_addr {int port; int client; } ;


 int snd_seq_client_unlock (struct snd_seq_client*) ;
 struct snd_seq_client* snd_seq_client_use_ptr (int ) ;
 struct snd_seq_client_port* snd_seq_port_use_ptr (struct snd_seq_client*,int ) ;

__attribute__((used)) static struct snd_seq_client_port *get_client_port(struct snd_seq_addr *addr,
         struct snd_seq_client **cp)
{
 struct snd_seq_client_port *p;
 *cp = snd_seq_client_use_ptr(addr->client);
 if (*cp) {
  p = snd_seq_port_use_ptr(*cp, addr->port);
  if (! p) {
   snd_seq_client_unlock(*cp);
   *cp = ((void*)0);
  }
  return p;
 }
 return ((void*)0);
}
