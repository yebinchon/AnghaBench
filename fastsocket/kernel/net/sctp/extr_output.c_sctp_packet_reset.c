
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_packet {int * auth; scalar_t__ ipfragok; scalar_t__ has_auth; scalar_t__ has_data; scalar_t__ has_sack; scalar_t__ has_cookie_echo; int overhead; int size; } ;



__attribute__((used)) static void sctp_packet_reset(struct sctp_packet *packet)
{
 packet->size = packet->overhead;
 packet->has_cookie_echo = 0;
 packet->has_sack = 0;
 packet->has_data = 0;
 packet->has_auth = 0;
 packet->ipfragok = 0;
 packet->auth = ((void*)0);
}
