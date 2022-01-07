
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct objfile {int dummy; } ;
 int TARGET_CHAR_BIT ;
 int TARGET_DOUBLE_BIT ;
 int TARGET_FLOAT_BIT ;
 int TARGET_INT_BIT ;
 int TARGET_LONG_BIT ;
 int TARGET_LONG_DOUBLE_BIT ;
 int TARGET_LONG_LONG_BIT ;
 int TARGET_SHORT_BIT ;
 int TYPE_CODE_FLT ;
 int TYPE_CODE_INT ;
 int TYPE_CODE_VOID ;
 int TYPE_FLAG_UNSIGNED ;
 struct type* init_type (int ,int,int ,char*,struct objfile*) ;
 int warning (char*,int) ;

__attribute__((used)) static struct type *
objc_create_fundamental_type (struct objfile *objfile, int typeid)
{
  struct type *type = ((void*)0);

  switch (typeid)
    {
      default:





 type = init_type (TYPE_CODE_INT,
     TARGET_INT_BIT / TARGET_CHAR_BIT,
     0, "<?type?>", objfile);
        warning ("internal error: no C/C++ fundamental type %d", typeid);
 break;
      case 128:
 type = init_type (TYPE_CODE_VOID,
     TARGET_CHAR_BIT / TARGET_CHAR_BIT,
     0, "void", objfile);
 break;
      case 146:
 type = init_type (TYPE_CODE_INT,
     TARGET_CHAR_BIT / TARGET_CHAR_BIT,
     0, "char", objfile);
 break;
      case 138:
 type = init_type (TYPE_CODE_INT,
     TARGET_CHAR_BIT / TARGET_CHAR_BIT,
     0, "signed char", objfile);
 break;
      case 133:
 type = init_type (TYPE_CODE_INT,
     TARGET_CHAR_BIT / TARGET_CHAR_BIT,
     TYPE_FLAG_UNSIGNED, "unsigned char", objfile);
 break;
      case 139:
 type = init_type (TYPE_CODE_INT,
     TARGET_SHORT_BIT / TARGET_CHAR_BIT,
     0, "short", objfile);
 break;
      case 134:
 type = init_type (TYPE_CODE_INT,
     TARGET_SHORT_BIT / TARGET_CHAR_BIT,
     0, "short", objfile);
 break;
      case 129:
 type = init_type (TYPE_CODE_INT,
     TARGET_SHORT_BIT / TARGET_CHAR_BIT,
     TYPE_FLAG_UNSIGNED, "unsigned short", objfile);
 break;
      case 142:
 type = init_type (TYPE_CODE_INT,
     TARGET_INT_BIT / TARGET_CHAR_BIT,
     0, "int", objfile);
 break;
      case 137:
 type = init_type (TYPE_CODE_INT,
     TARGET_INT_BIT / TARGET_CHAR_BIT,
     0, "int", objfile);
 break;
      case 132:
 type = init_type (TYPE_CODE_INT,
     TARGET_INT_BIT / TARGET_CHAR_BIT,
     TYPE_FLAG_UNSIGNED, "unsigned int", objfile);
 break;
      case 141:
 type = init_type (TYPE_CODE_INT,
     TARGET_LONG_BIT / TARGET_CHAR_BIT,
     0, "long", objfile);
 break;
      case 136:
 type = init_type (TYPE_CODE_INT,
     TARGET_LONG_BIT / TARGET_CHAR_BIT,
     0, "long", objfile);
 break;
      case 131:
 type = init_type (TYPE_CODE_INT,
     TARGET_LONG_BIT / TARGET_CHAR_BIT,
     TYPE_FLAG_UNSIGNED, "unsigned long", objfile);
 break;
      case 140:
 type = init_type (TYPE_CODE_INT,
     TARGET_LONG_LONG_BIT / TARGET_CHAR_BIT,
     0, "long long", objfile);
 break;
      case 135:
 type = init_type (TYPE_CODE_INT,
     TARGET_LONG_LONG_BIT / TARGET_CHAR_BIT,
     0, "signed long long", objfile);
 break;
      case 130:
 type = init_type (TYPE_CODE_INT,
     TARGET_LONG_LONG_BIT / TARGET_CHAR_BIT,
     TYPE_FLAG_UNSIGNED, "unsigned long long", objfile);
 break;
      case 143:
 type = init_type (TYPE_CODE_FLT,
     TARGET_FLOAT_BIT / TARGET_CHAR_BIT,
     0, "float", objfile);
 break;
      case 145:
 type = init_type (TYPE_CODE_FLT,
     TARGET_DOUBLE_BIT / TARGET_CHAR_BIT,
     0, "double", objfile);
 break;
      case 144:
 type = init_type (TYPE_CODE_FLT,
     TARGET_LONG_DOUBLE_BIT / TARGET_CHAR_BIT,
     0, "long double", objfile);
 break;
      }
  return (type);
}
