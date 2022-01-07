; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-valprint.c_pascal_val_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-valprint.c_pascal_val_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.type = type { i32 }
%struct.ui_file = type { i32 }
%struct.minimal_symbol = type { i32 }
%struct.value = type { i32 }
%struct.symbol = type { i32 }
%struct.block = type { i32 }

@prettyprint_arrays = common dso_local global i32 0, align 4
@current_language = common dso_local global %struct.TYPE_2__* null, align 8
@language_m2 = common dso_local global i32 0, align 4
@stop_print_at_null = common dso_local global i32 0, align 4
@print_max = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%d vtable entries\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@vtblprint = common dso_local global i32 0, align 4
@demangle = common dso_local global i32 0, align 4
@TYPE_CODE_METHOD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@addressprint = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c" <\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c">\00", align 1
@VAR_DOMAIN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"not implemented: member type in pascal_val_print\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@TARGET_PTR_BIT = common dso_local global i32 0, align 4
@HOST_CHAR_BIT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c": \00", align 1
@builtin_type_void = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@unionprint = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"{...}\00", align 1
@VTBL_FNADDR_OFFSET = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"} \00", align 1
@output_format = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"true (\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"%ld)\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"<incomplete type>\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"B'\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"<error value>\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"<error type>\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"Invalid pascal type code %d in symbol table.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pascal_val_print(%struct.type* %0, i8* %1, i32 %2, i8* %3, %struct.ui_file* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.type*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ui_file*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.type*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca %struct.minimal_symbol*, align 8
  %35 = alloca %struct.value*, align 8
  %36 = alloca %struct.symbol*, align 8
  %37 = alloca %struct.type*, align 8
  %38 = alloca %struct.block*, align 8
  %39 = alloca i32, align 4
  %40 = alloca %struct.value*, align 8
  %41 = alloca %struct.type*, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store %struct.ui_file* %4, %struct.ui_file** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %49 = load %struct.type*, %struct.type** %11, align 8
  %50 = call i32 @CHECK_TYPEDEF(%struct.type* %49)
  %51 = load %struct.type*, %struct.type** %11, align 8
  %52 = call i32 @TYPE_CODE(%struct.type* %51)
  switch i32 %52, label %912 [
    i32 145, label %53
    i32 135, label %174
    i32 136, label %401
    i32 133, label %403
    i32 129, label %472
    i32 131, label %482
    i32 141, label %548
    i32 138, label %600
    i32 143, label %624
    i32 134, label %672
    i32 137, label %672
    i32 142, label %701
    i32 139, label %747
    i32 144, label %768
    i32 132, label %768
    i32 128, label %903
    i32 140, label %906
    i32 130, label %909
  ]

53:                                               ; preds = %9
  %54 = load %struct.type*, %struct.type** %11, align 8
  %55 = call i32 @TYPE_LENGTH(%struct.type* %54)
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %172

57:                                               ; preds = %53
  %58 = load %struct.type*, %struct.type** %11, align 8
  %59 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %58)
  %60 = call i32 @TYPE_LENGTH(%struct.type* %59)
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %172

62:                                               ; preds = %57
  %63 = load %struct.type*, %struct.type** %11, align 8
  %64 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %63)
  %65 = call %struct.type* @check_typedef(%struct.type* %64)
  store %struct.type* %65, %struct.type** %22, align 8
  %66 = load %struct.type*, %struct.type** %22, align 8
  %67 = call i32 @TYPE_LENGTH(%struct.type* %66)
  store i32 %67, i32* %23, align 4
  %68 = load %struct.type*, %struct.type** %11, align 8
  %69 = call i32 @TYPE_LENGTH(%struct.type* %68)
  %70 = load i32, i32* %23, align 4
  %71 = udiv i32 %69, %70
  store i32 %71, i32* %21, align 4
  %72 = load i32, i32* @prettyprint_arrays, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %62
  %75 = load i32, i32* %18, align 4
  %76 = mul nsw i32 2, %75
  %77 = add nsw i32 2, %76
  %78 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %79 = call i32 @print_spaces_filtered(i32 %77, %struct.ui_file* %78)
  br label %80

80:                                               ; preds = %74, %62
  %81 = load i32, i32* %23, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %143

83:                                               ; preds = %80
  %84 = load %struct.type*, %struct.type** %22, align 8
  %85 = call i32 @TYPE_CODE(%struct.type* %84)
  %86 = icmp eq i32 %85, 137
  br i1 %86, label %97, label %87

87:                                               ; preds = %83
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @language_m2, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %143

93:                                               ; preds = %87
  %94 = load %struct.type*, %struct.type** %22, align 8
  %95 = call i32 @TYPE_CODE(%struct.type* %94)
  %96 = icmp eq i32 %95, 142
  br i1 %96, label %97, label %143

97:                                               ; preds = %93, %83
  %98 = load i32, i32* %16, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %16, align 4
  %102 = icmp eq i32 %101, 115
  br i1 %102, label %103, label %143

103:                                              ; preds = %100, %97
  %104 = load i32, i32* @stop_print_at_null, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %134

106:                                              ; preds = %103
  store i32 0, i32* %30, align 4
  br label %107

107:                                              ; preds = %129, %106
  %108 = load i8*, i8** %12, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i32, i32* %30, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %107
  %119 = load i32, i32* %30, align 4
  %120 = load i32, i32* %21, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* %30, align 4
  %124 = load i32, i32* @print_max, align 4
  %125 = icmp ult i32 %123, %124
  br label %126

126:                                              ; preds = %122, %118, %107
  %127 = phi i1 [ false, %118 ], [ false, %107 ], [ %125, %122 ]
  br i1 %127, label %128, label %132

128:                                              ; preds = %126
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %30, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %30, align 4
  br label %107

132:                                              ; preds = %126
  %133 = load i32, i32* %30, align 4
  store i32 %133, i32* %21, align 4
  br label %134

134:                                              ; preds = %132, %103
  %135 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i32, i32* %21, align 4
  %141 = call i32 @LA_PRINT_STRING(%struct.ui_file* %135, i8* %139, i32 %140, i32 1, i32 0)
  %142 = load i32, i32* %21, align 4
  store i32 %142, i32* %20, align 4
  br label %171

143:                                              ; preds = %100, %93, %87, %80
  %144 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %145 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %146 = load %struct.type*, %struct.type** %22, align 8
  %147 = call i32 @pascal_object_is_vtbl_ptr_type(%struct.type* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  store i32 1, i32* %20, align 4
  %150 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %151 = load i32, i32* %21, align 4
  %152 = sub i32 %151, 1
  %153 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %150, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %152)
  br label %155

154:                                              ; preds = %143
  store i32 0, i32* %20, align 4
  br label %155

155:                                              ; preds = %154, %149
  %156 = load %struct.type*, %struct.type** %11, align 8
  %157 = load i8*, i8** %12, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8*, i8** %14, align 8
  %162 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* %19, align 4
  %167 = load i32, i32* %20, align 4
  %168 = call i32 @val_print_array_elements(%struct.type* %156, i8* %160, i8* %161, %struct.ui_file* %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167)
  %169 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %170 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %171

171:                                              ; preds = %155, %134
  br label %916

172:                                              ; preds = %57, %53
  %173 = load i8*, i8** %14, align 8
  store i8* %173, i8** %29, align 8
  br label %244

174:                                              ; preds = %9
  %175 = load i32, i32* %16, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %174
  %178 = load i32, i32* %16, align 4
  %179 = icmp ne i32 %178, 115
  br i1 %179, label %180, label %189

180:                                              ; preds = %177
  %181 = load i8*, i8** %12, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load %struct.type*, %struct.type** %11, align 8
  %186 = load i32, i32* %16, align 4
  %187 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %188 = call i32 @print_scalar_formatted(i8* %184, %struct.type* %185, i32 %186, i32 0, %struct.ui_file* %187)
  br label %916

189:                                              ; preds = %177, %174
  %190 = load i32, i32* @vtblprint, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %207

192:                                              ; preds = %189
  %193 = load %struct.type*, %struct.type** %11, align 8
  %194 = call i32 @pascal_object_is_vtbl_ptr_type(%struct.type* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %192
  %197 = load i8*, i8** %12, align 8
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load %struct.type*, %struct.type** %11, align 8
  %202 = call i32 @TYPE_LENGTH(%struct.type* %201)
  %203 = call i8* @extract_unsigned_integer(i8* %200, i32 %202)
  %204 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %205 = load i32, i32* @demangle, align 4
  %206 = call i32 @print_address_demangle(i8* %203, %struct.ui_file* %204, i32 %205)
  br label %916

207:                                              ; preds = %192, %189
  %208 = load %struct.type*, %struct.type** %11, align 8
  %209 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %208)
  %210 = call %struct.type* @check_typedef(%struct.type* %209)
  store %struct.type* %210, %struct.type** %22, align 8
  %211 = load %struct.type*, %struct.type** %22, align 8
  %212 = call i32 @TYPE_CODE(%struct.type* %211)
  %213 = load i32, i32* @TYPE_CODE_METHOD, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %223

215:                                              ; preds = %207
  %216 = load i8*, i8** %12, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = load %struct.type*, %struct.type** %11, align 8
  %221 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %222 = call i32 @pascal_object_print_class_method(i8* %219, %struct.type* %220, %struct.ui_file* %221)
  br label %400

223:                                              ; preds = %207
  %224 = load %struct.type*, %struct.type** %22, align 8
  %225 = call i32 @TYPE_CODE(%struct.type* %224)
  %226 = icmp eq i32 %225, 136
  br i1 %226, label %227, label %237

227:                                              ; preds = %223
  %228 = load i8*, i8** %12, align 8
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  %232 = load %struct.type*, %struct.type** %11, align 8
  %233 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %232)
  %234 = call i32 @TYPE_DOMAIN_TYPE(%struct.type* %233)
  %235 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %236 = call i32 @pascal_object_print_class_member(i8* %231, i32 %234, %struct.ui_file* %235, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %399

237:                                              ; preds = %223
  %238 = load %struct.type*, %struct.type** %11, align 8
  %239 = load i8*, i8** %12, align 8
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  %243 = call i8* @unpack_pointer(%struct.type* %238, i8* %242)
  store i8* %243, i8** %29, align 8
  br label %244

244:                                              ; preds = %237, %172
  %245 = load %struct.type*, %struct.type** %11, align 8
  %246 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %245)
  %247 = call %struct.type* @check_typedef(%struct.type* %246)
  store %struct.type* %247, %struct.type** %22, align 8
  %248 = load %struct.type*, %struct.type** %22, align 8
  %249 = call i32 @TYPE_CODE(%struct.type* %248)
  %250 = icmp eq i32 %249, 138
  br i1 %250, label %251, label %256

251:                                              ; preds = %244
  %252 = load i8*, i8** %29, align 8
  %253 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %254 = load i32, i32* @demangle, align 4
  %255 = call i32 @print_address_demangle(i8* %252, %struct.ui_file* %253, i32 %254)
  store i32 0, i32* %10, align 4
  br label %919

256:                                              ; preds = %244
  %257 = load i32, i32* @addressprint, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %256
  %260 = load i32, i32* %16, align 4
  %261 = icmp ne i32 %260, 115
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  %263 = load i8*, i8** %29, align 8
  %264 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %265 = call i32 @print_address_numeric(i8* %263, i32 1, %struct.ui_file* %264)
  br label %266

266:                                              ; preds = %262, %259, %256
  %267 = load %struct.type*, %struct.type** %22, align 8
  %268 = call i32 @TYPE_LENGTH(%struct.type* %267)
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %270, label %287

270:                                              ; preds = %266
  %271 = load %struct.type*, %struct.type** %22, align 8
  %272 = call i32 @TYPE_CODE(%struct.type* %271)
  %273 = icmp eq i32 %272, 137
  br i1 %273, label %274, label %287

274:                                              ; preds = %270
  %275 = load i32, i32* %16, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %274
  %278 = load i32, i32* %16, align 4
  %279 = icmp eq i32 %278, 115
  br i1 %279, label %280, label %287

280:                                              ; preds = %277, %274
  %281 = load i8*, i8** %29, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %283, label %287

283:                                              ; preds = %280
  %284 = load i8*, i8** %29, align 8
  %285 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %286 = call i32 @val_print_string(i8* %284, i32 -1, i32 1, %struct.ui_file* %285)
  store i32 %286, i32* %20, align 4
  br label %287

287:                                              ; preds = %283, %280, %277, %270, %266
  %288 = load %struct.type*, %struct.type** %22, align 8
  %289 = call i32 @is_pascal_string_type(%struct.type* %288, i32* %24, i32* %25, i32* %26, i32* %27, i32* null)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %319

291:                                              ; preds = %287
  %292 = load i8*, i8** %29, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %294, label %319

294:                                              ; preds = %291
  %295 = load i32, i32* %25, align 4
  %296 = call i8* @xmalloc(i32 %295)
  store i8* %296, i8** %32, align 8
  %297 = load i8*, i8** %29, align 8
  %298 = load i32, i32* %24, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr i8, i8* %297, i64 %299
  %301 = ptrtoint i8* %300 to i32
  %302 = load i8*, i8** %32, align 8
  %303 = load i32, i32* %25, align 4
  %304 = call i32 @read_memory(i32 %301, i8* %302, i32 %303)
  %305 = load i8*, i8** %32, align 8
  %306 = load i32, i32* %25, align 4
  %307 = call i8* @extract_unsigned_integer(i8* %305, i32 %306)
  %308 = ptrtoint i8* %307 to i32
  store i32 %308, i32* %31, align 4
  %309 = load i8*, i8** %32, align 8
  %310 = call i32 @xfree(i8* %309)
  %311 = load i8*, i8** %29, align 8
  %312 = load i32, i32* %26, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr i8, i8* %311, i64 %313
  %315 = load i32, i32* %31, align 4
  %316 = load i32, i32* %27, align 4
  %317 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %318 = call i32 @val_print_string(i8* %314, i32 %315, i32 %316, %struct.ui_file* %317)
  store i32 %318, i32* %20, align 4
  br label %397

319:                                              ; preds = %291, %287
  %320 = load %struct.type*, %struct.type** %11, align 8
  %321 = call i32 @pascal_object_is_vtbl_member(%struct.type* %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %396

323:                                              ; preds = %319
  %324 = load %struct.type*, %struct.type** %11, align 8
  %325 = load i8*, i8** %12, align 8
  %326 = load i32, i32* %13, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %325, i64 %327
  %329 = call i8* @unpack_pointer(%struct.type* %324, i8* %328)
  store i8* %329, i8** %33, align 8
  %330 = load i8*, i8** %33, align 8
  %331 = call %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i8* %330)
  store %struct.minimal_symbol* %331, %struct.minimal_symbol** %34, align 8
  %332 = load %struct.minimal_symbol*, %struct.minimal_symbol** %34, align 8
  %333 = icmp ne %struct.minimal_symbol* %332, null
  br i1 %333, label %334, label %348

334:                                              ; preds = %323
  %335 = load i8*, i8** %33, align 8
  %336 = load %struct.minimal_symbol*, %struct.minimal_symbol** %34, align 8
  %337 = call i8* @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %336)
  %338 = icmp eq i8* %335, %337
  br i1 %338, label %339, label %348

339:                                              ; preds = %334
  %340 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %341 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.ui_file* %340)
  %342 = load %struct.minimal_symbol*, %struct.minimal_symbol** %34, align 8
  %343 = call i8* @SYMBOL_PRINT_NAME(%struct.minimal_symbol* %342)
  %344 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %345 = call i32 @fputs_filtered(i8* %343, %struct.ui_file* %344)
  %346 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %347 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %346)
  br label %348

348:                                              ; preds = %339, %334, %323
  %349 = load i8*, i8** %33, align 8
  %350 = icmp ne i8* %349, null
  br i1 %350, label %351, label %395

351:                                              ; preds = %348
  %352 = load i32, i32* @vtblprint, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %395

354:                                              ; preds = %351
  store %struct.symbol* null, %struct.symbol** %36, align 8
  store %struct.block* null, %struct.block** %38, align 8
  %355 = load %struct.minimal_symbol*, %struct.minimal_symbol** %34, align 8
  %356 = icmp ne %struct.minimal_symbol* %355, null
  br i1 %356, label %357, label %363

357:                                              ; preds = %354
  %358 = load %struct.minimal_symbol*, %struct.minimal_symbol** %34, align 8
  %359 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol* %358)
  %360 = load %struct.block*, %struct.block** %38, align 8
  %361 = load i32, i32* @VAR_DOMAIN, align 4
  %362 = call %struct.symbol* @lookup_symbol(i32 %359, %struct.block* %360, i32 %361, i32* %39, i32* null)
  store %struct.symbol* %362, %struct.symbol** %36, align 8
  br label %363

363:                                              ; preds = %357, %354
  %364 = load %struct.symbol*, %struct.symbol** %36, align 8
  %365 = icmp ne %struct.symbol* %364, null
  br i1 %365, label %366, label %369

366:                                              ; preds = %363
  %367 = load %struct.symbol*, %struct.symbol** %36, align 8
  %368 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %367)
  store %struct.type* %368, %struct.type** %37, align 8
  br label %372

369:                                              ; preds = %363
  %370 = load %struct.type*, %struct.type** %11, align 8
  %371 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %370)
  store %struct.type* %371, %struct.type** %37, align 8
  br label %372

372:                                              ; preds = %369, %366
  %373 = load %struct.type*, %struct.type** %37, align 8
  %374 = load i8*, i8** %33, align 8
  %375 = call %struct.value* @value_at(%struct.type* %373, i8* %374, i32* null)
  store %struct.value* %375, %struct.value** %35, align 8
  %376 = load %struct.value*, %struct.value** %35, align 8
  %377 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %378 = load i32, i32* %16, align 4
  %379 = load i32, i32* %17, align 4
  %380 = load i32, i32* %18, align 4
  %381 = add nsw i32 %380, 1
  %382 = load i32, i32* %19, align 4
  %383 = call i32 @common_val_print(%struct.value* %376, %struct.ui_file* %377, i32 %378, i32 %379, i32 %381, i32 %382)
  %384 = load i32, i32* %19, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %394

386:                                              ; preds = %372
  %387 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %388 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %387, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %389 = load i32, i32* %18, align 4
  %390 = mul nsw i32 2, %389
  %391 = add nsw i32 2, %390
  %392 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %393 = call i32 @print_spaces_filtered(i32 %391, %struct.ui_file* %392)
  br label %394

394:                                              ; preds = %386, %372
  br label %395

395:                                              ; preds = %394, %351, %348
  br label %396

396:                                              ; preds = %395, %319
  br label %397

397:                                              ; preds = %396, %294
  %398 = load i32, i32* %20, align 4
  store i32 %398, i32* %10, align 4
  br label %919

399:                                              ; preds = %227
  br label %400

400:                                              ; preds = %399, %215
  br label %916

401:                                              ; preds = %9
  %402 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  br label %916

403:                                              ; preds = %9
  %404 = load %struct.type*, %struct.type** %11, align 8
  %405 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %404)
  %406 = call %struct.type* @check_typedef(%struct.type* %405)
  store %struct.type* %406, %struct.type** %22, align 8
  %407 = load %struct.type*, %struct.type** %22, align 8
  %408 = call i32 @TYPE_CODE(%struct.type* %407)
  %409 = icmp eq i32 %408, 136
  br i1 %409, label %410, label %419

410:                                              ; preds = %403
  %411 = load i8*, i8** %12, align 8
  %412 = load i32, i32* %13, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8, i8* %411, i64 %413
  %415 = load %struct.type*, %struct.type** %22, align 8
  %416 = call i32 @TYPE_DOMAIN_TYPE(%struct.type* %415)
  %417 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %418 = call i32 @pascal_object_print_class_member(i8* %414, i32 %416, %struct.ui_file* %417, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  br label %916

419:                                              ; preds = %403
  %420 = load i32, i32* @addressprint, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %441

422:                                              ; preds = %419
  %423 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %424 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %423, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %425 = load i8*, i8** %12, align 8
  %426 = load i32, i32* %13, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i8, i8* %425, i64 %427
  %429 = load i32, i32* @TARGET_PTR_BIT, align 4
  %430 = load i32, i32* @HOST_CHAR_BIT, align 4
  %431 = sdiv i32 %429, %430
  %432 = call i8* @extract_unsigned_integer(i8* %428, i32 %431)
  %433 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %434 = call i32 @print_address_numeric(i8* %432, i32 1, %struct.ui_file* %433)
  %435 = load i32, i32* %17, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %440

437:                                              ; preds = %422
  %438 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %439 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct.ui_file* %438)
  br label %440

440:                                              ; preds = %437, %422
  br label %441

441:                                              ; preds = %440, %419
  %442 = load i32, i32* %17, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %471

444:                                              ; preds = %441
  %445 = load %struct.type*, %struct.type** %22, align 8
  %446 = call i32 @TYPE_CODE(%struct.type* %445)
  %447 = icmp ne i32 %446, 130
  br i1 %447, label %448, label %467

448:                                              ; preds = %444
  %449 = load %struct.type*, %struct.type** %11, align 8
  %450 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %449)
  %451 = load i32, i32* @builtin_type_void, align 4
  %452 = call %struct.type* @lookup_pointer_type(i32 %451)
  %453 = load i8*, i8** %12, align 8
  %454 = load i32, i32* %13, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i8, i8* %453, i64 %455
  %457 = call i8* @unpack_pointer(%struct.type* %452, i8* %456)
  %458 = call %struct.value* @value_at(%struct.type* %450, i8* %457, i32* null)
  store %struct.value* %458, %struct.value** %40, align 8
  %459 = load %struct.value*, %struct.value** %40, align 8
  %460 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %461 = load i32, i32* %16, align 4
  %462 = load i32, i32* %17, align 4
  %463 = load i32, i32* %18, align 4
  %464 = add nsw i32 %463, 1
  %465 = load i32, i32* %19, align 4
  %466 = call i32 @common_val_print(%struct.value* %459, %struct.ui_file* %460, i32 %461, i32 %462, i32 %464, i32 %465)
  br label %470

467:                                              ; preds = %444
  %468 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %469 = call i32 @fputs_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.ui_file* %468)
  br label %470

470:                                              ; preds = %467, %448
  br label %471

471:                                              ; preds = %470, %441
  br label %916

472:                                              ; preds = %9
  %473 = load i32, i32* %18, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %481

475:                                              ; preds = %472
  %476 = load i32, i32* @unionprint, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %481, label %478

478:                                              ; preds = %475
  %479 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %480 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %479, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %916

481:                                              ; preds = %475, %472
  br label %482

482:                                              ; preds = %9, %481
  %483 = load i32, i32* @vtblprint, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %508

485:                                              ; preds = %482
  %486 = load %struct.type*, %struct.type** %11, align 8
  %487 = call i32 @pascal_object_is_vtbl_ptr_type(%struct.type* %486)
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %508

489:                                              ; preds = %485
  %490 = load i8*, i8** %12, align 8
  %491 = load i32, i32* %13, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i8, i8* %490, i64 %492
  %494 = load %struct.type*, %struct.type** %11, align 8
  %495 = load i32, i32* @VTBL_FNADDR_OFFSET, align 4
  %496 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %494, i32 %495)
  %497 = sdiv i32 %496, 8
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i8, i8* %493, i64 %498
  %500 = load %struct.type*, %struct.type** %11, align 8
  %501 = load i32, i32* @VTBL_FNADDR_OFFSET, align 4
  %502 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %500, i32 %501)
  %503 = call i32 @TYPE_LENGTH(%struct.type* %502)
  %504 = call i8* @extract_unsigned_integer(i8* %499, i32 %503)
  %505 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %506 = load i32, i32* @demangle, align 4
  %507 = call i32 @print_address_demangle(i8* %504, %struct.ui_file* %505, i32 %506)
  br label %547

508:                                              ; preds = %485, %482
  %509 = load %struct.type*, %struct.type** %11, align 8
  %510 = call i32 @is_pascal_string_type(%struct.type* %509, i32* %24, i32* %25, i32* %26, i32* %27, i32* null)
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %534

512:                                              ; preds = %508
  %513 = load i8*, i8** %12, align 8
  %514 = load i32, i32* %13, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i8, i8* %513, i64 %515
  %517 = load i32, i32* %24, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i8, i8* %516, i64 %518
  %520 = load i32, i32* %25, align 4
  %521 = call i8* @extract_unsigned_integer(i8* %519, i32 %520)
  %522 = ptrtoint i8* %521 to i32
  store i32 %522, i32* %21, align 4
  %523 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %524 = load i8*, i8** %12, align 8
  %525 = load i32, i32* %13, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i8, i8* %524, i64 %526
  %528 = load i32, i32* %26, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i8, i8* %527, i64 %529
  %531 = load i32, i32* %21, align 4
  %532 = load i32, i32* %27, align 4
  %533 = call i32 @LA_PRINT_STRING(%struct.ui_file* %523, i8* %530, i32 %531, i32 %532, i32 0)
  br label %546

534:                                              ; preds = %508
  %535 = load %struct.type*, %struct.type** %11, align 8
  %536 = load i8*, i8** %12, align 8
  %537 = load i32, i32* %13, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i8, i8* %536, i64 %538
  %540 = load i8*, i8** %14, align 8
  %541 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %542 = load i32, i32* %16, align 4
  %543 = load i32, i32* %18, align 4
  %544 = load i32, i32* %19, align 4
  %545 = call i32 @pascal_object_print_value_fields(%struct.type* %535, i8* %539, i8* %540, %struct.ui_file* %541, i32 %542, i32 %543, i32 %544, i32* null, i32 0)
  br label %546

546:                                              ; preds = %534, %512
  br label %547

547:                                              ; preds = %546, %489
  br label %916

548:                                              ; preds = %9
  %549 = load i32, i32* %16, align 4
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %560

551:                                              ; preds = %548
  %552 = load i8*, i8** %12, align 8
  %553 = load i32, i32* %13, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i8, i8* %552, i64 %554
  %556 = load %struct.type*, %struct.type** %11, align 8
  %557 = load i32, i32* %16, align 4
  %558 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %559 = call i32 @print_scalar_formatted(i8* %555, %struct.type* %556, i32 %557, i32 0, %struct.ui_file* %558)
  br label %916

560:                                              ; preds = %548
  %561 = load %struct.type*, %struct.type** %11, align 8
  %562 = call i32 @TYPE_NFIELDS(%struct.type* %561)
  store i32 %562, i32* %21, align 4
  %563 = load %struct.type*, %struct.type** %11, align 8
  %564 = load i8*, i8** %12, align 8
  %565 = load i32, i32* %13, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i8, i8* %564, i64 %566
  %568 = call i32 @unpack_long(%struct.type* %563, i8* %567)
  store i32 %568, i32* %28, align 4
  store i32 0, i32* %20, align 4
  br label %569

569:                                              ; preds = %582, %560
  %570 = load i32, i32* %20, align 4
  %571 = load i32, i32* %21, align 4
  %572 = icmp ult i32 %570, %571
  br i1 %572, label %573, label %585

573:                                              ; preds = %569
  %574 = load i32, i32* @QUIT, align 4
  %575 = load i32, i32* %28, align 4
  %576 = load %struct.type*, %struct.type** %11, align 8
  %577 = load i32, i32* %20, align 4
  %578 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %576, i32 %577)
  %579 = icmp eq i32 %575, %578
  br i1 %579, label %580, label %581

580:                                              ; preds = %573
  br label %585

581:                                              ; preds = %573
  br label %582

582:                                              ; preds = %581
  %583 = load i32, i32* %20, align 4
  %584 = add i32 %583, 1
  store i32 %584, i32* %20, align 4
  br label %569

585:                                              ; preds = %580, %569
  %586 = load i32, i32* %20, align 4
  %587 = load i32, i32* %21, align 4
  %588 = icmp ult i32 %586, %587
  br i1 %588, label %589, label %595

589:                                              ; preds = %585
  %590 = load %struct.type*, %struct.type** %11, align 8
  %591 = load i32, i32* %20, align 4
  %592 = call i8* @TYPE_FIELD_NAME(%struct.type* %590, i32 %591)
  %593 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %594 = call i32 @fputs_filtered(i8* %592, %struct.ui_file* %593)
  br label %599

595:                                              ; preds = %585
  %596 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %597 = load i32, i32* %28, align 4
  %598 = call i32 @print_longest(%struct.ui_file* %596, i8 signext 100, i32 0, i32 %597)
  br label %599

599:                                              ; preds = %595, %589
  br label %916

600:                                              ; preds = %9
  %601 = load i32, i32* %16, align 4
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %612

603:                                              ; preds = %600
  %604 = load i8*, i8** %12, align 8
  %605 = load i32, i32* %13, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i8, i8* %604, i64 %606
  %608 = load %struct.type*, %struct.type** %11, align 8
  %609 = load i32, i32* %16, align 4
  %610 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %611 = call i32 @print_scalar_formatted(i8* %607, %struct.type* %608, i32 %609, i32 0, %struct.ui_file* %610)
  br label %916

612:                                              ; preds = %600
  %613 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %614 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %613, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %615 = load %struct.type*, %struct.type** %11, align 8
  %616 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %617 = call i32 @type_print(%struct.type* %615, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %struct.ui_file* %616, i32 -1)
  %618 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %619 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %618, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %620 = load i8*, i8** %14, align 8
  %621 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %622 = load i32, i32* @demangle, align 4
  %623 = call i32 @print_address_demangle(i8* %620, %struct.ui_file* %621, i32 %622)
  br label %916

624:                                              ; preds = %9
  %625 = load i32, i32* %16, align 4
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %627, label %629

627:                                              ; preds = %624
  %628 = load i32, i32* %16, align 4
  br label %631

629:                                              ; preds = %624
  %630 = load i32, i32* @output_format, align 4
  br label %631

631:                                              ; preds = %629, %627
  %632 = phi i32 [ %628, %627 ], [ %630, %629 ]
  store i32 %632, i32* %16, align 4
  %633 = load i32, i32* %16, align 4
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %635, label %644

635:                                              ; preds = %631
  %636 = load i8*, i8** %12, align 8
  %637 = load i32, i32* %13, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds i8, i8* %636, i64 %638
  %640 = load %struct.type*, %struct.type** %11, align 8
  %641 = load i32, i32* %16, align 4
  %642 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %643 = call i32 @print_scalar_formatted(i8* %639, %struct.type* %640, i32 %641, i32 0, %struct.ui_file* %642)
  br label %671

644:                                              ; preds = %631
  %645 = load %struct.type*, %struct.type** %11, align 8
  %646 = load i8*, i8** %12, align 8
  %647 = load i32, i32* %13, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds i8, i8* %646, i64 %648
  %650 = call i32 @unpack_long(%struct.type* %645, i8* %649)
  store i32 %650, i32* %28, align 4
  %651 = load i32, i32* %28, align 4
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %653, label %656

653:                                              ; preds = %644
  %654 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %655 = call i32 @fputs_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), %struct.ui_file* %654)
  br label %670

656:                                              ; preds = %644
  %657 = load i32, i32* %28, align 4
  %658 = icmp eq i32 %657, 1
  br i1 %658, label %659, label %662

659:                                              ; preds = %656
  %660 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %661 = call i32 @fputs_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), %struct.ui_file* %660)
  br label %669

662:                                              ; preds = %656
  %663 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %664 = call i32 @fputs_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), %struct.ui_file* %663)
  %665 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %666 = load i32, i32* %28, align 4
  %667 = sext i32 %666 to i64
  %668 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %665, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 %667)
  br label %669

669:                                              ; preds = %662, %659
  br label %670

670:                                              ; preds = %669, %653
  br label %671

671:                                              ; preds = %670, %635
  br label %916

672:                                              ; preds = %9, %9
  %673 = load i32, i32* %16, align 4
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %677

675:                                              ; preds = %672
  %676 = load i32, i32* %16, align 4
  br label %679

677:                                              ; preds = %672
  %678 = load i32, i32* @output_format, align 4
  br label %679

679:                                              ; preds = %677, %675
  %680 = phi i32 [ %676, %675 ], [ %678, %677 ]
  store i32 %680, i32* %16, align 4
  %681 = load i32, i32* %16, align 4
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %683, label %692

683:                                              ; preds = %679
  %684 = load i8*, i8** %12, align 8
  %685 = load i32, i32* %13, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds i8, i8* %684, i64 %686
  %688 = load %struct.type*, %struct.type** %11, align 8
  %689 = load i32, i32* %16, align 4
  %690 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %691 = call i32 @print_scalar_formatted(i8* %687, %struct.type* %688, i32 %689, i32 0, %struct.ui_file* %690)
  br label %700

692:                                              ; preds = %679
  %693 = load %struct.type*, %struct.type** %11, align 8
  %694 = load i8*, i8** %12, align 8
  %695 = load i32, i32* %13, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds i8, i8* %694, i64 %696
  %698 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %699 = call i32 @val_print_type_code_int(%struct.type* %693, i8* %697, %struct.ui_file* %698)
  br label %700

700:                                              ; preds = %692, %683
  br label %916

701:                                              ; preds = %9
  %702 = load i32, i32* %16, align 4
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %704, label %706

704:                                              ; preds = %701
  %705 = load i32, i32* %16, align 4
  br label %708

706:                                              ; preds = %701
  %707 = load i32, i32* @output_format, align 4
  br label %708

708:                                              ; preds = %706, %704
  %709 = phi i32 [ %705, %704 ], [ %707, %706 ]
  store i32 %709, i32* %16, align 4
  %710 = load i32, i32* %16, align 4
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %721

712:                                              ; preds = %708
  %713 = load i8*, i8** %12, align 8
  %714 = load i32, i32* %13, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i8, i8* %713, i64 %715
  %717 = load %struct.type*, %struct.type** %11, align 8
  %718 = load i32, i32* %16, align 4
  %719 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %720 = call i32 @print_scalar_formatted(i8* %716, %struct.type* %717, i32 %718, i32 0, %struct.ui_file* %719)
  br label %746

721:                                              ; preds = %708
  %722 = load %struct.type*, %struct.type** %11, align 8
  %723 = load i8*, i8** %12, align 8
  %724 = load i32, i32* %13, align 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds i8, i8* %723, i64 %725
  %727 = call i32 @unpack_long(%struct.type* %722, i8* %726)
  store i32 %727, i32* %28, align 4
  %728 = load %struct.type*, %struct.type** %11, align 8
  %729 = call i32 @TYPE_UNSIGNED(%struct.type* %728)
  %730 = icmp ne i32 %729, 0
  br i1 %730, label %731, label %735

731:                                              ; preds = %721
  %732 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %733 = load i32, i32* %28, align 4
  %734 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %732, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %733)
  br label %739

735:                                              ; preds = %721
  %736 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %737 = load i32, i32* %28, align 4
  %738 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %736, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 %737)
  br label %739

739:                                              ; preds = %735, %731
  %740 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %741 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), %struct.ui_file* %740)
  %742 = load i32, i32* %28, align 4
  %743 = trunc i32 %742 to i8
  %744 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %745 = call i32 @LA_PRINT_CHAR(i8 zeroext %743, %struct.ui_file* %744)
  br label %746

746:                                              ; preds = %739, %712
  br label %916

747:                                              ; preds = %9
  %748 = load i32, i32* %16, align 4
  %749 = icmp ne i32 %748, 0
  br i1 %749, label %750, label %759

750:                                              ; preds = %747
  %751 = load i8*, i8** %12, align 8
  %752 = load i32, i32* %13, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds i8, i8* %751, i64 %753
  %755 = load %struct.type*, %struct.type** %11, align 8
  %756 = load i32, i32* %16, align 4
  %757 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %758 = call i32 @print_scalar_formatted(i8* %754, %struct.type* %755, i32 %756, i32 0, %struct.ui_file* %757)
  br label %767

759:                                              ; preds = %747
  %760 = load i8*, i8** %12, align 8
  %761 = load i32, i32* %13, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds i8, i8* %760, i64 %762
  %764 = load %struct.type*, %struct.type** %11, align 8
  %765 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %766 = call i32 @print_floating(i8* %763, %struct.type* %764, %struct.ui_file* %765)
  br label %767

767:                                              ; preds = %759, %750
  br label %916

768:                                              ; preds = %9, %9
  %769 = load %struct.type*, %struct.type** %11, align 8
  %770 = call %struct.type* @TYPE_INDEX_TYPE(%struct.type* %769)
  store %struct.type* %770, %struct.type** %22, align 8
  %771 = load %struct.type*, %struct.type** %22, align 8
  %772 = call i32 @CHECK_TYPEDEF(%struct.type* %771)
  %773 = load %struct.type*, %struct.type** %22, align 8
  %774 = call i32 @TYPE_STUB(%struct.type* %773)
  %775 = icmp ne i32 %774, 0
  br i1 %775, label %776, label %781

776:                                              ; preds = %768
  %777 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %778 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %777, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  %779 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %780 = call i32 @gdb_flush(%struct.ui_file* %779)
  br label %916

781:                                              ; preds = %768
  %782 = load %struct.type*, %struct.type** %22, align 8
  store %struct.type* %782, %struct.type** %41, align 8
  %783 = load %struct.type*, %struct.type** %11, align 8
  %784 = call i32 @TYPE_CODE(%struct.type* %783)
  %785 = icmp eq i32 %784, 144
  %786 = zext i1 %785 to i32
  store i32 %786, i32* %45, align 4
  store i32 0, i32* %46, align 4
  %787 = load i32, i32* %45, align 4
  %788 = icmp ne i32 %787, 0
  br i1 %788, label %789, label %792

789:                                              ; preds = %781
  %790 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %791 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), %struct.ui_file* %790)
  br label %795

792:                                              ; preds = %781
  %793 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %794 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), %struct.ui_file* %793)
  br label %795

795:                                              ; preds = %792, %789
  %796 = load %struct.type*, %struct.type** %41, align 8
  %797 = call i32 @get_discrete_bounds(%struct.type* %796, i32* %42, i32* %43)
  store i32 %797, i32* %44, align 4
  br label %798

798:                                              ; preds = %820, %795
  %799 = load i32, i32* %44, align 4
  %800 = icmp slt i32 %799, 0
  br i1 %800, label %801, label %804

801:                                              ; preds = %798
  %802 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %803 = call i32 @fputs_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), %struct.ui_file* %802)
  br label %892

804:                                              ; preds = %798
  %805 = load i32, i32* %42, align 4
  store i32 %805, i32* %44, align 4
  br label %806

806:                                              ; preds = %888, %804
  %807 = load i32, i32* %44, align 4
  %808 = load i32, i32* %43, align 4
  %809 = icmp sle i32 %807, %808
  br i1 %809, label %810, label %891

810:                                              ; preds = %806
  %811 = load %struct.type*, %struct.type** %11, align 8
  %812 = load i8*, i8** %12, align 8
  %813 = load i32, i32* %13, align 4
  %814 = sext i32 %813 to i64
  %815 = getelementptr inbounds i8, i8* %812, i64 %814
  %816 = load i32, i32* %44, align 4
  %817 = call i32 @value_bit_index(%struct.type* %811, i8* %815, i32 %816)
  store i32 %817, i32* %47, align 4
  %818 = load i32, i32* %47, align 4
  %819 = icmp slt i32 %818, 0
  br i1 %819, label %820, label %822

820:                                              ; preds = %810
  %821 = load i32, i32* %47, align 4
  store i32 %821, i32* %44, align 4
  br label %798

822:                                              ; preds = %810
  %823 = load i32, i32* %45, align 4
  %824 = icmp ne i32 %823, 0
  br i1 %824, label %825, label %829

825:                                              ; preds = %822
  %826 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %827 = load i32, i32* %47, align 4
  %828 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %826, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 %827)
  br label %887

829:                                              ; preds = %822
  %830 = load i32, i32* %47, align 4
  %831 = icmp ne i32 %830, 0
  br i1 %831, label %832, label %886

832:                                              ; preds = %829
  %833 = load i32, i32* %46, align 4
  %834 = icmp ne i32 %833, 0
  br i1 %834, label %835, label %838

835:                                              ; preds = %832
  %836 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %837 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), %struct.ui_file* %836)
  br label %838

838:                                              ; preds = %835, %832
  %839 = load %struct.type*, %struct.type** %41, align 8
  %840 = load i32, i32* %44, align 4
  %841 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %842 = call i32 @print_type_scalar(%struct.type* %839, i32 %840, %struct.ui_file* %841)
  store i32 1, i32* %46, align 4
  %843 = load i32, i32* %44, align 4
  %844 = add nsw i32 %843, 1
  %845 = load i32, i32* %43, align 4
  %846 = icmp sle i32 %844, %845
  br i1 %846, label %847, label %885

847:                                              ; preds = %838
  %848 = load %struct.type*, %struct.type** %11, align 8
  %849 = load i8*, i8** %12, align 8
  %850 = load i32, i32* %13, align 4
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds i8, i8* %849, i64 %851
  %853 = load i32, i32* %44, align 4
  %854 = add nsw i32 %853, 1
  store i32 %854, i32* %44, align 4
  %855 = call i32 @value_bit_index(%struct.type* %848, i8* %852, i32 %854)
  %856 = icmp ne i32 %855, 0
  br i1 %856, label %857, label %885

857:                                              ; preds = %847
  %858 = load i32, i32* %44, align 4
  store i32 %858, i32* %48, align 4
  %859 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %860 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), %struct.ui_file* %859)
  br label %861

861:                                              ; preds = %878, %857
  %862 = load i32, i32* %44, align 4
  %863 = add nsw i32 %862, 1
  %864 = load i32, i32* %43, align 4
  %865 = icmp sle i32 %863, %864
  br i1 %865, label %866, label %876

866:                                              ; preds = %861
  %867 = load %struct.type*, %struct.type** %11, align 8
  %868 = load i8*, i8** %12, align 8
  %869 = load i32, i32* %13, align 4
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds i8, i8* %868, i64 %870
  %872 = load i32, i32* %44, align 4
  %873 = add nsw i32 %872, 1
  store i32 %873, i32* %44, align 4
  %874 = call i32 @value_bit_index(%struct.type* %867, i8* %871, i32 %873)
  %875 = icmp ne i32 %874, 0
  br label %876

876:                                              ; preds = %866, %861
  %877 = phi i1 [ false, %861 ], [ %875, %866 ]
  br i1 %877, label %878, label %880

878:                                              ; preds = %876
  %879 = load i32, i32* %44, align 4
  store i32 %879, i32* %48, align 4
  br label %861

880:                                              ; preds = %876
  %881 = load %struct.type*, %struct.type** %41, align 8
  %882 = load i32, i32* %48, align 4
  %883 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %884 = call i32 @print_type_scalar(%struct.type* %881, i32 %882, %struct.ui_file* %883)
  br label %885

885:                                              ; preds = %880, %847, %838
  br label %886

886:                                              ; preds = %885, %829
  br label %887

887:                                              ; preds = %886, %825
  br label %888

888:                                              ; preds = %887
  %889 = load i32, i32* %44, align 4
  %890 = add nsw i32 %889, 1
  store i32 %890, i32* %44, align 4
  br label %806

891:                                              ; preds = %806
  br label %892

892:                                              ; preds = %891, %801
  %893 = load i32, i32* %45, align 4
  %894 = icmp ne i32 %893, 0
  br i1 %894, label %895, label %898

895:                                              ; preds = %892
  %896 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %897 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), %struct.ui_file* %896)
  br label %901

898:                                              ; preds = %892
  %899 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %900 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), %struct.ui_file* %899)
  br label %901

901:                                              ; preds = %898, %895
  br label %902

902:                                              ; preds = %901
  br label %916

903:                                              ; preds = %9
  %904 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %905 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %904, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  br label %916

906:                                              ; preds = %9
  %907 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %908 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %907, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  br label %916

909:                                              ; preds = %9
  %910 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %911 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %910, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  br label %916

912:                                              ; preds = %9
  %913 = load %struct.type*, %struct.type** %11, align 8
  %914 = call i32 @TYPE_CODE(%struct.type* %913)
  %915 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i64 0, i64 0), i32 %914)
  br label %916

916:                                              ; preds = %912, %909, %906, %903, %902, %776, %767, %746, %700, %671, %612, %603, %599, %551, %547, %478, %471, %410, %401, %400, %196, %180, %171
  %917 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %918 = call i32 @gdb_flush(%struct.ui_file* %917)
  store i32 0, i32* %10, align 4
  br label %919

919:                                              ; preds = %916, %397, %251
  %920 = load i32, i32* %10, align 4
  ret i32 %920
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local i32 @print_spaces_filtered(i32, %struct.ui_file*) #1

declare dso_local i32 @LA_PRINT_STRING(%struct.ui_file*, i8*, i32, i32, i32) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @pascal_object_is_vtbl_ptr_type(%struct.type*) #1

declare dso_local i32 @val_print_array_elements(%struct.type*, i8*, i8*, %struct.ui_file*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @print_scalar_formatted(i8*, %struct.type*, i32, i32, %struct.ui_file*) #1

declare dso_local i32 @print_address_demangle(i8*, %struct.ui_file*, i32) #1

declare dso_local i8* @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @pascal_object_print_class_method(i8*, %struct.type*, %struct.ui_file*) #1

declare dso_local i32 @pascal_object_print_class_member(i8*, i32, %struct.ui_file*, i8*) #1

declare dso_local i32 @TYPE_DOMAIN_TYPE(%struct.type*) #1

declare dso_local i8* @unpack_pointer(%struct.type*, i8*) #1

declare dso_local i32 @print_address_numeric(i8*, i32, %struct.ui_file*) #1

declare dso_local i32 @val_print_string(i8*, i32, i32, %struct.ui_file*) #1

declare dso_local i32 @is_pascal_string_type(%struct.type*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @read_memory(i32, i8*, i32) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @pascal_object_is_vtbl_member(%struct.type*) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i8*) #1

declare dso_local i8* @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i8* @SYMBOL_PRINT_NAME(%struct.minimal_symbol*) #1

declare dso_local %struct.symbol* @lookup_symbol(i32, %struct.block*, i32, i32*, i32*) #1

declare dso_local i32 @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol*) #1

declare dso_local %struct.type* @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local %struct.value* @value_at(%struct.type*, i8*, i32*) #1

declare dso_local i32 @common_val_print(%struct.value*, %struct.ui_file*, i32, i32, i32, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.type* @lookup_pointer_type(i32) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @pascal_object_print_value_fields(%struct.type*, i8*, i8*, %struct.ui_file*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @unpack_long(%struct.type*, i8*) #1

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i32 @print_longest(%struct.ui_file*, i8 signext, i32, i32) #1

declare dso_local i32 @type_print(%struct.type*, i8*, %struct.ui_file*, i32) #1

declare dso_local i32 @val_print_type_code_int(%struct.type*, i8*, %struct.ui_file*) #1

declare dso_local i32 @TYPE_UNSIGNED(%struct.type*) #1

declare dso_local i32 @LA_PRINT_CHAR(i8 zeroext, %struct.ui_file*) #1

declare dso_local i32 @print_floating(i8*, %struct.type*, %struct.ui_file*) #1

declare dso_local %struct.type* @TYPE_INDEX_TYPE(%struct.type*) #1

declare dso_local i32 @TYPE_STUB(%struct.type*) #1

declare dso_local i32 @gdb_flush(%struct.ui_file*) #1

declare dso_local i32 @get_discrete_bounds(%struct.type*, i32*, i32*) #1

declare dso_local i32 @value_bit_index(%struct.type*, i8*, i32) #1

declare dso_local i32 @print_type_scalar(%struct.type*, i32, %struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
