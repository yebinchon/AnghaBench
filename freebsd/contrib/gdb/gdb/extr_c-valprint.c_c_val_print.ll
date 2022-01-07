; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-valprint.c_c_val_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-valprint.c_c_val_print.c"
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
@.str.3 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@addressprint = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c" <\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c">\00", align 1
@VAR_DOMAIN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"not implemented: member type in c_val_print\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c": \00", align 1
@builtin_type_void = common dso_local global %struct.type* null, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@unionprint = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"{...}\00", align 1
@VTBL_FNADDR_OFFSET = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"} \00", align 1
@demangle = common dso_local global i32 0, align 4
@output_format = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"<error type>\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"<incomplete type>\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c" * I\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"Invalid C/C++ type code %d in symbol table.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_val_print(%struct.type* %0, i8* %1, i32 %2, i32 %3, %struct.ui_file* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.type*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
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
  %29 = alloca %struct.minimal_symbol*, align 8
  %30 = alloca %struct.value*, align 8
  %31 = alloca %struct.symbol*, align 8
  %32 = alloca %struct.type*, align 8
  %33 = alloca %struct.block*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.value*, align 8
  %37 = alloca i32, align 4
  %38 = alloca %struct.type*, align 8
  %39 = alloca i32, align 4
  %40 = alloca %struct.value*, align 8
  store %struct.type* %0, %struct.type** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store %struct.ui_file* %4, %struct.ui_file** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %41 = load %struct.type*, %struct.type** %11, align 8
  %42 = call i32 @CHECK_TYPEDEF(%struct.type* %41)
  %43 = load %struct.type*, %struct.type** %11, align 8
  %44 = call i32 @TYPE_CODE(%struct.type* %43)
  switch i32 %44, label %787 [
    i32 145, label %45
    i32 134, label %167
    i32 136, label %358
    i32 132, label %360
    i32 129, label %427
    i32 131, label %437
    i32 141, label %475
    i32 138, label %527
    i32 144, label %551
    i32 133, label %596
    i32 137, label %596
    i32 143, label %641
    i32 139, label %687
    i32 135, label %708
    i32 128, label %719
    i32 140, label %722
    i32 130, label %725
    i32 142, label %728
  ]

45:                                               ; preds = %9
  %46 = load %struct.type*, %struct.type** %11, align 8
  %47 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %46)
  %48 = call %struct.type* @check_typedef(%struct.type* %47)
  store %struct.type* %48, %struct.type** %22, align 8
  %49 = load %struct.type*, %struct.type** %11, align 8
  %50 = call i32 @TYPE_LENGTH(%struct.type* %49)
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %165

52:                                               ; preds = %45
  %53 = load %struct.type*, %struct.type** %11, align 8
  %54 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %53)
  %55 = call i32 @TYPE_LENGTH(%struct.type* %54)
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %165

57:                                               ; preds = %52
  %58 = load %struct.type*, %struct.type** %22, align 8
  %59 = call i32 @TYPE_LENGTH(%struct.type* %58)
  store i32 %59, i32* %23, align 4
  %60 = load %struct.type*, %struct.type** %11, align 8
  %61 = call i32 @TYPE_LENGTH(%struct.type* %60)
  %62 = load i32, i32* %23, align 4
  %63 = udiv i32 %61, %62
  store i32 %63, i32* %21, align 4
  %64 = load i32, i32* @prettyprint_arrays, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %57
  %67 = load i32, i32* %18, align 4
  %68 = mul nsw i32 2, %67
  %69 = add nsw i32 2, %68
  %70 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %71 = call i32 @print_spaces_filtered(i32 %69, %struct.ui_file* %70)
  br label %72

72:                                               ; preds = %66, %57
  %73 = load i32, i32* %23, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %136

75:                                               ; preds = %72
  %76 = load %struct.type*, %struct.type** %22, align 8
  %77 = call i32 @TYPE_CODE(%struct.type* %76)
  %78 = icmp eq i32 %77, 137
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @language_m2, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %136

85:                                               ; preds = %79
  %86 = load %struct.type*, %struct.type** %22, align 8
  %87 = call i32 @TYPE_CODE(%struct.type* %86)
  %88 = icmp eq i32 %87, 143
  br i1 %88, label %89, label %136

89:                                               ; preds = %85, %75
  %90 = load i32, i32* %16, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %16, align 4
  %94 = icmp eq i32 %93, 115
  br i1 %94, label %95, label %136

95:                                               ; preds = %92, %89
  %96 = load i32, i32* @stop_print_at_null, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %126

98:                                               ; preds = %95
  store i32 0, i32* %26, align 4
  br label %99

99:                                               ; preds = %121, %98
  %100 = load i8*, i8** %12, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i32, i32* %26, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %99
  %111 = load i32, i32* %26, align 4
  %112 = load i32, i32* %21, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* %26, align 4
  %116 = load i32, i32* @print_max, align 4
  %117 = icmp ult i32 %115, %116
  br label %118

118:                                              ; preds = %114, %110, %99
  %119 = phi i1 [ false, %110 ], [ false, %99 ], [ %117, %114 ]
  br i1 %119, label %120, label %124

120:                                              ; preds = %118
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %26, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %26, align 4
  br label %99

124:                                              ; preds = %118
  %125 = load i32, i32* %26, align 4
  store i32 %125, i32* %21, align 4
  br label %126

126:                                              ; preds = %124, %95
  %127 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i32, i32* %21, align 4
  %133 = load i32, i32* %23, align 4
  %134 = call i32 @LA_PRINT_STRING(%struct.ui_file* %127, i8* %131, i32 %132, i32 %133, i32 0)
  %135 = load i32, i32* %21, align 4
  store i32 %135, i32* %20, align 4
  br label %164

136:                                              ; preds = %92, %85, %79, %72
  %137 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %138 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %139 = load %struct.type*, %struct.type** %22, align 8
  %140 = call i32 @cp_is_vtbl_ptr_type(%struct.type* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  store i32 1, i32* %20, align 4
  %143 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %144 = load i32, i32* %21, align 4
  %145 = sub i32 %144, 1
  %146 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  br label %148

147:                                              ; preds = %136
  store i32 0, i32* %20, align 4
  br label %148

148:                                              ; preds = %147, %142
  %149 = load %struct.type*, %struct.type** %11, align 8
  %150 = load i8*, i8** %12, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i32, i32* %14, align 4
  %155 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %19, align 4
  %160 = load i32, i32* %20, align 4
  %161 = call i32 @val_print_array_elements(%struct.type* %149, i8* %153, i32 %154, %struct.ui_file* %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160)
  %162 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %163 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %164

164:                                              ; preds = %148, %126
  br label %791

165:                                              ; preds = %52, %45
  %166 = load i32, i32* %14, align 4
  store i32 %166, i32* %25, align 4
  br label %235

167:                                              ; preds = %9
  %168 = load i32, i32* %16, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %167
  %171 = load i32, i32* %16, align 4
  %172 = icmp ne i32 %171, 115
  br i1 %172, label %173, label %182

173:                                              ; preds = %170
  %174 = load i8*, i8** %12, align 8
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load %struct.type*, %struct.type** %11, align 8
  %179 = load i32, i32* %16, align 4
  %180 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %181 = call i32 @print_scalar_formatted(i8* %177, %struct.type* %178, i32 %179, i32 0, %struct.ui_file* %180)
  br label %791

182:                                              ; preds = %170, %167
  %183 = load i32, i32* @vtblprint, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %199

185:                                              ; preds = %182
  %186 = load %struct.type*, %struct.type** %11, align 8
  %187 = call i32 @cp_is_vtbl_ptr_type(%struct.type* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %185
  %190 = load i8*, i8** %12, align 8
  %191 = load i32, i32* %13, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load %struct.type*, %struct.type** %11, align 8
  %195 = call i32 @extract_typed_address(i8* %193, %struct.type* %194)
  store i32 %195, i32* %27, align 4
  %196 = load i32, i32* %27, align 4
  %197 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %198 = call i32 @print_function_pointer_address(i32 %196, %struct.ui_file* %197)
  br label %791

199:                                              ; preds = %185, %182
  %200 = load %struct.type*, %struct.type** %11, align 8
  %201 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %200)
  %202 = call %struct.type* @check_typedef(%struct.type* %201)
  store %struct.type* %202, %struct.type** %22, align 8
  %203 = load %struct.type*, %struct.type** %22, align 8
  %204 = call i32 @TYPE_CODE(%struct.type* %203)
  %205 = icmp eq i32 %204, 135
  br i1 %205, label %206, label %214

206:                                              ; preds = %199
  %207 = load i8*, i8** %12, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  %211 = load %struct.type*, %struct.type** %11, align 8
  %212 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %213 = call i32 @cp_print_class_method(i8* %210, %struct.type* %211, %struct.ui_file* %212)
  br label %357

214:                                              ; preds = %199
  %215 = load %struct.type*, %struct.type** %22, align 8
  %216 = call i32 @TYPE_CODE(%struct.type* %215)
  %217 = icmp eq i32 %216, 136
  br i1 %217, label %218, label %228

218:                                              ; preds = %214
  %219 = load i8*, i8** %12, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = load %struct.type*, %struct.type** %11, align 8
  %224 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %223)
  %225 = call i32 @TYPE_DOMAIN_TYPE(%struct.type* %224)
  %226 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %227 = call i32 @cp_print_class_member(i8* %222, i32 %225, %struct.ui_file* %226, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %356

228:                                              ; preds = %214
  %229 = load %struct.type*, %struct.type** %11, align 8
  %230 = load i8*, i8** %12, align 8
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = call i32 @unpack_pointer(%struct.type* %229, i8* %233)
  store i32 %234, i32* %25, align 4
  br label %235

235:                                              ; preds = %228, %165
  %236 = load %struct.type*, %struct.type** %22, align 8
  %237 = call i32 @TYPE_CODE(%struct.type* %236)
  %238 = icmp eq i32 %237, 138
  br i1 %238, label %239, label %243

239:                                              ; preds = %235
  %240 = load i32, i32* %25, align 4
  %241 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %242 = call i32 @print_function_pointer_address(i32 %240, %struct.ui_file* %241)
  store i32 0, i32* %10, align 4
  br label %794

243:                                              ; preds = %235
  %244 = load i32, i32* @addressprint, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %243
  %247 = load i32, i32* %16, align 4
  %248 = icmp ne i32 %247, 115
  br i1 %248, label %249, label %253

249:                                              ; preds = %246
  %250 = load i32, i32* %25, align 4
  %251 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %252 = call i32 @print_address_numeric(i32 %250, i32 1, %struct.ui_file* %251)
  br label %253

253:                                              ; preds = %249, %246, %243
  %254 = load %struct.type*, %struct.type** %22, align 8
  %255 = call i32 @TYPE_LENGTH(%struct.type* %254)
  %256 = icmp eq i32 %255, 1
  br i1 %256, label %257, label %276

257:                                              ; preds = %253
  %258 = load %struct.type*, %struct.type** %22, align 8
  %259 = call i32 @TYPE_CODE(%struct.type* %258)
  %260 = icmp eq i32 %259, 137
  br i1 %260, label %261, label %276

261:                                              ; preds = %257
  %262 = load i32, i32* %16, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %261
  %265 = load i32, i32* %16, align 4
  %266 = icmp eq i32 %265, 115
  br i1 %266, label %267, label %276

267:                                              ; preds = %264, %261
  %268 = load i32, i32* %25, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %267
  %271 = load i32, i32* %25, align 4
  %272 = load %struct.type*, %struct.type** %22, align 8
  %273 = call i32 @TYPE_LENGTH(%struct.type* %272)
  %274 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %275 = call i32 @val_print_string(i32 %271, i32 -1, i32 %273, %struct.ui_file* %274)
  store i32 %275, i32* %20, align 4
  br label %354

276:                                              ; preds = %267, %264, %257, %253
  %277 = load %struct.type*, %struct.type** %11, align 8
  %278 = call i32 @cp_is_vtbl_member(%struct.type* %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %353

280:                                              ; preds = %276
  %281 = load %struct.type*, %struct.type** %11, align 8
  %282 = load i8*, i8** %12, align 8
  %283 = load i32, i32* %13, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8, i8* %282, i64 %284
  %286 = call i32 @unpack_pointer(%struct.type* %281, i8* %285)
  store i32 %286, i32* %28, align 4
  %287 = load i32, i32* %28, align 4
  %288 = call %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i32 %287)
  store %struct.minimal_symbol* %288, %struct.minimal_symbol** %29, align 8
  %289 = load %struct.minimal_symbol*, %struct.minimal_symbol** %29, align 8
  %290 = icmp ne %struct.minimal_symbol* %289, null
  br i1 %290, label %291, label %305

291:                                              ; preds = %280
  %292 = load i32, i32* %28, align 4
  %293 = load %struct.minimal_symbol*, %struct.minimal_symbol** %29, align 8
  %294 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %293)
  %295 = icmp eq i32 %292, %294
  br i1 %295, label %296, label %305

296:                                              ; preds = %291
  %297 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %298 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.ui_file* %297)
  %299 = load %struct.minimal_symbol*, %struct.minimal_symbol** %29, align 8
  %300 = call i8* @SYMBOL_PRINT_NAME(%struct.minimal_symbol* %299)
  %301 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %302 = call i32 @fputs_filtered(i8* %300, %struct.ui_file* %301)
  %303 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %304 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %303)
  br label %305

305:                                              ; preds = %296, %291, %280
  %306 = load i32, i32* %28, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %352

308:                                              ; preds = %305
  %309 = load i32, i32* @vtblprint, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %352

311:                                              ; preds = %308
  store %struct.symbol* null, %struct.symbol** %31, align 8
  store %struct.block* null, %struct.block** %33, align 8
  %312 = load %struct.minimal_symbol*, %struct.minimal_symbol** %29, align 8
  %313 = icmp ne %struct.minimal_symbol* %312, null
  br i1 %313, label %314, label %320

314:                                              ; preds = %311
  %315 = load %struct.minimal_symbol*, %struct.minimal_symbol** %29, align 8
  %316 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol* %315)
  %317 = load %struct.block*, %struct.block** %33, align 8
  %318 = load i32, i32* @VAR_DOMAIN, align 4
  %319 = call %struct.symbol* @lookup_symbol(i32 %316, %struct.block* %317, i32 %318, i32* %34, i32* null)
  store %struct.symbol* %319, %struct.symbol** %31, align 8
  br label %320

320:                                              ; preds = %314, %311
  %321 = load %struct.symbol*, %struct.symbol** %31, align 8
  %322 = icmp ne %struct.symbol* %321, null
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = load %struct.symbol*, %struct.symbol** %31, align 8
  %325 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %324)
  store %struct.type* %325, %struct.type** %32, align 8
  br label %329

326:                                              ; preds = %320
  %327 = load %struct.type*, %struct.type** %11, align 8
  %328 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %327)
  store %struct.type* %328, %struct.type** %32, align 8
  br label %329

329:                                              ; preds = %326, %323
  %330 = load %struct.type*, %struct.type** %32, align 8
  %331 = load i32, i32* %28, align 4
  %332 = call %struct.value* @value_at(%struct.type* %330, i32 %331, i32* null)
  store %struct.value* %332, %struct.value** %30, align 8
  %333 = load %struct.value*, %struct.value** %30, align 8
  %334 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %335 = load i32, i32* %16, align 4
  %336 = load i32, i32* %17, align 4
  %337 = load i32, i32* %18, align 4
  %338 = add nsw i32 %337, 1
  %339 = load i32, i32* %19, align 4
  %340 = call i32 @common_val_print(%struct.value* %333, %struct.ui_file* %334, i32 %335, i32 %336, i32 %338, i32 %339)
  %341 = load i32, i32* %19, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %351

343:                                              ; preds = %329
  %344 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %345 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %344, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %346 = load i32, i32* %18, align 4
  %347 = mul nsw i32 2, %346
  %348 = add nsw i32 2, %347
  %349 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %350 = call i32 @print_spaces_filtered(i32 %348, %struct.ui_file* %349)
  br label %351

351:                                              ; preds = %343, %329
  br label %352

352:                                              ; preds = %351, %308, %305
  br label %353

353:                                              ; preds = %352, %276
  br label %354

354:                                              ; preds = %353, %270
  %355 = load i32, i32* %20, align 4
  store i32 %355, i32* %10, align 4
  br label %794

356:                                              ; preds = %218
  br label %357

357:                                              ; preds = %356, %206
  br label %791

358:                                              ; preds = %9
  %359 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %791

360:                                              ; preds = %9
  %361 = load %struct.type*, %struct.type** %11, align 8
  %362 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %361)
  %363 = call %struct.type* @check_typedef(%struct.type* %362)
  store %struct.type* %363, %struct.type** %22, align 8
  %364 = load %struct.type*, %struct.type** %22, align 8
  %365 = call i32 @TYPE_CODE(%struct.type* %364)
  %366 = icmp eq i32 %365, 136
  br i1 %366, label %367, label %376

367:                                              ; preds = %360
  %368 = load i8*, i8** %12, align 8
  %369 = load i32, i32* %13, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8, i8* %368, i64 %370
  %372 = load %struct.type*, %struct.type** %22, align 8
  %373 = call i32 @TYPE_DOMAIN_TYPE(%struct.type* %372)
  %374 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %375 = call i32 @cp_print_class_member(i8* %371, i32 %373, %struct.ui_file* %374, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  br label %791

376:                                              ; preds = %360
  %377 = load i32, i32* @addressprint, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %397

379:                                              ; preds = %376
  %380 = load i8*, i8** %12, align 8
  %381 = load i32, i32* %13, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i8, i8* %380, i64 %382
  %384 = load %struct.type*, %struct.type** %11, align 8
  %385 = call i32 @extract_typed_address(i8* %383, %struct.type* %384)
  store i32 %385, i32* %35, align 4
  %386 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %387 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %386, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %388 = load i32, i32* %35, align 4
  %389 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %390 = call i32 @print_address_numeric(i32 %388, i32 1, %struct.ui_file* %389)
  %391 = load i32, i32* %17, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %379
  %394 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %395 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct.ui_file* %394)
  br label %396

396:                                              ; preds = %393, %379
  br label %397

397:                                              ; preds = %396, %376
  %398 = load i32, i32* %17, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %426

400:                                              ; preds = %397
  %401 = load %struct.type*, %struct.type** %22, align 8
  %402 = call i32 @TYPE_CODE(%struct.type* %401)
  %403 = icmp ne i32 %402, 130
  br i1 %403, label %404, label %422

404:                                              ; preds = %400
  %405 = load %struct.type*, %struct.type** %11, align 8
  %406 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %405)
  %407 = load %struct.type*, %struct.type** @builtin_type_void, align 8
  %408 = call %struct.type* @lookup_pointer_type(%struct.type* %407)
  %409 = load i8*, i8** %12, align 8
  %410 = load i32, i32* %13, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8, i8* %409, i64 %411
  %413 = call i32 @unpack_pointer(%struct.type* %408, i8* %412)
  %414 = call %struct.value* @value_at(%struct.type* %406, i32 %413, i32* null)
  store %struct.value* %414, %struct.value** %36, align 8
  %415 = load %struct.value*, %struct.value** %36, align 8
  %416 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %417 = load i32, i32* %16, align 4
  %418 = load i32, i32* %17, align 4
  %419 = load i32, i32* %18, align 4
  %420 = load i32, i32* %19, align 4
  %421 = call i32 @common_val_print(%struct.value* %415, %struct.ui_file* %416, i32 %417, i32 %418, i32 %419, i32 %420)
  br label %425

422:                                              ; preds = %400
  %423 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %424 = call i32 @fputs_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.ui_file* %423)
  br label %425

425:                                              ; preds = %422, %404
  br label %426

426:                                              ; preds = %425, %397
  br label %791

427:                                              ; preds = %9
  %428 = load i32, i32* %18, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %436

430:                                              ; preds = %427
  %431 = load i32, i32* @unionprint, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %436, label %433

433:                                              ; preds = %430
  %434 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %435 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %434, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %791

436:                                              ; preds = %430, %427
  br label %437

437:                                              ; preds = %9, %436
  %438 = load i32, i32* @vtblprint, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %463

440:                                              ; preds = %437
  %441 = load %struct.type*, %struct.type** %11, align 8
  %442 = call i32 @cp_is_vtbl_ptr_type(%struct.type* %441)
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %463

444:                                              ; preds = %440
  %445 = load i32, i32* %13, align 4
  %446 = load %struct.type*, %struct.type** %11, align 8
  %447 = load i32, i32* @VTBL_FNADDR_OFFSET, align 4
  %448 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %446, i32 %447)
  %449 = sdiv i32 %448, 8
  %450 = add nsw i32 %445, %449
  store i32 %450, i32* %37, align 4
  %451 = load %struct.type*, %struct.type** %11, align 8
  %452 = load i32, i32* @VTBL_FNADDR_OFFSET, align 4
  %453 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %451, i32 %452)
  store %struct.type* %453, %struct.type** %38, align 8
  %454 = load i8*, i8** %12, align 8
  %455 = load i32, i32* %37, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i8, i8* %454, i64 %456
  %458 = load %struct.type*, %struct.type** %38, align 8
  %459 = call i32 @extract_typed_address(i8* %457, %struct.type* %458)
  store i32 %459, i32* %39, align 4
  %460 = load i32, i32* %39, align 4
  %461 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %462 = call i32 @print_function_pointer_address(i32 %460, %struct.ui_file* %461)
  br label %474

463:                                              ; preds = %440, %437
  %464 = load %struct.type*, %struct.type** %11, align 8
  %465 = load %struct.type*, %struct.type** %11, align 8
  %466 = load i8*, i8** %12, align 8
  %467 = load i32, i32* %13, align 4
  %468 = load i32, i32* %14, align 4
  %469 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %470 = load i32, i32* %16, align 4
  %471 = load i32, i32* %18, align 4
  %472 = load i32, i32* %19, align 4
  %473 = call i32 @cp_print_value_fields(%struct.type* %464, %struct.type* %465, i8* %466, i32 %467, i32 %468, %struct.ui_file* %469, i32 %470, i32 %471, i32 %472, i32* null, i32 0)
  br label %474

474:                                              ; preds = %463, %444
  br label %791

475:                                              ; preds = %9
  %476 = load i32, i32* %16, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %487

478:                                              ; preds = %475
  %479 = load i8*, i8** %12, align 8
  %480 = load i32, i32* %13, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i8, i8* %479, i64 %481
  %483 = load %struct.type*, %struct.type** %11, align 8
  %484 = load i32, i32* %16, align 4
  %485 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %486 = call i32 @print_scalar_formatted(i8* %482, %struct.type* %483, i32 %484, i32 0, %struct.ui_file* %485)
  br label %791

487:                                              ; preds = %475
  %488 = load %struct.type*, %struct.type** %11, align 8
  %489 = call i32 @TYPE_NFIELDS(%struct.type* %488)
  store i32 %489, i32* %21, align 4
  %490 = load %struct.type*, %struct.type** %11, align 8
  %491 = load i8*, i8** %12, align 8
  %492 = load i32, i32* %13, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i8, i8* %491, i64 %493
  %495 = call i32 @unpack_long(%struct.type* %490, i8* %494)
  store i32 %495, i32* %24, align 4
  store i32 0, i32* %20, align 4
  br label %496

496:                                              ; preds = %509, %487
  %497 = load i32, i32* %20, align 4
  %498 = load i32, i32* %21, align 4
  %499 = icmp ult i32 %497, %498
  br i1 %499, label %500, label %512

500:                                              ; preds = %496
  %501 = load i32, i32* @QUIT, align 4
  %502 = load i32, i32* %24, align 4
  %503 = load %struct.type*, %struct.type** %11, align 8
  %504 = load i32, i32* %20, align 4
  %505 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %503, i32 %504)
  %506 = icmp eq i32 %502, %505
  br i1 %506, label %507, label %508

507:                                              ; preds = %500
  br label %512

508:                                              ; preds = %500
  br label %509

509:                                              ; preds = %508
  %510 = load i32, i32* %20, align 4
  %511 = add i32 %510, 1
  store i32 %511, i32* %20, align 4
  br label %496

512:                                              ; preds = %507, %496
  %513 = load i32, i32* %20, align 4
  %514 = load i32, i32* %21, align 4
  %515 = icmp ult i32 %513, %514
  br i1 %515, label %516, label %522

516:                                              ; preds = %512
  %517 = load %struct.type*, %struct.type** %11, align 8
  %518 = load i32, i32* %20, align 4
  %519 = call i8* @TYPE_FIELD_NAME(%struct.type* %517, i32 %518)
  %520 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %521 = call i32 @fputs_filtered(i8* %519, %struct.ui_file* %520)
  br label %526

522:                                              ; preds = %512
  %523 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %524 = load i32, i32* %24, align 4
  %525 = call i32 @print_longest(%struct.ui_file* %523, i8 signext 100, i32 0, i32 %524)
  br label %526

526:                                              ; preds = %522, %516
  br label %791

527:                                              ; preds = %9
  %528 = load i32, i32* %16, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %539

530:                                              ; preds = %527
  %531 = load i8*, i8** %12, align 8
  %532 = load i32, i32* %13, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i8, i8* %531, i64 %533
  %535 = load %struct.type*, %struct.type** %11, align 8
  %536 = load i32, i32* %16, align 4
  %537 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %538 = call i32 @print_scalar_formatted(i8* %534, %struct.type* %535, i32 %536, i32 0, %struct.ui_file* %537)
  br label %791

539:                                              ; preds = %527
  %540 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %541 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %540, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %542 = load %struct.type*, %struct.type** %11, align 8
  %543 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %544 = call i32 @type_print(%struct.type* %542, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %struct.ui_file* %543, i32 -1)
  %545 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %546 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %545, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %547 = load i32, i32* %14, align 4
  %548 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %549 = load i32, i32* @demangle, align 4
  %550 = call i32 @print_address_demangle(i32 %547, %struct.ui_file* %548, i32 %549)
  br label %791

551:                                              ; preds = %9
  %552 = load i32, i32* %16, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %556

554:                                              ; preds = %551
  %555 = load i32, i32* %16, align 4
  br label %558

556:                                              ; preds = %551
  %557 = load i32, i32* @output_format, align 4
  br label %558

558:                                              ; preds = %556, %554
  %559 = phi i32 [ %555, %554 ], [ %557, %556 ]
  store i32 %559, i32* %16, align 4
  %560 = load i32, i32* %16, align 4
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %562, label %571

562:                                              ; preds = %558
  %563 = load i8*, i8** %12, align 8
  %564 = load i32, i32* %13, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i8, i8* %563, i64 %565
  %567 = load %struct.type*, %struct.type** %11, align 8
  %568 = load i32, i32* %16, align 4
  %569 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %570 = call i32 @print_scalar_formatted(i8* %566, %struct.type* %567, i32 %568, i32 0, %struct.ui_file* %569)
  br label %595

571:                                              ; preds = %558
  %572 = load %struct.type*, %struct.type** %11, align 8
  %573 = load i8*, i8** %12, align 8
  %574 = load i32, i32* %13, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i8, i8* %573, i64 %575
  %577 = call i32 @unpack_long(%struct.type* %572, i8* %576)
  store i32 %577, i32* %24, align 4
  %578 = load i32, i32* %24, align 4
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %580, label %583

580:                                              ; preds = %571
  %581 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %582 = call i32 @fputs_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), %struct.ui_file* %581)
  br label %594

583:                                              ; preds = %571
  %584 = load i32, i32* %24, align 4
  %585 = icmp eq i32 %584, 1
  br i1 %585, label %586, label %589

586:                                              ; preds = %583
  %587 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %588 = call i32 @fputs_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), %struct.ui_file* %587)
  br label %593

589:                                              ; preds = %583
  %590 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %591 = load i32, i32* %24, align 4
  %592 = call i32 @print_longest(%struct.ui_file* %590, i8 signext 100, i32 0, i32 %591)
  br label %593

593:                                              ; preds = %589, %586
  br label %594

594:                                              ; preds = %593, %580
  br label %595

595:                                              ; preds = %594, %562
  br label %791

596:                                              ; preds = %9, %9
  %597 = load i32, i32* %16, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %601

599:                                              ; preds = %596
  %600 = load i32, i32* %16, align 4
  br label %603

601:                                              ; preds = %596
  %602 = load i32, i32* @output_format, align 4
  br label %603

603:                                              ; preds = %601, %599
  %604 = phi i32 [ %600, %599 ], [ %602, %601 ]
  store i32 %604, i32* %16, align 4
  %605 = load i32, i32* %16, align 4
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %616

607:                                              ; preds = %603
  %608 = load i8*, i8** %12, align 8
  %609 = load i32, i32* %13, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i8, i8* %608, i64 %610
  %612 = load %struct.type*, %struct.type** %11, align 8
  %613 = load i32, i32* %16, align 4
  %614 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %615 = call i32 @print_scalar_formatted(i8* %611, %struct.type* %612, i32 %613, i32 0, %struct.ui_file* %614)
  br label %640

616:                                              ; preds = %603
  %617 = load %struct.type*, %struct.type** %11, align 8
  %618 = load i8*, i8** %12, align 8
  %619 = load i32, i32* %13, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i8, i8* %618, i64 %620
  %622 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %623 = call i32 @val_print_type_code_int(%struct.type* %617, i8* %621, %struct.ui_file* %622)
  %624 = load %struct.type*, %struct.type** %11, align 8
  %625 = call i32 @TYPE_LENGTH(%struct.type* %624)
  %626 = icmp eq i32 %625, 1
  br i1 %626, label %627, label %639

627:                                              ; preds = %616
  %628 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %629 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %struct.ui_file* %628)
  %630 = load %struct.type*, %struct.type** %11, align 8
  %631 = load i8*, i8** %12, align 8
  %632 = load i32, i32* %13, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds i8, i8* %631, i64 %633
  %635 = call i32 @unpack_long(%struct.type* %630, i8* %634)
  %636 = trunc i32 %635 to i8
  %637 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %638 = call i32 @LA_PRINT_CHAR(i8 zeroext %636, %struct.ui_file* %637)
  br label %639

639:                                              ; preds = %627, %616
  br label %640

640:                                              ; preds = %639, %607
  br label %791

641:                                              ; preds = %9
  %642 = load i32, i32* %16, align 4
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %644, label %646

644:                                              ; preds = %641
  %645 = load i32, i32* %16, align 4
  br label %648

646:                                              ; preds = %641
  %647 = load i32, i32* @output_format, align 4
  br label %648

648:                                              ; preds = %646, %644
  %649 = phi i32 [ %645, %644 ], [ %647, %646 ]
  store i32 %649, i32* %16, align 4
  %650 = load i32, i32* %16, align 4
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %652, label %661

652:                                              ; preds = %648
  %653 = load i8*, i8** %12, align 8
  %654 = load i32, i32* %13, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds i8, i8* %653, i64 %655
  %657 = load %struct.type*, %struct.type** %11, align 8
  %658 = load i32, i32* %16, align 4
  %659 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %660 = call i32 @print_scalar_formatted(i8* %656, %struct.type* %657, i32 %658, i32 0, %struct.ui_file* %659)
  br label %686

661:                                              ; preds = %648
  %662 = load %struct.type*, %struct.type** %11, align 8
  %663 = load i8*, i8** %12, align 8
  %664 = load i32, i32* %13, align 4
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds i8, i8* %663, i64 %665
  %667 = call i32 @unpack_long(%struct.type* %662, i8* %666)
  store i32 %667, i32* %24, align 4
  %668 = load %struct.type*, %struct.type** %11, align 8
  %669 = call i32 @TYPE_UNSIGNED(%struct.type* %668)
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %671, label %675

671:                                              ; preds = %661
  %672 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %673 = load i32, i32* %24, align 4
  %674 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %672, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i32 %673)
  br label %679

675:                                              ; preds = %661
  %676 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %677 = load i32, i32* %24, align 4
  %678 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %676, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %677)
  br label %679

679:                                              ; preds = %675, %671
  %680 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %681 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %struct.ui_file* %680)
  %682 = load i32, i32* %24, align 4
  %683 = trunc i32 %682 to i8
  %684 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %685 = call i32 @LA_PRINT_CHAR(i8 zeroext %683, %struct.ui_file* %684)
  br label %686

686:                                              ; preds = %679, %652
  br label %791

687:                                              ; preds = %9
  %688 = load i32, i32* %16, align 4
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %699

690:                                              ; preds = %687
  %691 = load i8*, i8** %12, align 8
  %692 = load i32, i32* %13, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds i8, i8* %691, i64 %693
  %695 = load %struct.type*, %struct.type** %11, align 8
  %696 = load i32, i32* %16, align 4
  %697 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %698 = call i32 @print_scalar_formatted(i8* %694, %struct.type* %695, i32 %696, i32 0, %struct.ui_file* %697)
  br label %707

699:                                              ; preds = %687
  %700 = load i8*, i8** %12, align 8
  %701 = load i32, i32* %13, align 4
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds i8, i8* %700, i64 %702
  %704 = load %struct.type*, %struct.type** %11, align 8
  %705 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %706 = call i32 @print_floating(i8* %703, %struct.type* %704, %struct.ui_file* %705)
  br label %707

707:                                              ; preds = %699, %690
  br label %791

708:                                              ; preds = %9
  %709 = load %struct.type*, %struct.type** %11, align 8
  %710 = load i32, i32* %14, align 4
  %711 = call %struct.value* @value_at(%struct.type* %709, i32 %710, i32* null)
  store %struct.value* %711, %struct.value** %40, align 8
  %712 = load %struct.value*, %struct.value** %40, align 8
  %713 = call i32 @value_addr(%struct.value* %712)
  %714 = call i8* @VALUE_CONTENTS(i32 %713)
  %715 = load %struct.type*, %struct.type** %11, align 8
  %716 = call %struct.type* @lookup_pointer_type(%struct.type* %715)
  %717 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %718 = call i32 @cp_print_class_method(i8* %714, %struct.type* %716, %struct.ui_file* %717)
  br label %791

719:                                              ; preds = %9
  %720 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %721 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %720, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %791

722:                                              ; preds = %9
  %723 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %724 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %723, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  br label %791

725:                                              ; preds = %9
  %726 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %727 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %726, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  br label %791

728:                                              ; preds = %9
  %729 = load i32, i32* %16, align 4
  %730 = icmp ne i32 %729, 0
  br i1 %730, label %731, label %741

731:                                              ; preds = %728
  %732 = load i8*, i8** %12, align 8
  %733 = load i32, i32* %13, align 4
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds i8, i8* %732, i64 %734
  %736 = load %struct.type*, %struct.type** %11, align 8
  %737 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %736)
  %738 = load i32, i32* %16, align 4
  %739 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %740 = call i32 @print_scalar_formatted(i8* %735, %struct.type* %737, i32 %738, i32 0, %struct.ui_file* %739)
  br label %750

741:                                              ; preds = %728
  %742 = load i8*, i8** %12, align 8
  %743 = load i32, i32* %13, align 4
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds i8, i8* %742, i64 %744
  %746 = load %struct.type*, %struct.type** %11, align 8
  %747 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %746)
  %748 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %749 = call i32 @print_floating(i8* %745, %struct.type* %747, %struct.ui_file* %748)
  br label %750

750:                                              ; preds = %741, %731
  %751 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %752 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %751, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %753 = load i32, i32* %16, align 4
  %754 = icmp ne i32 %753, 0
  br i1 %754, label %755, label %770

755:                                              ; preds = %750
  %756 = load i8*, i8** %12, align 8
  %757 = load i32, i32* %13, align 4
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds i8, i8* %756, i64 %758
  %760 = load %struct.type*, %struct.type** %11, align 8
  %761 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %760)
  %762 = call i32 @TYPE_LENGTH(%struct.type* %761)
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds i8, i8* %759, i64 %763
  %765 = load %struct.type*, %struct.type** %11, align 8
  %766 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %765)
  %767 = load i32, i32* %16, align 4
  %768 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %769 = call i32 @print_scalar_formatted(i8* %764, %struct.type* %766, i32 %767, i32 0, %struct.ui_file* %768)
  br label %784

770:                                              ; preds = %750
  %771 = load i8*, i8** %12, align 8
  %772 = load i32, i32* %13, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds i8, i8* %771, i64 %773
  %775 = load %struct.type*, %struct.type** %11, align 8
  %776 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %775)
  %777 = call i32 @TYPE_LENGTH(%struct.type* %776)
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds i8, i8* %774, i64 %778
  %780 = load %struct.type*, %struct.type** %11, align 8
  %781 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %780)
  %782 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %783 = call i32 @print_floating(i8* %779, %struct.type* %781, %struct.ui_file* %782)
  br label %784

784:                                              ; preds = %770, %755
  %785 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %786 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %785, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  br label %791

787:                                              ; preds = %9
  %788 = load %struct.type*, %struct.type** %11, align 8
  %789 = call i32 @TYPE_CODE(%struct.type* %788)
  %790 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0), i32 %789)
  br label %791

791:                                              ; preds = %787, %784, %725, %722, %719, %708, %707, %686, %640, %595, %539, %530, %526, %478, %474, %433, %426, %367, %358, %357, %189, %173, %164
  %792 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %793 = call i32 @gdb_flush(%struct.ui_file* %792)
  store i32 0, i32* %10, align 4
  br label %794

794:                                              ; preds = %791, %354, %239
  %795 = load i32, i32* %10, align 4
  ret i32 %795
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @print_spaces_filtered(i32, %struct.ui_file*) #1

declare dso_local i32 @LA_PRINT_STRING(%struct.ui_file*, i8*, i32, i32, i32) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @cp_is_vtbl_ptr_type(%struct.type*) #1

declare dso_local i32 @val_print_array_elements(%struct.type*, i8*, i32, %struct.ui_file*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @print_scalar_formatted(i8*, %struct.type*, i32, i32, %struct.ui_file*) #1

declare dso_local i32 @extract_typed_address(i8*, %struct.type*) #1

declare dso_local i32 @print_function_pointer_address(i32, %struct.ui_file*) #1

declare dso_local i32 @cp_print_class_method(i8*, %struct.type*, %struct.ui_file*) #1

declare dso_local i32 @cp_print_class_member(i8*, i32, %struct.ui_file*, i8*) #1

declare dso_local i32 @TYPE_DOMAIN_TYPE(%struct.type*) #1

declare dso_local i32 @unpack_pointer(%struct.type*, i8*) #1

declare dso_local i32 @print_address_numeric(i32, i32, %struct.ui_file*) #1

declare dso_local i32 @val_print_string(i32, i32, i32, %struct.ui_file*) #1

declare dso_local i32 @cp_is_vtbl_member(%struct.type*) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i32) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i8* @SYMBOL_PRINT_NAME(%struct.minimal_symbol*) #1

declare dso_local %struct.symbol* @lookup_symbol(i32, %struct.block*, i32, i32*, i32*) #1

declare dso_local i32 @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol*) #1

declare dso_local %struct.type* @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local %struct.value* @value_at(%struct.type*, i32, i32*) #1

declare dso_local i32 @common_val_print(%struct.value*, %struct.ui_file*, i32, i32, i32, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.type* @lookup_pointer_type(%struct.type*) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @cp_print_value_fields(%struct.type*, %struct.type*, i8*, i32, i32, %struct.ui_file*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @unpack_long(%struct.type*, i8*) #1

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i32 @print_longest(%struct.ui_file*, i8 signext, i32, i32) #1

declare dso_local i32 @type_print(%struct.type*, i8*, %struct.ui_file*, i32) #1

declare dso_local i32 @print_address_demangle(i32, %struct.ui_file*, i32) #1

declare dso_local i32 @val_print_type_code_int(%struct.type*, i8*, %struct.ui_file*) #1

declare dso_local i32 @LA_PRINT_CHAR(i8 zeroext, %struct.ui_file*) #1

declare dso_local i32 @TYPE_UNSIGNED(%struct.type*) #1

declare dso_local i32 @print_floating(i8*, %struct.type*, %struct.ui_file*) #1

declare dso_local i8* @VALUE_CONTENTS(i32) #1

declare dso_local i32 @value_addr(%struct.value*) #1

declare dso_local i32 @gdb_flush(%struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
