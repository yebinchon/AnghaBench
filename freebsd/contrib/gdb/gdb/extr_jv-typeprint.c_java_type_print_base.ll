; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-typeprint.c_java_type_print_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-typeprint.c_java_type_print_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }
%struct.fn_field = type { i32 }

@QUIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"<type unknown>\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"class \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"{...}\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"<incomplete type>\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"<no data fields>\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"_vptr\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"protected \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"private \00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"public \00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"abstract \00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"final \00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"synchronized \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"native \00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"<undefined type> %s;\0A\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DMGL_ANSI = common dso_local global i32 0, align 4
@DMGL_PARAMS = common dso_local global i32 0, align 4
@DMGL_JAVA = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, %struct.ui_file*, i32, i32)* @java_type_print_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @java_type_print_base(%struct.type* %0, %struct.ui_file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.fn_field*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8, align 1
  store %struct.type* %0, %struct.type** %5, align 8
  store %struct.ui_file* %1, %struct.ui_file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %25 = load i32, i32* @QUIT, align 4
  %26 = call i32 @wrap_here(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.type*, %struct.type** %5, align 8
  %28 = icmp eq %struct.type* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %31 = call i32 @fputs_filtered(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %30)
  br label %464

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.type*, %struct.type** %5, align 8
  %37 = call i8* @TYPE_NAME(%struct.type* %36)
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.type*, %struct.type** %5, align 8
  %41 = call i8* @TYPE_NAME(%struct.type* %40)
  %42 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %43 = call i32 @fputs_filtered(i8* %41, %struct.ui_file* %42)
  br label %464

44:                                               ; preds = %35, %32
  %45 = load %struct.type*, %struct.type** %5, align 8
  %46 = call i32 @CHECK_TYPEDEF(%struct.type* %45)
  %47 = load %struct.type*, %struct.type** %5, align 8
  %48 = call i32 @TYPE_CODE(%struct.type* %47)
  switch i32 %48, label %458 [
    i32 129, label %49
    i32 128, label %55
  ]

49:                                               ; preds = %44
  %50 = load %struct.type*, %struct.type** %5, align 8
  %51 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %50)
  %52 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  call void @java_type_print_base(%struct.type* %51, %struct.ui_file* %52, i32 %53, i32 %54)
  br label %464

55:                                               ; preds = %44
  %56 = load %struct.type*, %struct.type** %5, align 8
  %57 = call i8* @TYPE_TAG_NAME(%struct.type* %56)
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load %struct.type*, %struct.type** %5, align 8
  %61 = call i8* @TYPE_TAG_NAME(%struct.type* %60)
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 91
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load %struct.type*, %struct.type** %5, align 8
  %68 = call i8* @TYPE_TAG_NAME(%struct.type* %67)
  %69 = call i8* @java_demangle_type_signature(i8* %68)
  store i8* %69, i8** %13, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %72 = call i32 @fputs_filtered(i8* %70, %struct.ui_file* %71)
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @xfree(i8* %73)
  br label %464

75:                                               ; preds = %59, %55
  %76 = load i32, i32* %7, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %80 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %75
  %82 = load %struct.type*, %struct.type** %5, align 8
  %83 = call i8* @TYPE_TAG_NAME(%struct.type* %82)
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load %struct.type*, %struct.type** %5, align 8
  %87 = call i8* @TYPE_TAG_NAME(%struct.type* %86)
  %88 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %89 = call i32 @fputs_filtered(i8* %87, %struct.ui_file* %88)
  %90 = load i32, i32* %7, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %94 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %93)
  br label %95

95:                                               ; preds = %92, %85
  br label %96

96:                                               ; preds = %95, %81
  %97 = call i32 @wrap_here(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load %struct.type*, %struct.type** %5, align 8
  %102 = call i8* @TYPE_TAG_NAME(%struct.type* %101)
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %106 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %100
  br label %457

108:                                              ; preds = %96
  %109 = load i32, i32* %7, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load %struct.type*, %struct.type** %5, align 8
  %113 = call i8* @TYPE_TAG_NAME(%struct.type* %112)
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %456

115:                                              ; preds = %111, %108
  %116 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %117 = load %struct.type*, %struct.type** %5, align 8
  %118 = call i32 @java_type_print_derivation_info(%struct.ui_file* %116, %struct.type* %117)
  %119 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %120 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %121 = load %struct.type*, %struct.type** %5, align 8
  %122 = call i32 @TYPE_NFIELDS(%struct.type* %121)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %115
  %125 = load %struct.type*, %struct.type** %5, align 8
  %126 = call i32 @TYPE_NFN_FIELDS(%struct.type* %125)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %124
  %129 = load %struct.type*, %struct.type** %5, align 8
  %130 = call i32 @TYPE_STUB(%struct.type* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 4
  %135 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %136 = call i32 @fprintfi_filtered(i32 %134, %struct.ui_file* %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %142

137:                                              ; preds = %128
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 4
  %140 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %141 = call i32 @fprintfi_filtered(i32 %139, %struct.ui_file* %140, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %142

142:                                              ; preds = %137, %132
  br label %143

143:                                              ; preds = %142, %124, %115
  %144 = load %struct.type*, %struct.type** %5, align 8
  %145 = call i32 @TYPE_NFIELDS(%struct.type* %144)
  store i32 %145, i32* %10, align 4
  %146 = load %struct.type*, %struct.type** %5, align 8
  %147 = call i32 @TYPE_N_BASECLASSES(%struct.type* %146)
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %227, %143
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %230

152:                                              ; preds = %148
  %153 = load i32, i32* @QUIT, align 4
  %154 = load %struct.type*, %struct.type** %5, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i32* @TYPE_FIELD_NAME(%struct.type* %154, i32 %155)
  %157 = call i32 @strncmp(i32* %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 5)
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %152
  %160 = load %struct.type*, %struct.type** %5, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32* @TYPE_FIELD_NAME(%struct.type* %160, i32 %161)
  %163 = getelementptr inbounds i32, i32* %162, i64 5
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @is_cplus_marker(i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %227

168:                                              ; preds = %159, %152
  %169 = load %struct.type*, %struct.type** %5, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i32* @TYPE_FIELD_NAME(%struct.type* %169, i32 %170)
  %172 = call i32 @strncmp(i32* %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 5)
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %227

175:                                              ; preds = %168
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 4
  %178 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %179 = call i32 @print_spaces_filtered(i32 %177, %struct.ui_file* %178)
  %180 = load %struct.type*, %struct.type** %5, align 8
  %181 = call i32 @HAVE_CPLUS_STRUCT(%struct.type* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %204

183:                                              ; preds = %175
  %184 = load %struct.type*, %struct.type** %5, align 8
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @TYPE_FIELD_PROTECTED(%struct.type* %184, i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %190 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %189, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  br label %203

191:                                              ; preds = %183
  %192 = load %struct.type*, %struct.type** %5, align 8
  %193 = load i32, i32* %9, align 4
  %194 = call i32 @TYPE_FIELD_PRIVATE(%struct.type* %192, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %198 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %202

199:                                              ; preds = %191
  %200 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %201 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %202

202:                                              ; preds = %199, %196
  br label %203

203:                                              ; preds = %202, %188
  br label %204

204:                                              ; preds = %203, %175
  %205 = load %struct.type*, %struct.type** %5, align 8
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @TYPE_FIELD_STATIC(%struct.type* %205, i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %211 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %210, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %204
  %213 = load %struct.type*, %struct.type** %5, align 8
  %214 = load i32, i32* %9, align 4
  %215 = call i32 @TYPE_FIELD_TYPE(%struct.type* %213, i32 %214)
  %216 = load %struct.type*, %struct.type** %5, align 8
  %217 = load i32, i32* %9, align 4
  %218 = call i32* @TYPE_FIELD_NAME(%struct.type* %216, i32 %217)
  %219 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %220 = load i32, i32* %7, align 4
  %221 = sub nsw i32 %220, 1
  %222 = load i32, i32* %8, align 4
  %223 = add nsw i32 %222, 4
  %224 = call i32 @java_print_type(i32 %215, i32* %218, %struct.ui_file* %219, i32 %221, i32 %223)
  %225 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %226 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %225, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %227

227:                                              ; preds = %212, %174, %167
  %228 = load i32, i32* %9, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %9, align 4
  br label %148

230:                                              ; preds = %148
  %231 = load %struct.type*, %struct.type** %5, align 8
  %232 = call i32 @TYPE_NFN_FIELDS(%struct.type* %231)
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %237 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %236, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %238

238:                                              ; preds = %235, %230
  store i32 0, i32* %9, align 4
  br label %239

239:                                              ; preds = %449, %238
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* %10, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %452

243:                                              ; preds = %239
  %244 = load %struct.type*, %struct.type** %5, align 8
  %245 = load i32, i32* %9, align 4
  %246 = call %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type* %244, i32 %245)
  store %struct.fn_field* %246, %struct.fn_field** %14, align 8
  %247 = load %struct.type*, %struct.type** %5, align 8
  %248 = load i32, i32* %9, align 4
  %249 = call i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type* %247, i32 %248)
  store i32 %249, i32* %19, align 4
  %250 = load %struct.type*, %struct.type** %5, align 8
  %251 = load i32, i32* %9, align 4
  %252 = call i8* @TYPE_FN_FIELDLIST_NAME(%struct.type* %250, i32 %251)
  store i8* %252, i8** %16, align 8
  %253 = load %struct.type*, %struct.type** %5, align 8
  %254 = call i8* @type_name_no_tag(%struct.type* %253)
  store i8* %254, i8** %17, align 8
  %255 = load i8*, i8** %17, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %262

257:                                              ; preds = %243
  %258 = load i8*, i8** %16, align 8
  %259 = load i8*, i8** %17, align 8
  %260 = call i32 @strcmp(i8* %258, i8* %259)
  %261 = icmp eq i32 %260, 0
  br label %262

262:                                              ; preds = %257, %243
  %263 = phi i1 [ false, %243 ], [ %261, %257 ]
  %264 = zext i1 %263 to i32
  store i32 %264, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %265

265:                                              ; preds = %445, %262
  %266 = load i32, i32* %15, align 4
  %267 = load i32, i32* %19, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %448

269:                                              ; preds = %265
  %270 = load %struct.fn_field*, %struct.fn_field** %14, align 8
  %271 = load i32, i32* %15, align 4
  %272 = call i8* @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field* %270, i32 %271)
  store i8* %272, i8** %20, align 8
  %273 = load i8*, i8** %20, align 8
  %274 = call i32 @is_constructor_name(i8* %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %280, label %276

276:                                              ; preds = %269
  %277 = load i8*, i8** %20, align 8
  %278 = call i32 @is_destructor_name(i8* %277)
  %279 = icmp ne i32 %278, 0
  br label %280

280:                                              ; preds = %276, %269
  %281 = phi i1 [ true, %269 ], [ %279, %276 ]
  %282 = zext i1 %281 to i32
  store i32 %282, i32* %21, align 4
  %283 = load i32, i32* @QUIT, align 4
  %284 = load i32, i32* %8, align 4
  %285 = add nsw i32 %284, 4
  %286 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %287 = call i32 @print_spaces_filtered(i32 %285, %struct.ui_file* %286)
  %288 = load %struct.fn_field*, %struct.fn_field** %14, align 8
  %289 = load i32, i32* %15, align 4
  %290 = call i32 @TYPE_FN_FIELD_PROTECTED(%struct.fn_field* %288, i32 %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %280
  %293 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %294 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %293, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  br label %313

295:                                              ; preds = %280
  %296 = load %struct.fn_field*, %struct.fn_field** %14, align 8
  %297 = load i32, i32* %15, align 4
  %298 = call i32 @TYPE_FN_FIELD_PRIVATE(%struct.fn_field* %296, i32 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %295
  %301 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %302 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %301, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %312

303:                                              ; preds = %295
  %304 = load %struct.fn_field*, %struct.fn_field** %14, align 8
  %305 = load i32, i32* %15, align 4
  %306 = call i32 @TYPE_FN_FIELD_PUBLIC(%struct.fn_field* %304, i32 %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %303
  %309 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %310 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %309, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %311

311:                                              ; preds = %308, %303
  br label %312

312:                                              ; preds = %311, %300
  br label %313

313:                                              ; preds = %312, %292
  %314 = load %struct.fn_field*, %struct.fn_field** %14, align 8
  %315 = load i32, i32* %15, align 4
  %316 = call i32 @TYPE_FN_FIELD_ABSTRACT(%struct.fn_field* %314, i32 %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %313
  %319 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %320 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %319, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %321

321:                                              ; preds = %318, %313
  %322 = load %struct.fn_field*, %struct.fn_field** %14, align 8
  %323 = load i32, i32* %15, align 4
  %324 = call i32 @TYPE_FN_FIELD_STATIC(%struct.fn_field* %322, i32 %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %321
  %327 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %328 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %327, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %329

329:                                              ; preds = %326, %321
  %330 = load %struct.fn_field*, %struct.fn_field** %14, align 8
  %331 = load i32, i32* %15, align 4
  %332 = call i32 @TYPE_FN_FIELD_FINAL(%struct.fn_field* %330, i32 %331)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %329
  %335 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %336 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %335, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %337

337:                                              ; preds = %334, %329
  %338 = load %struct.fn_field*, %struct.fn_field** %14, align 8
  %339 = load i32, i32* %15, align 4
  %340 = call i32 @TYPE_FN_FIELD_SYNCHRONIZED(%struct.fn_field* %338, i32 %339)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %337
  %343 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %344 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %343, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  br label %345

345:                                              ; preds = %342, %337
  %346 = load %struct.fn_field*, %struct.fn_field** %14, align 8
  %347 = load i32, i32* %15, align 4
  %348 = call i32 @TYPE_FN_FIELD_NATIVE(%struct.fn_field* %346, i32 %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %345
  %351 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %352 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %351, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  br label %353

353:                                              ; preds = %350, %345
  %354 = load %struct.fn_field*, %struct.fn_field** %14, align 8
  %355 = load i32, i32* %15, align 4
  %356 = call %struct.type* @TYPE_FN_FIELD_TYPE(%struct.fn_field* %354, i32 %355)
  %357 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %356)
  %358 = icmp eq %struct.type* %357, null
  br i1 %358, label %359, label %365

359:                                              ; preds = %353
  %360 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %361 = load %struct.fn_field*, %struct.fn_field** %14, align 8
  %362 = load i32, i32* %15, align 4
  %363 = call i8* @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field* %361, i32 %362)
  %364 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %360, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8* %363)
  br label %448

365:                                              ; preds = %353
  %366 = load i32, i32* %18, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %380, label %368

368:                                              ; preds = %365
  %369 = load i32, i32* %21, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %380, label %371

371:                                              ; preds = %368
  %372 = load %struct.fn_field*, %struct.fn_field** %14, align 8
  %373 = load i32, i32* %15, align 4
  %374 = call %struct.type* @TYPE_FN_FIELD_TYPE(%struct.fn_field* %372, i32 %373)
  %375 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %374)
  %376 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %377 = call i32 @type_print(%struct.type* %375, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i64 0, i64 0), %struct.ui_file* %376, i32 -1)
  %378 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %379 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %378)
  br label %380

380:                                              ; preds = %371, %368, %365
  br label %381

381:                                              ; preds = %380
  %382 = load %struct.fn_field*, %struct.fn_field** %14, align 8
  %383 = load i32, i32* %15, align 4
  %384 = call i32 @TYPE_FN_FIELD_STUB(%struct.fn_field* %382, i32 %383)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %381
  %387 = load %struct.type*, %struct.type** %5, align 8
  %388 = load i32, i32* %9, align 4
  %389 = load i32, i32* %15, align 4
  %390 = call i8* @gdb_mangle_name(%struct.type* %387, i32 %388, i32 %389)
  store i8* %390, i8** %11, align 8
  br label %395

391:                                              ; preds = %381
  %392 = load %struct.fn_field*, %struct.fn_field** %14, align 8
  %393 = load i32, i32* %15, align 4
  %394 = call i8* @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field* %392, i32 %393)
  store i8* %394, i8** %11, align 8
  br label %395

395:                                              ; preds = %391, %386
  %396 = load i8*, i8** %11, align 8
  %397 = load i32, i32* @DMGL_ANSI, align 4
  %398 = load i32, i32* @DMGL_PARAMS, align 4
  %399 = or i32 %397, %398
  %400 = load i32, i32* @DMGL_JAVA, align 4
  %401 = or i32 %399, %400
  %402 = call i8* @cplus_demangle(i8* %396, i32 %401)
  store i8* %402, i8** %12, align 8
  %403 = load i8*, i8** %12, align 8
  %404 = icmp eq i8* %403, null
  br i1 %404, label %405, label %408

405:                                              ; preds = %395
  %406 = load i8*, i8** %11, align 8
  %407 = call i8* @xstrdup(i8* %406)
  store i8* %407, i8** %12, align 8
  br label %408

408:                                              ; preds = %405, %395
  %409 = load i8*, i8** %12, align 8
  store i8* %409, i8** %22, align 8
  store i8* %409, i8** %23, align 8
  br label %410

410:                                              ; preds = %408, %428
  %411 = load i8*, i8** %23, align 8
  %412 = getelementptr inbounds i8, i8* %411, i32 1
  store i8* %412, i8** %23, align 8
  %413 = load i8, i8* %411, align 1
  store i8 %413, i8* %24, align 1
  %414 = load i8, i8* %24, align 1
  %415 = sext i8 %414 to i32
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %421, label %417

417:                                              ; preds = %410
  %418 = load i8, i8* %24, align 1
  %419 = sext i8 %418 to i32
  %420 = icmp eq i32 %419, 40
  br i1 %420, label %421, label %422

421:                                              ; preds = %417, %410
  br label %429

422:                                              ; preds = %417
  %423 = load i8, i8* %24, align 1
  %424 = sext i8 %423 to i32
  %425 = icmp eq i32 %424, 46
  br i1 %425, label %426, label %428

426:                                              ; preds = %422
  %427 = load i8*, i8** %23, align 8
  store i8* %427, i8** %22, align 8
  br label %428

428:                                              ; preds = %426, %422
  br label %410

429:                                              ; preds = %421
  %430 = load i8*, i8** %22, align 8
  %431 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %432 = call i32 @fputs_filtered(i8* %430, %struct.ui_file* %431)
  %433 = load i8*, i8** %12, align 8
  %434 = call i32 @xfree(i8* %433)
  %435 = load %struct.fn_field*, %struct.fn_field** %14, align 8
  %436 = load i32, i32* %15, align 4
  %437 = call i32 @TYPE_FN_FIELD_STUB(%struct.fn_field* %435, i32 %436)
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %442

439:                                              ; preds = %429
  %440 = load i8*, i8** %11, align 8
  %441 = call i32 @xfree(i8* %440)
  br label %442

442:                                              ; preds = %439, %429
  %443 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %444 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %443, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %445

445:                                              ; preds = %442
  %446 = load i32, i32* %15, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %15, align 4
  br label %265

448:                                              ; preds = %359, %265
  br label %449

449:                                              ; preds = %448
  %450 = load i32, i32* %9, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %9, align 4
  br label %239

452:                                              ; preds = %239
  %453 = load i32, i32* %8, align 4
  %454 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %455 = call i32 @fprintfi_filtered(i32 %453, %struct.ui_file* %454, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  br label %456

456:                                              ; preds = %452, %111
  br label %457

457:                                              ; preds = %456, %107
  br label %464

458:                                              ; preds = %44
  %459 = load %struct.type*, %struct.type** %5, align 8
  %460 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %461 = load i32, i32* %7, align 4
  %462 = load i32, i32* %8, align 4
  %463 = call i32 @c_type_print_base(%struct.type* %459, %struct.ui_file* %460, i32 %461, i32 %462)
  br label %464

464:                                              ; preds = %29, %39, %458, %457, %66, %49
  ret void
}

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i8* @TYPE_NAME(%struct.type*) #1

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i8* @TYPE_TAG_NAME(%struct.type*) #1

declare dso_local i8* @java_demangle_type_signature(i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @java_type_print_derivation_info(%struct.ui_file*, %struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @TYPE_NFN_FIELDS(%struct.type*) #1

declare dso_local i32 @TYPE_STUB(%struct.type*) #1

declare dso_local i32 @fprintfi_filtered(i32, %struct.ui_file*, i8*) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

declare dso_local i32* @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i32 @is_cplus_marker(i32) #1

declare dso_local i32 @print_spaces_filtered(i32, %struct.ui_file*) #1

declare dso_local i32 @HAVE_CPLUS_STRUCT(%struct.type*) #1

declare dso_local i32 @TYPE_FIELD_PROTECTED(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FIELD_PRIVATE(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FIELD_STATIC(%struct.type*, i32) #1

declare dso_local i32 @java_print_type(i32, i32*, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type*, i32) #1

declare dso_local i8* @TYPE_FN_FIELDLIST_NAME(%struct.type*, i32) #1

declare dso_local i8* @type_name_no_tag(%struct.type*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field*, i32) #1

declare dso_local i32 @is_constructor_name(i8*) #1

declare dso_local i32 @is_destructor_name(i8*) #1

declare dso_local i32 @TYPE_FN_FIELD_PROTECTED(%struct.fn_field*, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_PRIVATE(%struct.fn_field*, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_PUBLIC(%struct.fn_field*, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_ABSTRACT(%struct.fn_field*, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_STATIC(%struct.fn_field*, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_FINAL(%struct.fn_field*, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_SYNCHRONIZED(%struct.fn_field*, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_NATIVE(%struct.fn_field*, i32) #1

declare dso_local %struct.type* @TYPE_FN_FIELD_TYPE(%struct.fn_field*, i32) #1

declare dso_local i32 @type_print(%struct.type*, i8*, %struct.ui_file*, i32) #1

declare dso_local i32 @TYPE_FN_FIELD_STUB(%struct.fn_field*, i32) #1

declare dso_local i8* @gdb_mangle_name(%struct.type*, i32, i32) #1

declare dso_local i8* @cplus_demangle(i8*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @c_type_print_base(%struct.type*, %struct.ui_file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
