
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum XML_Status { ____Placeholder_XML_Status } XML_Status ;
typedef int XML_Parser ;


 int XML_Parse (int ,char const*,int,int const) ;
 int XML_STATUS_ERROR ;
 int XML_STATUS_OK ;

__attribute__((used)) static enum XML_Status
_XML_Parse_SINGLE_BYTES(XML_Parser parser, const char *s, int len, int isFinal)
{
    enum XML_Status res = XML_STATUS_ERROR;
    int offset = 0;

    if (len == 0) {
        return XML_Parse(parser, s, len, isFinal);
    }

    for (; offset < len; offset++) {
        const int innerIsFinal = (offset == len - 1) && isFinal;
        const char c = s[offset];
        res = XML_Parse(parser, &c, sizeof(char), innerIsFinal);
        if (res != XML_STATUS_OK) {
            return res;
        }
    }
    return res;
}
