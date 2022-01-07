
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_association {int dummy; } ;


 int SCTP_EVENT_TIMEOUT_AUTOCLOSE ;
 int sctp_generate_timeout_event (struct sctp_association*,int ) ;

__attribute__((used)) static void sctp_generate_autoclose_event(unsigned long data)
{
 struct sctp_association *asoc = (struct sctp_association *) data;
 sctp_generate_timeout_event(asoc, SCTP_EVENT_TIMEOUT_AUTOCLOSE);
}
