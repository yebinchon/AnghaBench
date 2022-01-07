
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {int dummy; } ;


 int get_credits_field (struct TCP_Server_Info*) ;
 int wait_for_free_credits (struct TCP_Server_Info*,int const,int ) ;

__attribute__((used)) static int
wait_for_free_request(struct TCP_Server_Info *server, const int optype)
{
 return wait_for_free_credits(server, optype, get_credits_field(server));
}
