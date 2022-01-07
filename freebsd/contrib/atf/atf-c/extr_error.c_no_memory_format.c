
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_error_t ;


 int PRE (int ) ;
 int atf_error_is (int const,char*) ;
 int snprintf (char*,size_t,char*) ;

__attribute__((used)) static
void
no_memory_format(const atf_error_t err, char *buf, size_t buflen)
{
    PRE(atf_error_is(err, "no_memory"));

    snprintf(buf, buflen, "Not enough memory");
}
