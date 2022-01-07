
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int q_back; } ;
typedef TYPE_1__ qelem ;
struct TYPE_6__ {int h_mask; char* h_hostname; char* h_lochost; char* h_arch; char* h_os; char* h_cluster; TYPE_1__* h_ether; TYPE_1__* h_config; } ;
typedef TYPE_2__ host ;
typedef int dict_ent ;
 int XFREE (char*) ;
 int abort () ;
 int dict_add (int ,char*,char*) ;
 int * dict_locate (int ,char*) ;
 int dict_of_hosts ;
 int domain_strip (char*,int ) ;
 int fsi_error (char*,char*) ;
 char** host_strings ;
 int hostname ;
 int ins_que (TYPE_1__*,int ) ;
 void* new_que () ;
 int strchr (char*,char) ;
 char* xstrdup (char*) ;

void
set_host(host *hp, int k, char *v)
{
  int m = 1 << k;

  if (hp->h_mask & m) {
    fsi_error("host field \"%s\" already set", host_strings[k]);
    return;
  }
  hp->h_mask |= m;

  switch (k) {

  case 129:{
      char *p = xstrdup(v);
      dict_ent *de = dict_locate(dict_of_hosts, v);

      if (de)
 fsi_error("duplicate host %s!", v);
      else
 dict_add(dict_of_hosts, v, (char *) hp);
      hp->h_hostname = v;
      domain_strip(p, hostname);
      if (strchr(p, '.') != 0)
 XFREE(p);
      else
 hp->h_lochost = p;
    }
    break;

  case 131:{
      qelem *q;
      qelem *vq = (qelem *) v;

      hp->h_mask &= ~m;
      if (hp->h_config)
 q = hp->h_config;
      else
 q = hp->h_config = new_que();
      ins_que(vq, q->q_back);
    }
    break;

  case 130:{
      qelem *q;
      qelem *vq = (qelem *) v;

      hp->h_mask &= ~m;
      if (hp->h_ether)
 q = hp->h_ether;
      else
 q = hp->h_ether = new_que();
      ins_que(vq, q->q_back);
    }
    break;

  case 133:
    hp->h_arch = v;
    break;

  case 128:
    hp->h_os = v;
    break;

  case 132:
    hp->h_cluster = v;
    break;

  default:
    abort();
    break;
  }
}
