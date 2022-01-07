
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_9__ {scalar_t__ ldap_proto_version; scalar_t__ ldap_cache_seconds; int ldap_cache_maxmem; } ;
struct TYPE_8__ {scalar_t__ timestamp; int * ldap; TYPE_1__* hostent; TYPE_2__* credentials; } ;
struct TYPE_7__ {int who; int method; int pw; } ;
struct TYPE_6__ {int port; int host; struct TYPE_6__* next; } ;
typedef int LDAP ;
typedef TYPE_1__ HE_ENT ;
typedef TYPE_2__ CR ;
typedef TYPE_3__ ALD ;


 scalar_t__ AMD_LDAP_TTL ;
 int ENOENT ;
 int LDAP_OPT_PROTOCOL_VERSION ;
 scalar_t__ LDAP_SUCCESS ;
 scalar_t__ LDAP_VERSION2 ;
 int XLOG_USER ;
 int XLOG_WARNING ;
 int amu_ldap_unbind (int *) ;
 scalar_t__ clocktime (int *) ;
 int dlog (char*,...) ;
 TYPE_4__ gopt ;
 scalar_t__ ldap_bind_s (int *,int ,int ,int ) ;
 int ldap_enable_cache (int *,scalar_t__,int ) ;
 int * ldap_open (int ,int ) ;
 int ldap_set_option (int *,int ,scalar_t__*) ;
 int plog (int ,char*,...) ;

__attribute__((used)) static int
amu_ldap_rebind(ALD *a)
{
  LDAP *ld;
  HE_ENT *h;
  CR *c = a->credentials;
  time_t now = clocktime(((void*)0));
  int try;

  dlog("-> amu_ldap_rebind\n");

  if (a->ldap != ((void*)0)) {
    if ((a->timestamp - now) > AMD_LDAP_TTL) {
      dlog("Re-establishing ldap connection\n");
      amu_ldap_unbind(a->ldap);
      a->timestamp = now;
      a->ldap = ((void*)0);
    } else {

      dlog("amu_ldap_rebind: timestamp OK\n");
      return (0);
    }
  }

  for (try=0; try<10; try++) {
    for (h = a->hostent; h != ((void*)0); h = h->next) {
      if ((ld = ldap_open(h->host, h->port)) == ((void*)0)) {
 plog(XLOG_WARNING, "Unable to ldap_open to %s:%d\n", h->host, h->port);
 continue;
      }
      if (ldap_bind_s(ld, c->who, c->pw, c->method) != LDAP_SUCCESS) {
 plog(XLOG_WARNING, "Unable to ldap_bind to %s:%d as %s\n",
      h->host, h->port, c->who);
 continue;
      }
      if (gopt.ldap_cache_seconds > 0) {



 plog(XLOG_WARNING, "ldap_enable_cache(%ld) is not available on this system!\n", gopt.ldap_cache_seconds);

      }
      a->ldap = ld;
      a->timestamp = now;
      return (0);
    }
    plog(XLOG_WARNING, "Exhausted list of ldap servers, looping.\n");
  }

  plog(XLOG_USER, "Unable to (re)bind to any ldap hosts\n");
  return (ENOENT);
}
