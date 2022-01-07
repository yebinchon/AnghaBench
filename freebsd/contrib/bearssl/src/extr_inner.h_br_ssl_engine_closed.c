
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ iomode; } ;
typedef TYPE_1__ br_ssl_engine_context ;


 scalar_t__ BR_IO_FAILED ;

__attribute__((used)) static inline int
br_ssl_engine_closed(const br_ssl_engine_context *cc)
{
 return cc->iomode == BR_IO_FAILED;
}
