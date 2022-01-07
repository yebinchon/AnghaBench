
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
typedef int apr_size_t ;


 int TRUE ;
 char* conv_10 (unsigned int,int ,int*,char*,int*) ;
 unsigned int ntohl (int ) ;

__attribute__((used)) static char *conv_in_addr(struct in_addr *ia, char *buf_end, apr_size_t *len)
{
    unsigned addr = ntohl(ia->s_addr);
    char *p = buf_end;
    int is_negative;
    apr_size_t sub_len;

    p = conv_10((addr & 0x000000FF) , TRUE, &is_negative, p, &sub_len);
    *--p = '.';
    p = conv_10((addr & 0x0000FF00) >> 8, TRUE, &is_negative, p, &sub_len);
    *--p = '.';
    p = conv_10((addr & 0x00FF0000) >> 16, TRUE, &is_negative, p, &sub_len);
    *--p = '.';
    p = conv_10((addr & 0xFF000000) >> 24, TRUE, &is_negative, p, &sub_len);

    *len = buf_end - p;
    return (p);
}
