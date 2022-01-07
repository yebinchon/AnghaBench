
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_2__ {scalar_t__ ci_protocol; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 TYPE_1__ dlm_config ;
 int dlm_our_nodeid () ;
 int lowcomms_connect_sock (struct connection*) ;
 struct connection* nodeid2con (int,int ) ;

int dlm_lowcomms_connect_node(int nodeid)
{
 struct connection *con;


 if (dlm_config.ci_protocol != 0)
  return 0;

 if (nodeid == dlm_our_nodeid())
  return 0;

 con = nodeid2con(nodeid, GFP_NOFS);
 if (!con)
  return -ENOMEM;
 lowcomms_connect_sock(con);
 return 0;
}
