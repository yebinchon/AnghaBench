
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockcred {scalar_t__ sc_euid; } ;
struct port_input {int priv; } ;



__attribute__((used)) static void
check_priv_dgram(struct port_input *pi, struct sockcred *cred)
{


 if (cred)
  pi->priv = (cred->sc_euid == 0);
 else
  pi->priv = 0;
}
