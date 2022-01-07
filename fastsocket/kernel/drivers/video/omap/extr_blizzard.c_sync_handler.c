
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sync; } ;
struct blizzard_request {TYPE_1__ par; } ;


 int REQ_COMPLETE ;
 int complete (int ) ;

__attribute__((used)) static int sync_handler(struct blizzard_request *req)
{
 complete(req->par.sync);
 return REQ_COMPLETE;
}
