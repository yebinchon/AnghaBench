
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct p9_req_t {int dummy; } ;
struct p9_client {int max_tag; struct p9_req_t** reqs; } ;


 int BUG_ON (int) ;
 int P9_ROW_MAXTAG ;

struct p9_req_t *p9_tag_lookup(struct p9_client *c, u16 tag)
{
 int row, col;



 tag++;

 BUG_ON(tag >= c->max_tag);

 row = tag / P9_ROW_MAXTAG;
 col = tag % P9_ROW_MAXTAG;

 return &c->reqs[row][col];
}
