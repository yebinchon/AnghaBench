
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum XML_Status { ____Placeholder_XML_Status } XML_Status ;
typedef enum XML_FeatureEnum { ____Placeholder_XML_FeatureEnum } XML_FeatureEnum ;
struct TYPE_3__ {scalar_t__ feature; long value; } ;
typedef TYPE_1__ XML_Feature ;


 scalar_t__ XML_FEATURE_END ;
 TYPE_1__* XML_GetFeatureList () ;
 int XML_STATUS_ERROR ;
 int XML_STATUS_OK ;

__attribute__((used)) static enum XML_Status
get_feature(enum XML_FeatureEnum feature_id, long *presult)
{
    const XML_Feature *feature = XML_GetFeatureList();

    if (feature == ((void*)0))
        return XML_STATUS_ERROR;
    for (; feature->feature != XML_FEATURE_END; feature++) {
        if (feature->feature == feature_id) {
            *presult = feature->value;
            return XML_STATUS_OK;
        }
    }
    return XML_STATUS_ERROR;
}
