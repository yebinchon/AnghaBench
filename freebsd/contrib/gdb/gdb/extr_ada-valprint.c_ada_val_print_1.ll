; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-valprint.c_ada_val_print_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-valprint.c_ada_val_print_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }
%struct.value = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.11g\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%.17g\00", align 1
@ada_val_print_1.parray_of_char = internal global %struct.type* null, align 8
@builtin_type_char = common dso_local global i32 0, align 4
@builtin_type_int = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@output_format = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@QUIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"%ld %s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"(...?)\00", align 1
@prettyprint_arrays = common dso_local global i32 0, align 4
@stop_print_at_null = common dso_local global i32 0, align 4
@print_max = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c")\00", align 1
@addressprint = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@TARGET_PTR_BIT = common dso_local global i32 0, align 4
@HOST_CHAR_BIT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c": \00", align 1
@TYPE_CODE_UNDEF = common dso_local global i32 0, align 4
@builtin_type_void = common dso_local global %struct.type* null, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*, i8*, i32, i32, %struct.ui_file*, i32, i32, i32, i32)* @ada_val_print_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ada_val_print_1(%struct.type* %0, i8* %1, i32 %2, i32 %3, %struct.ui_file* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.value*, align 8
  %29 = alloca %struct.value*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.value*, align 8
  %33 = alloca %struct.value*, align 8
  %34 = alloca %struct.value*, align 8
  %35 = alloca %struct.type*, align 8
  %36 = alloca %struct.value*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
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
  %41 = load i8*, i8** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8* %44, i8** %26, align 8
  %45 = load %struct.type*, %struct.type** %11, align 8
  %46 = call i32 @CHECK_TYPEDEF(%struct.type* %45)
  %47 = load %struct.type*, %struct.type** %11, align 8
  %48 = call i64 @ada_is_array_descriptor(%struct.type* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %9
  %51 = load %struct.type*, %struct.type** %11, align 8
  %52 = call i64 @ada_is_packed_array_type(%struct.type* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %50, %9
  %55 = call %struct.value* (...) @value_mark()
  store %struct.value* %55, %struct.value** %28, align 8
  %56 = load %struct.type*, %struct.type** %11, align 8
  %57 = load i8*, i8** %26, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call %struct.value* @value_from_contents_and_address(%struct.type* %56, i8* %57, i32 %58)
  store %struct.value* %59, %struct.value** %29, align 8
  %60 = load %struct.value*, %struct.value** %29, align 8
  %61 = call %struct.value* @ada_coerce_to_simple_array_ptr(%struct.value* %60)
  store %struct.value* %61, %struct.value** %29, align 8
  %62 = load %struct.value*, %struct.value** %29, align 8
  %63 = icmp eq %struct.value* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %66 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %27, align 4
  br label %80

67:                                               ; preds = %54
  %68 = load %struct.value*, %struct.value** %29, align 8
  %69 = call %struct.type* @VALUE_TYPE(%struct.value* %68)
  %70 = load %struct.value*, %struct.value** %29, align 8
  %71 = call i8* @VALUE_CONTENTS(%struct.value* %70)
  %72 = load %struct.value*, %struct.value** %29, align 8
  %73 = call i32 @VALUE_ADDRESS(%struct.value* %72)
  %74 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %19, align 4
  %79 = call i32 @ada_val_print_1(%struct.type* %69, i8* %71, i32 0, i32 %73, %struct.ui_file* %74, i32 %75, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %27, align 4
  br label %80

80:                                               ; preds = %67, %64
  %81 = load %struct.value*, %struct.value** %28, align 8
  %82 = call i32 @value_free_to_mark(%struct.value* %81)
  %83 = load i32, i32* %27, align 4
  store i32 %83, i32* %10, align 4
  br label %491

84:                                               ; preds = %50
  %85 = load %struct.type*, %struct.type** %11, align 8
  %86 = load i8*, i8** %26, align 8
  %87 = call i8* @ada_aligned_value_addr(%struct.type* %85, i8* %86)
  store i8* %87, i8** %26, align 8
  %88 = load i8*, i8** %26, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = sub nsw i64 %92, %94
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = sub nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %13, align 4
  %100 = load %struct.type*, %struct.type** %11, align 8
  %101 = load i8*, i8** %26, align 8
  %102 = call %struct.type* @printable_val_type(%struct.type* %100, i8* %101)
  store %struct.type* %102, %struct.type** %11, align 8
  %103 = load %struct.type*, %struct.type** %11, align 8
  %104 = call i32 @TYPE_CODE(%struct.type* %103)
  switch i32 %104, label %105 [
    i32 132, label %116
    i32 131, label %116
    i32 133, label %246
    i32 128, label %306
    i32 129, label %306
    i32 134, label %321
    i32 130, label %424
  ]

105:                                              ; preds = %84
  %106 = load %struct.type*, %struct.type** %11, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* %19, align 4
  %115 = call i32 @c_val_print(%struct.type* %106, i8* %107, i32 %108, i32 %109, %struct.ui_file* %110, i32 %111, i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %10, align 4
  br label %491

116:                                              ; preds = %84, %84
  %117 = load %struct.type*, %struct.type** %11, align 8
  %118 = call i32 @ada_is_fixed_point_type(%struct.type* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %116
  %121 = load %struct.type*, %struct.type** %11, align 8
  %122 = load i8*, i8** %26, align 8
  %123 = call i64 @unpack_long(%struct.type* %121, i8* %122)
  store i64 %123, i64* %30, align 8
  %124 = load %struct.type*, %struct.type** %11, align 8
  %125 = call i32 @TYPE_LENGTH(%struct.type* %124)
  store i32 %125, i32* %31, align 4
  %126 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %127 = load i32, i32* %31, align 4
  %128 = icmp slt i32 %127, 4
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %131 = load %struct.type*, %struct.type** %11, align 8
  %132 = load i64, i64* %30, align 8
  %133 = call i64 @ada_fixed_to_float(%struct.type* %131, i64 %132)
  %134 = sitofp i64 %133 to double
  %135 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %126, i8* %130, double %134)
  store i32 0, i32* %10, align 4
  br label %491

136:                                              ; preds = %116
  %137 = load %struct.type*, %struct.type** %11, align 8
  %138 = call i32 @ada_is_vax_floating_type(%struct.type* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %169

140:                                              ; preds = %136
  %141 = load %struct.type*, %struct.type** %11, align 8
  %142 = load i8*, i8** %26, align 8
  %143 = load i32, i32* %14, align 4
  %144 = call %struct.value* @value_from_contents_and_address(%struct.type* %141, i8* %142, i32 %143)
  store %struct.value* %144, %struct.value** %32, align 8
  %145 = load %struct.type*, %struct.type** %11, align 8
  %146 = call %struct.value* @ada_vax_float_print_function(%struct.type* %145)
  store %struct.value* %146, %struct.value** %33, align 8
  %147 = load %struct.value*, %struct.value** %33, align 8
  %148 = icmp ne %struct.value* %147, null
  br i1 %148, label %149, label %168

149:                                              ; preds = %140
  %150 = load %struct.type*, %struct.type** @ada_val_print_1.parray_of_char, align 8
  %151 = icmp eq %struct.type* %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load i32, i32* @builtin_type_char, align 4
  %154 = load i32, i32* @builtin_type_int, align 4
  %155 = call i32 @create_range_type(i32* null, i32 %154, i32 0, i32 32)
  %156 = call i32 @create_array_type(i32* null, i32 %153, i32 %155)
  %157 = call %struct.type* @make_pointer_type(i32 %156, i32* null)
  store %struct.type* %157, %struct.type** @ada_val_print_1.parray_of_char, align 8
  br label %158

158:                                              ; preds = %152, %149
  %159 = load %struct.type*, %struct.type** @ada_val_print_1.parray_of_char, align 8
  %160 = load %struct.value*, %struct.value** %33, align 8
  %161 = call %struct.value* @call_function_by_hand(%struct.value* %160, i32 1, %struct.value** %32)
  %162 = call %struct.value* @value_cast(%struct.type* %159, %struct.value* %161)
  %163 = call %struct.value* @value_ind(%struct.value* %162)
  store %struct.value* %163, %struct.value** %34, align 8
  %164 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %165 = load %struct.value*, %struct.value** %34, align 8
  %166 = call i8* @VALUE_CONTENTS(%struct.value* %165)
  %167 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %166)
  store i32 0, i32* %10, align 4
  br label %491

168:                                              ; preds = %140
  br label %244

169:                                              ; preds = %136
  %170 = load %struct.type*, %struct.type** %11, align 8
  %171 = call i32 @TYPE_CODE(%struct.type* %170)
  %172 = icmp eq i32 %171, 131
  br i1 %172, label %173, label %208

173:                                              ; preds = %169
  %174 = load %struct.type*, %struct.type** %11, align 8
  %175 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %174)
  store %struct.type* %175, %struct.type** %35, align 8
  %176 = load %struct.type*, %struct.type** %11, align 8
  %177 = call i32 @TYPE_LENGTH(%struct.type* %176)
  %178 = load %struct.type*, %struct.type** %35, align 8
  %179 = call i32 @TYPE_LENGTH(%struct.type* %178)
  %180 = icmp ne i32 %177, %179
  br i1 %180, label %181, label %196

181:                                              ; preds = %173
  %182 = load %struct.type*, %struct.type** %35, align 8
  %183 = load %struct.type*, %struct.type** %11, align 8
  %184 = load i8*, i8** %26, align 8
  %185 = call %struct.value* @value_from_contents_and_address(%struct.type* %183, i8* %184, i32 0)
  %186 = call %struct.value* @value_cast(%struct.type* %182, %struct.value* %185)
  store %struct.value* %186, %struct.value** %36, align 8
  %187 = load %struct.type*, %struct.type** %35, align 8
  %188 = load %struct.value*, %struct.value** %36, align 8
  %189 = call i8* @VALUE_CONTENTS(%struct.value* %188)
  %190 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* %18, align 4
  %193 = add nsw i32 %192, 1
  %194 = load i32, i32* %19, align 4
  %195 = call i32 @ada_val_print_1(%struct.type* %187, i8* %189, i32 0, i32 0, %struct.ui_file* %190, i32 %191, i32 0, i32 %193, i32 %194)
  store i32 %195, i32* %10, align 4
  br label %491

196:                                              ; preds = %173
  %197 = load %struct.type*, %struct.type** %11, align 8
  %198 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %197)
  %199 = load i8*, i8** %12, align 8
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* %14, align 4
  %202 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %203 = load i32, i32* %16, align 4
  %204 = load i32, i32* %17, align 4
  %205 = load i32, i32* %18, align 4
  %206 = load i32, i32* %19, align 4
  %207 = call i32 @ada_val_print_1(%struct.type* %198, i8* %199, i32 %200, i32 %201, %struct.ui_file* %202, i32 %203, i32 %204, i32 %205, i32 %206)
  store i32 %207, i32* %10, align 4
  br label %491

208:                                              ; preds = %169
  %209 = load i32, i32* %16, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = load i32, i32* %16, align 4
  br label %215

213:                                              ; preds = %208
  %214 = load i32, i32* @output_format, align 4
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi i32 [ %212, %211 ], [ %214, %213 ]
  store i32 %216, i32* %16, align 4
  %217 = load i32, i32* %16, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %215
  %220 = load i8*, i8** %26, align 8
  %221 = load %struct.type*, %struct.type** %11, align 8
  %222 = load i32, i32* %16, align 4
  %223 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %224 = call i32 @print_scalar_formatted(i8* %220, %struct.type* %221, i32 %222, i32 0, %struct.ui_file* %223)
  br label %243

225:                                              ; preds = %215
  %226 = load %struct.type*, %struct.type** %11, align 8
  %227 = load i8*, i8** %26, align 8
  %228 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %229 = call i32 @val_print_type_code_int(%struct.type* %226, i8* %227, %struct.ui_file* %228)
  %230 = load %struct.type*, %struct.type** %11, align 8
  %231 = call i32 @ada_is_character_type(%struct.type* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %225
  %234 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %235 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct.ui_file* %234)
  %236 = load %struct.type*, %struct.type** %11, align 8
  %237 = load i8*, i8** %26, align 8
  %238 = call i64 @unpack_long(%struct.type* %236, i8* %237)
  %239 = trunc i64 %238 to i8
  %240 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %241 = call i32 @ada_printchar(i8 zeroext %239, %struct.ui_file* %240)
  br label %242

242:                                              ; preds = %233, %225
  br label %243

243:                                              ; preds = %242, %219
  store i32 0, i32* %10, align 4
  br label %491

244:                                              ; preds = %168
  br label %245

245:                                              ; preds = %244
  br label %246

246:                                              ; preds = %84, %245
  %247 = load i32, i32* %16, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %246
  %250 = load i8*, i8** %26, align 8
  %251 = load %struct.type*, %struct.type** %11, align 8
  %252 = load i32, i32* %16, align 4
  %253 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %254 = call i32 @print_scalar_formatted(i8* %250, %struct.type* %251, i32 %252, i32 0, %struct.ui_file* %253)
  br label %490

255:                                              ; preds = %246
  %256 = load %struct.type*, %struct.type** %11, align 8
  %257 = call i32 @TYPE_NFIELDS(%struct.type* %256)
  store i32 %257, i32* %20, align 4
  %258 = load %struct.type*, %struct.type** %11, align 8
  %259 = load i8*, i8** %26, align 8
  %260 = call i64 @unpack_long(%struct.type* %258, i8* %259)
  store i64 %260, i64* %24, align 8
  store i32 0, i32* %21, align 4
  br label %261

261:                                              ; preds = %274, %255
  %262 = load i32, i32* %21, align 4
  %263 = load i32, i32* %20, align 4
  %264 = icmp ult i32 %262, %263
  br i1 %264, label %265, label %277

265:                                              ; preds = %261
  %266 = load i32, i32* @QUIT, align 4
  %267 = load i64, i64* %24, align 8
  %268 = load %struct.type*, %struct.type** %11, align 8
  %269 = load i32, i32* %21, align 4
  %270 = call i64 @TYPE_FIELD_BITPOS(%struct.type* %268, i32 %269)
  %271 = icmp eq i64 %267, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %265
  br label %277

273:                                              ; preds = %265
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %21, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %21, align 4
  br label %261

277:                                              ; preds = %272, %261
  %278 = load i32, i32* %21, align 4
  %279 = load i32, i32* %20, align 4
  %280 = icmp ult i32 %278, %279
  br i1 %280, label %281, label %301

281:                                              ; preds = %277
  %282 = load %struct.type*, %struct.type** %11, align 8
  %283 = load i32, i32* %21, align 4
  %284 = call i32 @TYPE_FIELD_NAME(%struct.type* %282, i32 %283)
  %285 = call i8* @ada_enum_name(i32 %284)
  store i8* %285, i8** %37, align 8
  %286 = load i8*, i8** %37, align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 0
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp eq i32 %289, 39
  br i1 %290, label %291, label %296

291:                                              ; preds = %281
  %292 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %293 = load i64, i64* %24, align 8
  %294 = load i8*, i8** %37, align 8
  %295 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %292, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 %293, i8* %294)
  br label %300

296:                                              ; preds = %281
  %297 = load i8*, i8** %37, align 8
  %298 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %299 = call i32 @fputs_filtered(i8* %297, %struct.ui_file* %298)
  br label %300

300:                                              ; preds = %296, %291
  br label %305

301:                                              ; preds = %277
  %302 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %303 = load i64, i64* %24, align 8
  %304 = call i32 @print_longest(%struct.ui_file* %302, i8 signext 100, i32 0, i64 %303)
  br label %305

305:                                              ; preds = %301, %300
  br label %490

306:                                              ; preds = %84, %84
  %307 = load %struct.type*, %struct.type** %11, align 8
  %308 = call i32 @ada_is_bogus_array_descriptor(%struct.type* %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %306
  %311 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %312 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %311, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %491

313:                                              ; preds = %306
  %314 = load %struct.type*, %struct.type** %11, align 8
  %315 = load i8*, i8** %26, align 8
  %316 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %317 = load i32, i32* %16, align 4
  %318 = load i32, i32* %18, align 4
  %319 = load i32, i32* %19, align 4
  %320 = call i32 @print_record(%struct.type* %314, i8* %315, %struct.ui_file* %316, i32 %317, i32 %318, i32 %319)
  store i32 0, i32* %10, align 4
  br label %491

321:                                              ; preds = %84
  %322 = load %struct.type*, %struct.type** %11, align 8
  %323 = call i32 @TYPE_LENGTH(%struct.type* %322)
  %324 = icmp ugt i32 %323, 0
  br i1 %324, label %325, label %423

325:                                              ; preds = %321
  %326 = load %struct.type*, %struct.type** %11, align 8
  %327 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %326)
  %328 = call i32 @TYPE_LENGTH(%struct.type* %327)
  %329 = icmp ugt i32 %328, 0
  br i1 %329, label %330, label %423

330:                                              ; preds = %325
  %331 = load %struct.type*, %struct.type** %11, align 8
  %332 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %331)
  store %struct.type* %332, %struct.type** %22, align 8
  %333 = load %struct.type*, %struct.type** %22, align 8
  %334 = call i32 @TYPE_LENGTH(%struct.type* %333)
  store i32 %334, i32* %23, align 4
  %335 = load %struct.type*, %struct.type** %11, align 8
  %336 = call i32 @TYPE_LENGTH(%struct.type* %335)
  %337 = load i32, i32* %23, align 4
  %338 = udiv i32 %336, %337
  store i32 %338, i32* %20, align 4
  %339 = load %struct.type*, %struct.type** %11, align 8
  %340 = call i32 @ada_is_string_type(%struct.type* %339)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %389

342:                                              ; preds = %330
  %343 = load i32, i32* %16, align 4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %348, label %345

345:                                              ; preds = %342
  %346 = load i32, i32* %16, align 4
  %347 = icmp eq i32 %346, 115
  br i1 %347, label %348, label %389

348:                                              ; preds = %345, %342
  %349 = load i32, i32* @prettyprint_arrays, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %348
  %352 = load i32, i32* %18, align 4
  %353 = mul nsw i32 2, %352
  %354 = add nsw i32 2, %353
  %355 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %356 = call i32 @print_spaces_filtered(i32 %354, %struct.ui_file* %355)
  br label %357

357:                                              ; preds = %351, %348
  %358 = load i32, i32* @stop_print_at_null, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %383

360:                                              ; preds = %357
  store i32 0, i32* %38, align 4
  br label %361

361:                                              ; preds = %378, %360
  %362 = load i32, i32* %38, align 4
  %363 = load i32, i32* %20, align 4
  %364 = icmp ult i32 %362, %363
  br i1 %364, label %365, label %375

365:                                              ; preds = %361
  %366 = load i32, i32* %38, align 4
  %367 = load i32, i32* @print_max, align 4
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %369, label %375

369:                                              ; preds = %365
  %370 = load i8*, i8** %26, align 8
  %371 = load i32, i32* %38, align 4
  %372 = load i32, i32* %23, align 4
  %373 = call i32 @char_at(i8* %370, i32 %371, i32 %372)
  %374 = icmp ne i32 %373, 0
  br label %375

375:                                              ; preds = %369, %365, %361
  %376 = phi i1 [ false, %365 ], [ false, %361 ], [ %374, %369 ]
  br i1 %376, label %377, label %381

377:                                              ; preds = %375
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %38, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %38, align 4
  br label %361

381:                                              ; preds = %375
  %382 = load i32, i32* %38, align 4
  store i32 %382, i32* %20, align 4
  br label %383

383:                                              ; preds = %381, %357
  %384 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %385 = load i8*, i8** %26, align 8
  %386 = load i32, i32* %20, align 4
  %387 = load i32, i32* %23, align 4
  %388 = call i32 @printstr(%struct.ui_file* %384, i8* %385, i32 %386, i32 0, i32 %387)
  br label %419

389:                                              ; preds = %345, %330
  store i32 0, i32* %20, align 4
  %390 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %391 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %390, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %392 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %393 = load %struct.type*, %struct.type** %11, align 8
  %394 = call i32 @print_optional_low_bound(%struct.ui_file* %392, %struct.type* %393)
  %395 = load %struct.type*, %struct.type** %11, align 8
  %396 = call i32 @TYPE_FIELD_BITSIZE(%struct.type* %395, i32 0)
  %397 = icmp sgt i32 %396, 0
  br i1 %397, label %398, label %406

398:                                              ; preds = %389
  %399 = load %struct.type*, %struct.type** %11, align 8
  %400 = load i8*, i8** %26, align 8
  %401 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %402 = load i32, i32* %16, align 4
  %403 = load i32, i32* %18, align 4
  %404 = load i32, i32* %19, align 4
  %405 = call i32 @val_print_packed_array_elements(%struct.type* %399, i8* %400, i32 0, %struct.ui_file* %401, i32 %402, i32 %403, i32 %404)
  br label %416

406:                                              ; preds = %389
  %407 = load %struct.type*, %struct.type** %11, align 8
  %408 = load i8*, i8** %26, align 8
  %409 = load i32, i32* %14, align 4
  %410 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %411 = load i32, i32* %16, align 4
  %412 = load i32, i32* %17, align 4
  %413 = load i32, i32* %18, align 4
  %414 = load i32, i32* %19, align 4
  %415 = call i32 @val_print_array_elements(%struct.type* %407, i8* %408, i32 %409, %struct.ui_file* %410, i32 %411, i32 %412, i32 %413, i32 %414, i32 0)
  br label %416

416:                                              ; preds = %406, %398
  %417 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %418 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %417, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %419

419:                                              ; preds = %416, %383
  %420 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %421 = call i32 @gdb_flush(%struct.ui_file* %420)
  %422 = load i32, i32* %20, align 4
  store i32 %422, i32* %10, align 4
  br label %491

423:                                              ; preds = %325, %321
  br label %424

424:                                              ; preds = %84, %423
  %425 = load %struct.type*, %struct.type** %11, align 8
  %426 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %425)
  %427 = call %struct.type* @check_typedef(%struct.type* %426)
  store %struct.type* %427, %struct.type** %22, align 8
  %428 = load i32, i32* @addressprint, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %446

430:                                              ; preds = %424
  %431 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %432 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %431, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %433 = load i8*, i8** %26, align 8
  %434 = load i32, i32* @TARGET_PTR_BIT, align 4
  %435 = load i32, i32* @HOST_CHAR_BIT, align 4
  %436 = sdiv i32 %434, %435
  %437 = call i32 @extract_unsigned_integer(i8* %433, i32 %436)
  %438 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %439 = call i32 @print_address_numeric(i32 %437, i32 1, %struct.ui_file* %438)
  %440 = load i32, i32* %17, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %430
  %443 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %444 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct.ui_file* %443)
  br label %445

445:                                              ; preds = %442, %430
  br label %446

446:                                              ; preds = %445, %424
  %447 = load i32, i32* %17, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %489

449:                                              ; preds = %446
  %450 = load %struct.type*, %struct.type** %22, align 8
  %451 = call i32 @TYPE_CODE(%struct.type* %450)
  %452 = load i32, i32* @TYPE_CODE_UNDEF, align 4
  %453 = icmp ne i32 %451, %452
  br i1 %453, label %454, label %485

454:                                              ; preds = %449
  %455 = load %struct.type*, %struct.type** @builtin_type_void, align 8
  %456 = call i32 @lookup_pointer_type(%struct.type* %455)
  %457 = load i8*, i8** %26, align 8
  %458 = call i32 @unpack_pointer(i32 %456, i8* %457)
  %459 = sext i32 %458 to i64
  store i64 %459, i64* %39, align 8
  %460 = load i64, i64* %39, align 8
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %481

462:                                              ; preds = %454
  %463 = load %struct.type*, %struct.type** %22, align 8
  %464 = call i32 @lookup_pointer_type(%struct.type* %463)
  %465 = load i64, i64* %39, align 8
  %466 = call i32 @value_from_longest(i32 %464, i64 %465)
  %467 = call %struct.value* @ada_value_ind(i32 %466)
  store %struct.value* %467, %struct.value** %40, align 8
  %468 = load %struct.value*, %struct.value** %40, align 8
  %469 = call %struct.type* @VALUE_TYPE(%struct.value* %468)
  %470 = load %struct.value*, %struct.value** %40, align 8
  %471 = call i8* @VALUE_CONTENTS(%struct.value* %470)
  %472 = load %struct.value*, %struct.value** %40, align 8
  %473 = call i32 @VALUE_ADDRESS(%struct.value* %472)
  %474 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %475 = load i32, i32* %16, align 4
  %476 = load i32, i32* %17, align 4
  %477 = load i32, i32* %18, align 4
  %478 = add nsw i32 %477, 1
  %479 = load i32, i32* %19, align 4
  %480 = call i32 @val_print(%struct.type* %469, i8* %471, i32 0, i32 %473, %struct.ui_file* %474, i32 %475, i32 %476, i32 %478, i32 %479)
  br label %484

481:                                              ; preds = %454
  %482 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %483 = call i32 @fputs_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %482)
  br label %484

484:                                              ; preds = %481, %462
  br label %488

485:                                              ; preds = %449
  %486 = load %struct.ui_file*, %struct.ui_file** %15, align 8
  %487 = call i32 @fputs_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.ui_file* %486)
  br label %488

488:                                              ; preds = %485, %484
  br label %489

489:                                              ; preds = %488, %446
  br label %490

490:                                              ; preds = %489, %305, %249
  store i32 0, i32* %10, align 4
  br label %491

491:                                              ; preds = %490, %419, %313, %310, %243, %196, %181, %158, %120, %105, %80
  %492 = load i32, i32* %10, align 4
  ret i32 %492
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i64 @ada_is_array_descriptor(%struct.type*) #1

declare dso_local i64 @ada_is_packed_array_type(%struct.type*) #1

declare dso_local %struct.value* @value_mark(...) #1

declare dso_local %struct.value* @value_from_contents_and_address(%struct.type*, i8*, i32) #1

declare dso_local %struct.value* @ada_coerce_to_simple_array_ptr(%struct.value*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i8* @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i32 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i32 @value_free_to_mark(%struct.value*) #1

declare dso_local i8* @ada_aligned_value_addr(%struct.type*, i8*) #1

declare dso_local %struct.type* @printable_val_type(%struct.type*, i8*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @c_val_print(%struct.type*, i8*, i32, i32, %struct.ui_file*, i32, i32, i32, i32) #1

declare dso_local i32 @ada_is_fixed_point_type(%struct.type*) #1

declare dso_local i64 @unpack_long(%struct.type*, i8*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @ada_fixed_to_float(%struct.type*, i64) #1

declare dso_local i32 @ada_is_vax_floating_type(%struct.type*) #1

declare dso_local %struct.value* @ada_vax_float_print_function(%struct.type*) #1

declare dso_local %struct.type* @make_pointer_type(i32, i32*) #1

declare dso_local i32 @create_array_type(i32*, i32, i32) #1

declare dso_local i32 @create_range_type(i32*, i32, i32, i32) #1

declare dso_local %struct.value* @value_ind(%struct.value*) #1

declare dso_local %struct.value* @value_cast(%struct.type*, %struct.value*) #1

declare dso_local %struct.value* @call_function_by_hand(%struct.value*, i32, %struct.value**) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @print_scalar_formatted(i8*, %struct.type*, i32, i32, %struct.ui_file*) #1

declare dso_local i32 @val_print_type_code_int(%struct.type*, i8*, %struct.ui_file*) #1

declare dso_local i32 @ada_is_character_type(%struct.type*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @ada_printchar(i8 zeroext, %struct.ui_file*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i64 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local i8* @ada_enum_name(i32) #1

declare dso_local i32 @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i32 @print_longest(%struct.ui_file*, i8 signext, i32, i64) #1

declare dso_local i32 @ada_is_bogus_array_descriptor(%struct.type*) #1

declare dso_local i32 @print_record(%struct.type*, i8*, %struct.ui_file*, i32, i32, i32) #1

declare dso_local i32 @ada_is_string_type(%struct.type*) #1

declare dso_local i32 @print_spaces_filtered(i32, %struct.ui_file*) #1

declare dso_local i32 @char_at(i8*, i32, i32) #1

declare dso_local i32 @printstr(%struct.ui_file*, i8*, i32, i32, i32) #1

declare dso_local i32 @print_optional_low_bound(%struct.ui_file*, %struct.type*) #1

declare dso_local i32 @TYPE_FIELD_BITSIZE(%struct.type*, i32) #1

declare dso_local i32 @val_print_packed_array_elements(%struct.type*, i8*, i32, %struct.ui_file*, i32, i32, i32) #1

declare dso_local i32 @val_print_array_elements(%struct.type*, i8*, i32, %struct.ui_file*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gdb_flush(%struct.ui_file*) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local i32 @print_address_numeric(i32, i32, %struct.ui_file*) #1

declare dso_local i32 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @unpack_pointer(i32, i8*) #1

declare dso_local i32 @lookup_pointer_type(%struct.type*) #1

declare dso_local %struct.value* @ada_value_ind(i32) #1

declare dso_local i32 @value_from_longest(i32, i64) #1

declare dso_local i32 @val_print(%struct.type*, i8*, i32, i32, %struct.ui_file*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
