
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfs_info3_param {int path_consumed; int ref_flag; int server_type; int flags; int node_name; int path_name; } ;


 int cFYI (int,char*,int ,...) ;

__attribute__((used)) static void dump_referral(const struct dfs_info3_param *ref)
{
 cFYI(1, "DFS: ref path: %s", ref->path_name);
 cFYI(1, "DFS: node path: %s", ref->node_name);
 cFYI(1, "DFS: fl: %hd, srv_type: %hd", ref->flags, ref->server_type);
 cFYI(1, "DFS: ref_flags: %hd, path_consumed: %hd", ref->ref_flag,
    ref->path_consumed);
}
