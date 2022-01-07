
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tomoyo_io_buffer {int read_eof; } ;
struct TYPE_4__ {TYPE_1__* domainname; } ;
struct TYPE_3__ {int name; } ;


 TYPE_2__* tomoyo_domain () ;
 int tomoyo_io_printf (struct tomoyo_io_buffer*,char*,int ) ;

__attribute__((used)) static int tomoyo_read_self_domain(struct tomoyo_io_buffer *head)
{
 if (!head->read_eof) {





  tomoyo_io_printf(head, "%s", tomoyo_domain()->domainname->name);
  head->read_eof = 1;
 }
 return 0;
}
