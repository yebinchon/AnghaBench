
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct dlm_node_addr {scalar_t__ addr_count; struct sockaddr_storage** addr; } ;
struct TYPE_4__ {scalar_t__ ss_family; } ;


 scalar_t__ AF_INET ;
 int EEXIST ;
 int ENOENT ;
 TYPE_2__** dlm_local_addr ;
 int dlm_local_count ;
 int dlm_node_addrs_spin ;
 struct dlm_node_addr* find_node_addr (int) ;
 int memcpy (struct sockaddr_storage*,struct sockaddr_storage*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nodeid_to_addr(int nodeid, struct sockaddr_storage *sas_out,
                          struct sockaddr *sa_out)
{
        struct sockaddr_storage sas;
        struct dlm_node_addr *na;

        if (!dlm_local_count)
                return -1;

        spin_lock(&dlm_node_addrs_spin);
        na = find_node_addr(nodeid);
        if (na && na->addr_count)
                memcpy(&sas, na->addr[0], sizeof(struct sockaddr_storage));
        spin_unlock(&dlm_node_addrs_spin);

        if (!na)
                return -EEXIST;

        if (!na->addr_count)
                return -ENOENT;

        if (sas_out)
                memcpy(sas_out, &sas, sizeof(struct sockaddr_storage));

        if (!sa_out)
                return 0;

        if (dlm_local_addr[0]->ss_family == AF_INET) {
                struct sockaddr_in *in4 = (struct sockaddr_in *) &sas;
                struct sockaddr_in *ret4 = (struct sockaddr_in *) sa_out;
                ret4->sin_addr.s_addr = in4->sin_addr.s_addr;
        } else {
                struct sockaddr_in6 *in6 = (struct sockaddr_in6 *) &sas;
                struct sockaddr_in6 *ret6 = (struct sockaddr_in6 *) sa_out;
                ret6->sin6_addr = in6->sin6_addr;
        }

        return 0;
}
