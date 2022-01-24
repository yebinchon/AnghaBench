#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  q_back; } ;
typedef  TYPE_1__ qelem ;
struct TYPE_6__ {int h_mask; char* h_hostname; char* h_lochost; char* h_arch; char* h_os; char* h_cluster; TYPE_1__* h_ether; TYPE_1__* h_config; } ;
typedef  TYPE_2__ host ;
typedef  int /*<<< orphan*/  dict_ent ;

/* Variables and functions */
#define  HF_ARCH 133 
#define  HF_CLUSTER 132 
#define  HF_CONFIG 131 
#define  HF_ETHER 130 
#define  HF_HOST 129 
#define  HF_OS 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dict_of_hosts ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char** host_strings ; 
 int /*<<< orphan*/  hostname ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char) ; 
 char* FUNC9 (char*) ; 

void
FUNC10(host *hp, int k, char *v)
{
  int m = 1 << k;

  if (hp->h_mask & m) {
    FUNC5("host field \"%s\" already set", host_strings[k]);
    return;
  }
  hp->h_mask |= m;

  switch (k) {

  case HF_HOST:{
      char *p = FUNC9(v);
      dict_ent *de = FUNC3(dict_of_hosts, v);

      if (de)
	FUNC5("duplicate host %s!", v);
      else
	FUNC2(dict_of_hosts, v, (char *) hp);
      hp->h_hostname = v;
      FUNC4(p, hostname);
      if (FUNC8(p, '.') != 0)
	FUNC0(p);
      else
	hp->h_lochost = p;
    }
    break;

  case HF_CONFIG:{
      qelem *q;
      qelem *vq = (qelem *) v;

      hp->h_mask &= ~m;
      if (hp->h_config)
	q = hp->h_config;
      else
	q = hp->h_config = FUNC7();
      FUNC6(vq, q->q_back);
    }
    break;

  case HF_ETHER:{
      qelem *q;
      qelem *vq = (qelem *) v;

      hp->h_mask &= ~m;
      if (hp->h_ether)
	q = hp->h_ether;
      else
	q = hp->h_ether = FUNC7();
      FUNC6(vq, q->q_back);
    }
    break;

  case HF_ARCH:
    hp->h_arch = v;
    break;

  case HF_OS:
    hp->h_os = v;
    break;

  case HF_CLUSTER:
    hp->h_cluster = v;
    break;

  default:
    FUNC1();
    break;
  }
}