; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_dump.c_cp_dump_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_dump.c_cp_dump_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lang_cplusplus = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"lang\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"note\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tynm\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ptrmem\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ptd\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"bfld\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"vfld\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"spec\00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"virt\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"mutable\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"member\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"pure\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"constructor\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"destructor\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"conversion\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"global init\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"global fini\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"pseudo tmpl\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"thunk\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"this adjusting\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"result adjusting\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"fixd\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"fn\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"alis\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"dcls\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"rslt\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"inst\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"spcs\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"prms\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"crnt\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"chan\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"cleanup\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"hdlr\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"raises\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"clas\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"mbr\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"op 0\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"ctor\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"decl\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"parm\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"nmsp\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"cond\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"attrs\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"stmt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cp_dump_tree(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = ptrtoint i8* %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @TREE_CODE(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @DECL_P(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @DECL_LANG_SPECIFIC(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @DECL_LANGUAGE(i32 %24)
  %26 = load i64, i64* @lang_cplusplus, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @DECL_LANGUAGE(i32 %30)
  %32 = call i8* @language_to_string(i64 %31)
  %33 = call i32 @dump_string_field(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %28, %23, %19
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %513 [
    i32 144, label %37
    i32 140, label %54
    i32 137, label %63
    i32 131, label %77
    i32 148, label %151
    i32 129, label %162
    i32 146, label %183
    i32 141, label %301
    i32 134, label %321
    i32 139, label %334
    i32 132, label %341
    i32 150, label %358
    i32 138, label %368
    i32 133, label %375
    i32 155, label %379
    i32 145, label %393
    i32 142, label %403
    i32 130, label %410
    i32 153, label %417
    i32 143, label %430
    i32 154, label %443
    i32 152, label %443
    i32 151, label %447
    i32 147, label %460
    i32 135, label %479
    i32 128, label %489
    i32 136, label %502
    i32 149, label %506
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @IDENTIFIER_OPNAME_P(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @dump_string_field(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %518

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @IDENTIFIER_TYPENAME_P(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @TREE_TYPE(i32 %49)
  %51 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  store i32 1, i32* %3, align 4
  br label %518

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  br label %514

54:                                               ; preds = %35
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @dump_string_field(i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32 %57)
  %59 = call i32 @dump_child(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i32 %60)
  %62 = call i32 @dump_child(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  store i32 1, i32* %3, align 4
  br label %518

63:                                               ; preds = %35
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @TYPE_PTRMEMFUNC_P(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @dump_string_field(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32 %70)
  %72 = call i32 @dump_child(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i32 %73)
  %75 = call i32 @dump_child(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %74)
  store i32 1, i32* %3, align 4
  br label %518

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %35, %76
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @TYPE_CONTEXT(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %77
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @TYPE_CONTEXT(i32 %82)
  %84 = call i32 @TREE_CODE(i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @TREE_CODE(i32 %85)
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %81
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @TYPE_CONTEXT(i32 %89)
  %91 = call i32 @CLASSTYPE_AS_BASE(i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @TYPE_CONTEXT(i32 %95)
  %97 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %96)
  store i32 1, i32* %3, align 4
  br label %518

98:                                               ; preds = %88, %81, %77
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @IS_AGGR_TYPE(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  br label %514

103:                                              ; preds = %98
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @TYPE_VFIELD(i32 %104)
  %106 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @CLASSTYPE_TEMPLATE_SPECIALIZATION(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @dump_string(i32 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %103
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @TDF_SLIM, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @dump_flag(i32 %114, i32 %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %150, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @TYPE_BINFO(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %150

123:                                              ; preds = %119
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @TYPE_BINFO(i32 %124)
  store i32 %125, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %126

126:                                              ; preds = %146, %123
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @BINFO_BASE_ITERATE(i32 %127, i32 %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %126
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @BINFO_TYPE(i32 %133)
  %135 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @BINFO_VIRTUAL_P(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @dump_string_field(i32 %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %132
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @dump_access(i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %126

149:                                              ; preds = %126
  br label %150

150:                                              ; preds = %149, %119, %113
  br label %514

151:                                              ; preds = %35
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @dump_access(i32 %152, i32 %153)
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @DECL_MUTABLE_P(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @dump_string_field(i32 %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %151
  br label %514

162:                                              ; preds = %35
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @CP_DECL_CONTEXT(i32 %163)
  %165 = call i32 @TREE_CODE(i32 %164)
  %166 = icmp eq i32 %165, 137
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @dump_access(i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %167, %162
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @TREE_STATIC(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %171
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @TREE_PUBLIC(i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %175
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @dump_string_field(i32 %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %182

182:                                              ; preds = %179, %175, %171
  br label %514

183:                                              ; preds = %35
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @DECL_THUNK_P(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %264, label %187

187:                                              ; preds = %183
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @DECL_OVERLOADED_OPERATOR_P(i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %187
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @dump_string_field(i32 %192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* %5, align 4
  %196 = call i32 @dump_op(i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %191, %187
  %198 = load i32, i32* %5, align 4
  %199 = call i32 @DECL_FUNCTION_MEMBER_P(i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %197
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @dump_string_field(i32 %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* %5, align 4
  %206 = call i32 @dump_access(i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %201, %197
  %208 = load i32, i32* %5, align 4
  %209 = call i32 @DECL_PURE_VIRTUAL_P(i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %207
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @dump_string_field(i32 %212, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %214

214:                                              ; preds = %211, %207
  %215 = load i32, i32* %5, align 4
  %216 = call i32 @DECL_VIRTUAL_P(i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = load i32, i32* %7, align 4
  %220 = call i32 @dump_string_field(i32 %219, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %221

221:                                              ; preds = %218, %214
  %222 = load i32, i32* %5, align 4
  %223 = call i32 @DECL_CONSTRUCTOR_P(i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @dump_string_field(i32 %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  br label %228

228:                                              ; preds = %225, %221
  %229 = load i32, i32* %5, align 4
  %230 = call i32 @DECL_DESTRUCTOR_P(i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = load i32, i32* %7, align 4
  %234 = call i32 @dump_string_field(i32 %233, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  br label %235

235:                                              ; preds = %232, %228
  %236 = load i32, i32* %5, align 4
  %237 = call i32 @DECL_CONV_FN_P(i32 %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load i32, i32* %7, align 4
  %241 = call i32 @dump_string_field(i32 %240, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  br label %242

242:                                              ; preds = %239, %235
  %243 = load i32, i32* %5, align 4
  %244 = call i32 @DECL_GLOBAL_CTOR_P(i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %242
  %247 = load i32, i32* %7, align 4
  %248 = call i32 @dump_string_field(i32 %247, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  br label %249

249:                                              ; preds = %246, %242
  %250 = load i32, i32* %5, align 4
  %251 = call i32 @DECL_GLOBAL_DTOR_P(i32 %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = load i32, i32* %7, align 4
  %255 = call i32 @dump_string_field(i32 %254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0))
  br label %256

256:                                              ; preds = %253, %249
  %257 = load i32, i32* %5, align 4
  %258 = call i32 @DECL_FRIEND_PSEUDO_TEMPLATE_INSTANTIATION(i32 %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %256
  %261 = load i32, i32* %7, align 4
  %262 = call i32 @dump_string_field(i32 %261, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  br label %263

263:                                              ; preds = %260, %256
  br label %300

264:                                              ; preds = %183
  %265 = load i32, i32* %5, align 4
  %266 = call i32 @THUNK_VIRTUAL_OFFSET(i32 %265)
  store i32 %266, i32* %11, align 4
  %267 = load i32, i32* %7, align 4
  %268 = call i32 @dump_string_field(i32 %267, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0))
  %269 = load i32, i32* %5, align 4
  %270 = call i32 @DECL_THIS_THUNK_P(i32 %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %264
  %273 = load i32, i32* %7, align 4
  %274 = call i32 @dump_string_field(i32 %273, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  br label %284

275:                                              ; preds = %264
  %276 = load i32, i32* %7, align 4
  %277 = call i32 @dump_string_field(i32 %276, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0))
  %278 = load i32, i32* %11, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %275
  %281 = load i32, i32* %11, align 4
  %282 = call i32 @BINFO_VPTR_FIELD(i32 %281)
  store i32 %282, i32* %11, align 4
  br label %283

283:                                              ; preds = %280, %275
  br label %284

284:                                              ; preds = %283, %272
  %285 = load i32, i32* %7, align 4
  %286 = load i32, i32* %5, align 4
  %287 = call i32 @THUNK_FIXED_OFFSET(i32 %286)
  %288 = call i32 @dump_int(i32 %285, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 %287)
  %289 = load i32, i32* %11, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %284
  %292 = load i32, i32* %7, align 4
  %293 = load i32, i32* %11, align 4
  %294 = call i32 @tree_low_cst(i32 %293, i32 0)
  %295 = call i32 @dump_int(i32 %292, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %294)
  br label %296

296:                                              ; preds = %291, %284
  %297 = load i32, i32* %5, align 4
  %298 = call i32 @DECL_INITIAL(i32 %297)
  %299 = call i32 @dump_child(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i32 %298)
  br label %300

300:                                              ; preds = %296, %263
  br label %514

301:                                              ; preds = %35
  %302 = load i32, i32* %5, align 4
  %303 = call i32 @DECL_NAMESPACE_ALIAS(i32 %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %301
  %306 = load i32, i32* %5, align 4
  %307 = call i32 @DECL_NAMESPACE_ALIAS(i32 %306)
  %308 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i32 %307)
  br label %320

309:                                              ; preds = %301
  %310 = load i32, i32* %7, align 4
  %311 = load i32, i32* @TDF_SLIM, align 4
  %312 = load i32, i32* %5, align 4
  %313 = call i32 @dump_flag(i32 %310, i32 %311, i32 %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %319, label %315

315:                                              ; preds = %309
  %316 = load i32, i32* %5, align 4
  %317 = call i32 @cp_namespace_decls(i32 %316)
  %318 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i32 %317)
  br label %319

319:                                              ; preds = %315, %309
  br label %320

320:                                              ; preds = %319, %305
  br label %514

321:                                              ; preds = %35
  %322 = load i32, i32* %5, align 4
  %323 = call i32 @DECL_TEMPLATE_RESULT(i32 %322)
  %324 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i32 %323)
  %325 = load i32, i32* %5, align 4
  %326 = call i32 @DECL_TEMPLATE_INSTANTIATIONS(i32 %325)
  %327 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 %326)
  %328 = load i32, i32* %5, align 4
  %329 = call i32 @DECL_TEMPLATE_SPECIALIZATIONS(i32 %328)
  %330 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i32 %329)
  %331 = load i32, i32* %5, align 4
  %332 = call i32 @DECL_TEMPLATE_PARMS(i32 %331)
  %333 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i32 %332)
  br label %514

334:                                              ; preds = %35
  %335 = load i32, i32* %5, align 4
  %336 = call i32 @OVL_CURRENT(i32 %335)
  %337 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 %336)
  %338 = load i32, i32* %5, align 4
  %339 = call i32 @OVL_CHAIN(i32 %338)
  %340 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i32 %339)
  br label %514

341:                                              ; preds = %35
  %342 = load i32, i32* %7, align 4
  %343 = load i32, i32* %5, align 4
  %344 = call i32 @dump_stmt(i32 %342, i32 %343)
  %345 = load i32, i32* %5, align 4
  %346 = call i32 @CLEANUP_P(i32 %345)
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %351

348:                                              ; preds = %341
  %349 = load i32, i32* %7, align 4
  %350 = call i32 @dump_string_field(i32 %349, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0))
  br label %351

351:                                              ; preds = %348, %341
  %352 = load i32, i32* %5, align 4
  %353 = call i32 @TRY_STMTS(i32 %352)
  %354 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i32 %353)
  %355 = load i32, i32* %5, align 4
  %356 = call i32 @TRY_HANDLERS(i32 %355)
  %357 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i32 %356)
  br label %514

358:                                              ; preds = %35
  %359 = load i32, i32* %7, align 4
  %360 = load i32, i32* %5, align 4
  %361 = call i32 @dump_stmt(i32 %359, i32 %360)
  %362 = load i32, i32* %5, align 4
  %363 = call i32 @EH_SPEC_STMTS(i32 %362)
  %364 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i32 %363)
  %365 = load i32, i32* %5, align 4
  %366 = call i32 @EH_SPEC_RAISES(i32 %365)
  %367 = call i32 @dump_child(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i32 %366)
  br label %514

368:                                              ; preds = %35
  %369 = load i32, i32* %5, align 4
  %370 = call i32 @PTRMEM_CST_CLASS(i32 %369)
  %371 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i32 %370)
  %372 = load i32, i32* %5, align 4
  %373 = call i32 @PTRMEM_CST_MEMBER(i32 %372)
  %374 = call i32 @dump_child(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i32 %373)
  br label %514

375:                                              ; preds = %35
  %376 = load i32, i32* %5, align 4
  %377 = call i32 @TREE_OPERAND(i32 %376, i32 0)
  %378 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i32 %377)
  br label %514

379:                                              ; preds = %35
  %380 = load i32, i32* %7, align 4
  %381 = load i32, i32* %5, align 4
  %382 = call i32 @AGGR_INIT_VIA_CTOR_P(i32 %381)
  %383 = call i32 @dump_int(i32 %380, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i32 %382)
  %384 = load i32, i32* %5, align 4
  %385 = call i32 @TREE_OPERAND(i32 %384, i32 0)
  %386 = call i32 @dump_child(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i32 %385)
  %387 = load i32, i32* %5, align 4
  %388 = call i32 @TREE_OPERAND(i32 %387, i32 1)
  %389 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i32 %388)
  %390 = load i32, i32* %5, align 4
  %391 = call i32 @TREE_OPERAND(i32 %390, i32 2)
  %392 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i32 %391)
  br label %514

393:                                              ; preds = %35
  %394 = load i32, i32* %7, align 4
  %395 = load i32, i32* %5, align 4
  %396 = call i32 @dump_stmt(i32 %394, i32 %395)
  %397 = load i32, i32* %5, align 4
  %398 = call i32 @HANDLER_PARMS(i32 %397)
  %399 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), i32 %398)
  %400 = load i32, i32* %5, align 4
  %401 = call i32 @HANDLER_BODY(i32 %400)
  %402 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i32 %401)
  br label %514

403:                                              ; preds = %35
  %404 = load i32, i32* %7, align 4
  %405 = load i32, i32* %5, align 4
  %406 = call i32 @dump_stmt(i32 %404, i32 %405)
  %407 = load i32, i32* %5, align 4
  %408 = call i32 @TREE_OPERAND(i32 %407, i32 0)
  %409 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i32 %408)
  br label %514

410:                                              ; preds = %35
  %411 = load i32, i32* %7, align 4
  %412 = load i32, i32* %5, align 4
  %413 = call i32 @dump_stmt(i32 %411, i32 %412)
  %414 = load i32, i32* %5, align 4
  %415 = call i32 @USING_STMT_NAMESPACE(i32 %414)
  %416 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i32 %415)
  br label %514

417:                                              ; preds = %35
  %418 = load i32, i32* %7, align 4
  %419 = load i32, i32* %5, align 4
  %420 = call i32 @dump_stmt(i32 %418, i32 %419)
  %421 = load i32, i32* %5, align 4
  %422 = call i32 @CLEANUP_DECL(i32 %421)
  %423 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), i32 %422)
  %424 = load i32, i32* %5, align 4
  %425 = call i32 @CLEANUP_EXPR(i32 %424)
  %426 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), i32 %425)
  %427 = load i32, i32* %5, align 4
  %428 = call i32 @CLEANUP_BODY(i32 %427)
  %429 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i32 %428)
  br label %514

430:                                              ; preds = %35
  %431 = load i32, i32* %7, align 4
  %432 = load i32, i32* %5, align 4
  %433 = call i32 @dump_stmt(i32 %431, i32 %432)
  %434 = load i32, i32* %5, align 4
  %435 = call i32 @IF_COND(i32 %434)
  %436 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i32 %435)
  %437 = load i32, i32* %5, align 4
  %438 = call i32 @THEN_CLAUSE(i32 %437)
  %439 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i32 %438)
  %440 = load i32, i32* %5, align 4
  %441 = call i32 @ELSE_CLAUSE(i32 %440)
  %442 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i32 %441)
  br label %514

443:                                              ; preds = %35, %35
  %444 = load i32, i32* %7, align 4
  %445 = load i32, i32* %5, align 4
  %446 = call i32 @dump_stmt(i32 %444, i32 %445)
  br label %514

447:                                              ; preds = %35
  %448 = load i32, i32* %7, align 4
  %449 = load i32, i32* %5, align 4
  %450 = call i32 @dump_stmt(i32 %448, i32 %449)
  %451 = load i32, i32* %5, align 4
  %452 = call i32 @DO_BODY(i32 %451)
  %453 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i32 %452)
  %454 = load i32, i32* %5, align 4
  %455 = call i32 @DO_COND(i32 %454)
  %456 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i32 %455)
  %457 = load i32, i32* %5, align 4
  %458 = call i32 @DO_ATTRIBUTES(i32 %457)
  %459 = call i32 @dump_child(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i32 %458)
  br label %514

460:                                              ; preds = %35
  %461 = load i32, i32* %7, align 4
  %462 = load i32, i32* %5, align 4
  %463 = call i32 @dump_stmt(i32 %461, i32 %462)
  %464 = load i32, i32* %5, align 4
  %465 = call i32 @FOR_INIT_STMT(i32 %464)
  %466 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i32 %465)
  %467 = load i32, i32* %5, align 4
  %468 = call i32 @FOR_COND(i32 %467)
  %469 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i32 %468)
  %470 = load i32, i32* %5, align 4
  %471 = call i32 @FOR_EXPR(i32 %470)
  %472 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), i32 %471)
  %473 = load i32, i32* %5, align 4
  %474 = call i32 @FOR_BODY(i32 %473)
  %475 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i32 %474)
  %476 = load i32, i32* %5, align 4
  %477 = call i32 @FOR_ATTRIBUTES(i32 %476)
  %478 = call i32 @dump_child(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i32 %477)
  br label %514

479:                                              ; preds = %35
  %480 = load i32, i32* %7, align 4
  %481 = load i32, i32* %5, align 4
  %482 = call i32 @dump_stmt(i32 %480, i32 %481)
  %483 = load i32, i32* %5, align 4
  %484 = call i32 @SWITCH_STMT_COND(i32 %483)
  %485 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i32 %484)
  %486 = load i32, i32* %5, align 4
  %487 = call i32 @SWITCH_STMT_BODY(i32 %486)
  %488 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i32 %487)
  br label %514

489:                                              ; preds = %35
  %490 = load i32, i32* %7, align 4
  %491 = load i32, i32* %5, align 4
  %492 = call i32 @dump_stmt(i32 %490, i32 %491)
  %493 = load i32, i32* %5, align 4
  %494 = call i32 @WHILE_COND(i32 %493)
  %495 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i32 %494)
  %496 = load i32, i32* %5, align 4
  %497 = call i32 @WHILE_BODY(i32 %496)
  %498 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i32 %497)
  %499 = load i32, i32* %5, align 4
  %500 = call i32 @WHILE_ATTRIBUTES(i32 %499)
  %501 = call i32 @dump_child(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i32 %500)
  br label %514

502:                                              ; preds = %35
  %503 = load i32, i32* %5, align 4
  %504 = call i32 @STMT_EXPR_STMT(i32 %503)
  %505 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0), i32 %504)
  br label %514

506:                                              ; preds = %35
  %507 = load i32, i32* %7, align 4
  %508 = load i32, i32* %5, align 4
  %509 = call i32 @dump_stmt(i32 %507, i32 %508)
  %510 = load i32, i32* %5, align 4
  %511 = call i32 @EXPR_STMT_EXPR(i32 %510)
  %512 = call i32 @dump_child(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), i32 %511)
  br label %514

513:                                              ; preds = %35
  br label %514

514:                                              ; preds = %513, %506, %502, %489, %479, %460, %447, %443, %430, %417, %410, %403, %393, %379, %375, %368, %358, %351, %334, %321, %320, %300, %182, %161, %150, %102, %53
  %515 = load i32, i32* %7, align 4
  %516 = load i32, i32* %5, align 4
  %517 = call i32 @c_dump_tree(i32 %515, i32 %516)
  store i32 %517, i32* %3, align 4
  br label %518

518:                                              ; preds = %514, %94, %67, %54, %48, %41
  %519 = load i32, i32* %3, align 4
  ret i32 %519
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_P(i32) #1

declare dso_local i64 @DECL_LANG_SPECIFIC(i32) #1

declare dso_local i64 @DECL_LANGUAGE(i32) #1

declare dso_local i32 @dump_string_field(i32, i8*, i8*) #1

declare dso_local i8* @language_to_string(i64) #1

declare dso_local i32 @IDENTIFIER_OPNAME_P(i32) #1

declare dso_local i32 @IDENTIFIER_TYPENAME_P(i32) #1

declare dso_local i32 @dump_child(i8*, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32) #1

declare dso_local i32 @TYPE_PTRMEM_CLASS_TYPE(i32) #1

declare dso_local i32 @TYPE_PTRMEMFUNC_P(i32) #1

declare dso_local i32 @TYPE_CONTEXT(i32) #1

declare dso_local i32 @CLASSTYPE_AS_BASE(i32) #1

declare dso_local i32 @IS_AGGR_TYPE(i32) #1

declare dso_local i32 @TYPE_VFIELD(i32) #1

declare dso_local i32 @CLASSTYPE_TEMPLATE_SPECIALIZATION(i32) #1

declare dso_local i32 @dump_string(i32, i8*) #1

declare dso_local i32 @dump_flag(i32, i32, i32) #1

declare dso_local i32 @TYPE_BINFO(i32) #1

declare dso_local i32 @BINFO_BASE_ITERATE(i32, i32, i32) #1

declare dso_local i32 @BINFO_TYPE(i32) #1

declare dso_local i32 @BINFO_VIRTUAL_P(i32) #1

declare dso_local i32 @dump_access(i32, i32) #1

declare dso_local i32 @DECL_MUTABLE_P(i32) #1

declare dso_local i32 @CP_DECL_CONTEXT(i32) #1

declare dso_local i32 @TREE_STATIC(i32) #1

declare dso_local i32 @TREE_PUBLIC(i32) #1

declare dso_local i32 @DECL_THUNK_P(i32) #1

declare dso_local i32 @DECL_OVERLOADED_OPERATOR_P(i32) #1

declare dso_local i32 @dump_op(i32, i32) #1

declare dso_local i32 @DECL_FUNCTION_MEMBER_P(i32) #1

declare dso_local i32 @DECL_PURE_VIRTUAL_P(i32) #1

declare dso_local i32 @DECL_VIRTUAL_P(i32) #1

declare dso_local i32 @DECL_CONSTRUCTOR_P(i32) #1

declare dso_local i32 @DECL_DESTRUCTOR_P(i32) #1

declare dso_local i32 @DECL_CONV_FN_P(i32) #1

declare dso_local i32 @DECL_GLOBAL_CTOR_P(i32) #1

declare dso_local i32 @DECL_GLOBAL_DTOR_P(i32) #1

declare dso_local i32 @DECL_FRIEND_PSEUDO_TEMPLATE_INSTANTIATION(i32) #1

declare dso_local i32 @THUNK_VIRTUAL_OFFSET(i32) #1

declare dso_local i32 @DECL_THIS_THUNK_P(i32) #1

declare dso_local i32 @BINFO_VPTR_FIELD(i32) #1

declare dso_local i32 @dump_int(i32, i8*, i32) #1

declare dso_local i32 @THUNK_FIXED_OFFSET(i32) #1

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i32 @DECL_INITIAL(i32) #1

declare dso_local i32 @DECL_NAMESPACE_ALIAS(i32) #1

declare dso_local i32 @cp_namespace_decls(i32) #1

declare dso_local i32 @DECL_TEMPLATE_RESULT(i32) #1

declare dso_local i32 @DECL_TEMPLATE_INSTANTIATIONS(i32) #1

declare dso_local i32 @DECL_TEMPLATE_SPECIALIZATIONS(i32) #1

declare dso_local i32 @DECL_TEMPLATE_PARMS(i32) #1

declare dso_local i32 @OVL_CURRENT(i32) #1

declare dso_local i32 @OVL_CHAIN(i32) #1

declare dso_local i32 @dump_stmt(i32, i32) #1

declare dso_local i32 @CLEANUP_P(i32) #1

declare dso_local i32 @TRY_STMTS(i32) #1

declare dso_local i32 @TRY_HANDLERS(i32) #1

declare dso_local i32 @EH_SPEC_STMTS(i32) #1

declare dso_local i32 @EH_SPEC_RAISES(i32) #1

declare dso_local i32 @PTRMEM_CST_CLASS(i32) #1

declare dso_local i32 @PTRMEM_CST_MEMBER(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @AGGR_INIT_VIA_CTOR_P(i32) #1

declare dso_local i32 @HANDLER_PARMS(i32) #1

declare dso_local i32 @HANDLER_BODY(i32) #1

declare dso_local i32 @USING_STMT_NAMESPACE(i32) #1

declare dso_local i32 @CLEANUP_DECL(i32) #1

declare dso_local i32 @CLEANUP_EXPR(i32) #1

declare dso_local i32 @CLEANUP_BODY(i32) #1

declare dso_local i32 @IF_COND(i32) #1

declare dso_local i32 @THEN_CLAUSE(i32) #1

declare dso_local i32 @ELSE_CLAUSE(i32) #1

declare dso_local i32 @DO_BODY(i32) #1

declare dso_local i32 @DO_COND(i32) #1

declare dso_local i32 @DO_ATTRIBUTES(i32) #1

declare dso_local i32 @FOR_INIT_STMT(i32) #1

declare dso_local i32 @FOR_COND(i32) #1

declare dso_local i32 @FOR_EXPR(i32) #1

declare dso_local i32 @FOR_BODY(i32) #1

declare dso_local i32 @FOR_ATTRIBUTES(i32) #1

declare dso_local i32 @SWITCH_STMT_COND(i32) #1

declare dso_local i32 @SWITCH_STMT_BODY(i32) #1

declare dso_local i32 @WHILE_COND(i32) #1

declare dso_local i32 @WHILE_BODY(i32) #1

declare dso_local i32 @WHILE_ATTRIBUTES(i32) #1

declare dso_local i32 @STMT_EXPR_STMT(i32) #1

declare dso_local i32 @EXPR_STMT_EXPR(i32) #1

declare dso_local i32 @c_dump_tree(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
