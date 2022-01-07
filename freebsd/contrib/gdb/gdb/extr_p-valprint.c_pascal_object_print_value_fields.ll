; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-valprint.c_pascal_object_print_value_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-valprint.c_pascal_object_print_value_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obstack = type { i32 }
%struct.type = type { i32 }
%struct.ui_file = type { i32 }
%struct.value = type { i32 }

@dont_print_statmem_obstack = common dso_local global %struct.obstack zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"<No data fields>\00", align 1
@pascal_static_field_print = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"members of \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c": \00", align 1
@inspect_it = common dso_local global i64 0, align 8
@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"\22( ptr \22\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"\22( nodef \22\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@language_cplus = common dso_local global i32 0, align 4
@DMGL_PARAMS = common dso_local global i32 0, align 4
@DMGL_ANSI = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"\22 \22\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\22) \22\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"<optimized out or zero length>\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"<optimized out>\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pascal_object_print_value_fields(%struct.type* %0, i8* %1, i64 %2, %struct.ui_file* %3, i32 %4, i32 %5, i32 %6, %struct.type** %7, i32 %8) #0 {
  %10 = alloca %struct.type*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ui_file*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.type**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.obstack, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.value*, align 8
  %26 = alloca %struct.value*, align 8
  store %struct.type* %0, %struct.type** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store %struct.ui_file* %3, %struct.ui_file** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.type** %7, %struct.type*** %17, align 8
  store i32 %8, i32* %18, align 4
  %27 = call i8* @obstack_next_free(%struct.obstack* @dont_print_statmem_obstack)
  store i8* %27, i8** %23, align 8
  %28 = load %struct.type*, %struct.type** %10, align 8
  %29 = call i32 @CHECK_TYPEDEF(%struct.type* %28)
  %30 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %31 = call i32 @fprintf_filtered(%struct.ui_file* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.type*, %struct.type** %10, align 8
  %33 = call i32 @TYPE_NFIELDS(%struct.type* %32)
  store i32 %33, i32* %20, align 4
  %34 = load %struct.type*, %struct.type** %10, align 8
  %35 = call i32 @TYPE_N_BASECLASSES(%struct.type* %34)
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* %21, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %9
  %39 = load %struct.type*, %struct.type** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* %16, align 4
  %47 = load %struct.type**, %struct.type*** %17, align 8
  %48 = call i32 @pascal_object_print_value(%struct.type* %39, i8* %40, i64 %41, %struct.ui_file* %42, i32 %43, i32 %45, i32 %46, %struct.type** %47)
  br label %49

49:                                               ; preds = %38, %9
  %50 = load i32, i32* %20, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %21, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %57 = call i32 @fprintf_filtered(%struct.ui_file* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %317

58:                                               ; preds = %52, %49
  store i32 0, i32* %24, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = bitcast %struct.obstack* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 bitcast (%struct.obstack* @dont_print_statmem_obstack to i8*), i64 4, i1 false)
  %63 = call i32 @obstack_finish(%struct.obstack* @dont_print_statmem_obstack)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %21, align 4
  store i32 %65, i32* %19, align 4
  br label %66

66:                                               ; preds = %296, %64
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %20, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %299

70:                                               ; preds = %66
  %71 = load i32, i32* @pascal_static_field_print, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = load %struct.type*, %struct.type** %10, align 8
  %75 = load i32, i32* %19, align 4
  %76 = call i64 @TYPE_FIELD_STATIC(%struct.type* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %296

79:                                               ; preds = %73, %70
  %80 = load i32, i32* %24, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %84 = call i32 @fprintf_filtered(%struct.ui_file* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %109

85:                                               ; preds = %79
  %86 = load i32, i32* %21, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %85
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %93 = call i32 @fprintf_filtered(%struct.ui_file* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32, i32* %15, align 4
  %95 = mul nsw i32 2, %94
  %96 = add nsw i32 2, %95
  %97 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %98 = call i32 @print_spaces_filtered(i32 %96, %struct.ui_file* %97)
  %99 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %100 = call i32 @fputs_filtered(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct.ui_file* %99)
  %101 = load %struct.type*, %struct.type** %10, align 8
  %102 = call i8* @type_name_no_tag(%struct.type* %101)
  %103 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %104 = call i32 @fputs_filtered(i8* %102, %struct.ui_file* %103)
  %105 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %106 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %105)
  br label %107

107:                                              ; preds = %91, %88
  br label %108

108:                                              ; preds = %107, %85
  br label %109

109:                                              ; preds = %108, %82
  store i32 1, i32* %24, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %114 = call i32 @fprintf_filtered(%struct.ui_file* %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32, i32* %15, align 4
  %116 = mul nsw i32 2, %115
  %117 = add nsw i32 2, %116
  %118 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %119 = call i32 @print_spaces_filtered(i32 %117, %struct.ui_file* %118)
  br label %126

120:                                              ; preds = %109
  %121 = load i32, i32* %15, align 4
  %122 = mul nsw i32 2, %121
  %123 = add nsw i32 2, %122
  %124 = call i32 @n_spaces(i32 %123)
  %125 = call i32 @wrap_here(i32 %124)
  br label %126

126:                                              ; preds = %120, %112
  %127 = load i64, i64* @inspect_it, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %173

129:                                              ; preds = %126
  %130 = load %struct.type*, %struct.type** %10, align 8
  %131 = load i32, i32* %19, align 4
  %132 = call i32 @TYPE_FIELD_TYPE(%struct.type* %130, i32 %131)
  %133 = call i64 @TYPE_CODE(i32 %132)
  %134 = load i64, i64* @TYPE_CODE_PTR, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %138 = call i32 @fputs_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %struct.ui_file* %137)
  br label %142

139:                                              ; preds = %129
  %140 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %141 = call i32 @fputs_filtered(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), %struct.ui_file* %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load %struct.type*, %struct.type** %10, align 8
  %144 = load i32, i32* %19, align 4
  %145 = call i64 @TYPE_FIELD_STATIC(%struct.type* %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %149 = call i32 @fputs_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), %struct.ui_file* %148)
  br label %150

150:                                              ; preds = %147, %142
  %151 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %152 = load %struct.type*, %struct.type** %10, align 8
  %153 = load i32, i32* %19, align 4
  %154 = call i32 @TYPE_FIELD_NAME(%struct.type* %152, i32 %153)
  %155 = load i32, i32* @language_cplus, align 4
  %156 = load i32, i32* @DMGL_PARAMS, align 4
  %157 = load i32, i32* @DMGL_ANSI, align 4
  %158 = or i32 %156, %157
  %159 = call i32 @fprintf_symbol_filtered(%struct.ui_file* %151, i32 %154, i32 %155, i32 %158)
  %160 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %161 = call i32 @fputs_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %struct.ui_file* %160)
  %162 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %163 = load %struct.type*, %struct.type** %10, align 8
  %164 = load i32, i32* %19, align 4
  %165 = call i32 @TYPE_FIELD_NAME(%struct.type* %163, i32 %164)
  %166 = load i32, i32* @language_cplus, align 4
  %167 = load i32, i32* @DMGL_PARAMS, align 4
  %168 = load i32, i32* @DMGL_ANSI, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @fprintf_symbol_filtered(%struct.ui_file* %162, i32 %165, i32 %166, i32 %169)
  %171 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %172 = call i32 @fputs_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %struct.ui_file* %171)
  br label %199

173:                                              ; preds = %126
  %174 = load %struct.type*, %struct.type** %10, align 8
  %175 = load i32, i32* %19, align 4
  %176 = call i32 @TYPE_FIELD_TYPE(%struct.type* %174, i32 %175)
  %177 = call i32 @annotate_field_begin(i32 %176)
  %178 = load %struct.type*, %struct.type** %10, align 8
  %179 = load i32, i32* %19, align 4
  %180 = call i64 @TYPE_FIELD_STATIC(%struct.type* %178, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %173
  %183 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %184 = call i32 @fputs_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), %struct.ui_file* %183)
  br label %185

185:                                              ; preds = %182, %173
  %186 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %187 = load %struct.type*, %struct.type** %10, align 8
  %188 = load i32, i32* %19, align 4
  %189 = call i32 @TYPE_FIELD_NAME(%struct.type* %187, i32 %188)
  %190 = load i32, i32* @language_cplus, align 4
  %191 = load i32, i32* @DMGL_PARAMS, align 4
  %192 = load i32, i32* @DMGL_ANSI, align 4
  %193 = or i32 %191, %192
  %194 = call i32 @fprintf_symbol_filtered(%struct.ui_file* %186, i32 %189, i32 %190, i32 %193)
  %195 = call i32 (...) @annotate_field_name_end()
  %196 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %197 = call i32 @fputs_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.ui_file* %196)
  %198 = call i32 (...) @annotate_field_value()
  br label %199

199:                                              ; preds = %185, %150
  %200 = load %struct.type*, %struct.type** %10, align 8
  %201 = load i32, i32* %19, align 4
  %202 = call i64 @TYPE_FIELD_STATIC(%struct.type* %200, i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %234, label %204

204:                                              ; preds = %199
  %205 = load %struct.type*, %struct.type** %10, align 8
  %206 = load i32, i32* %19, align 4
  %207 = call i64 @TYPE_FIELD_PACKED(%struct.type* %205, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %234

209:                                              ; preds = %204
  %210 = load %struct.type*, %struct.type** %10, align 8
  %211 = load i32, i32* %19, align 4
  %212 = call i64 @TYPE_FIELD_IGNORE(%struct.type* %210, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %216 = call i32 @fputs_filtered(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), %struct.ui_file* %215)
  br label %233

217:                                              ; preds = %209
  %218 = load %struct.type*, %struct.type** %10, align 8
  %219 = load i32, i32* %19, align 4
  %220 = call i32 @TYPE_FIELD_TYPE(%struct.type* %218, i32 %219)
  %221 = load %struct.type*, %struct.type** %10, align 8
  %222 = load i8*, i8** %11, align 8
  %223 = load i32, i32* %19, align 4
  %224 = call i32 @unpack_field_as_long(%struct.type* %221, i8* %222, i32 %223)
  %225 = call %struct.value* @value_from_longest(i32 %220, i32 %224)
  store %struct.value* %225, %struct.value** %25, align 8
  %226 = load %struct.value*, %struct.value** %25, align 8
  %227 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, 1
  %231 = load i32, i32* %16, align 4
  %232 = call i32 @common_val_print(%struct.value* %226, %struct.ui_file* %227, i32 %228, i32 0, i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %217, %214
  br label %294

234:                                              ; preds = %204, %199
  %235 = load %struct.type*, %struct.type** %10, align 8
  %236 = load i32, i32* %19, align 4
  %237 = call i64 @TYPE_FIELD_IGNORE(%struct.type* %235, i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %241 = call i32 @fputs_filtered(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), %struct.ui_file* %240)
  br label %293

242:                                              ; preds = %234
  %243 = load %struct.type*, %struct.type** %10, align 8
  %244 = load i32, i32* %19, align 4
  %245 = call i64 @TYPE_FIELD_STATIC(%struct.type* %243, i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %270

247:                                              ; preds = %242
  %248 = load %struct.type*, %struct.type** %10, align 8
  %249 = load i32, i32* %19, align 4
  %250 = call i32 @TYPE_FIELD_TYPE(%struct.type* %248, i32 %249)
  %251 = load %struct.type*, %struct.type** %10, align 8
  %252 = load i8*, i8** %11, align 8
  %253 = load i32, i32* %19, align 4
  %254 = call i32 @unpack_field_as_long(%struct.type* %251, i8* %252, i32 %253)
  %255 = call %struct.value* @value_from_longest(i32 %250, i32 %254)
  store %struct.value* %255, %struct.value** %26, align 8
  %256 = load %struct.value*, %struct.value** %26, align 8
  %257 = icmp eq %struct.value* %256, null
  br i1 %257, label %258, label %261

258:                                              ; preds = %247
  %259 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %260 = call i32 @fputs_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), %struct.ui_file* %259)
  br label %269

261:                                              ; preds = %247
  %262 = load %struct.value*, %struct.value** %26, align 8
  %263 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %264 = load i32, i32* %14, align 4
  %265 = load i32, i32* %15, align 4
  %266 = add nsw i32 %265, 1
  %267 = load i32, i32* %16, align 4
  %268 = call i32 @pascal_object_print_static_field(%struct.value* %262, %struct.ui_file* %263, i32 %264, i32 %266, i32 %267)
  br label %269

269:                                              ; preds = %261, %258
  br label %292

270:                                              ; preds = %242
  %271 = load %struct.type*, %struct.type** %10, align 8
  %272 = load i32, i32* %19, align 4
  %273 = call i32 @TYPE_FIELD_TYPE(%struct.type* %271, i32 %272)
  %274 = load i8*, i8** %11, align 8
  %275 = load %struct.type*, %struct.type** %10, align 8
  %276 = load i32, i32* %19, align 4
  %277 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %275, i32 %276)
  %278 = sdiv i32 %277, 8
  %279 = load i64, i64* %12, align 8
  %280 = load %struct.type*, %struct.type** %10, align 8
  %281 = load i32, i32* %19, align 4
  %282 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %280, i32 %281)
  %283 = sdiv i32 %282, 8
  %284 = sext i32 %283 to i64
  %285 = add nsw i64 %279, %284
  %286 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %287 = load i32, i32* %14, align 4
  %288 = load i32, i32* %15, align 4
  %289 = add nsw i32 %288, 1
  %290 = load i32, i32* %16, align 4
  %291 = call i32 @val_print(i32 %273, i8* %274, i32 %278, i64 %285, %struct.ui_file* %286, i32 %287, i32 0, i32 %289, i32 %290)
  br label %292

292:                                              ; preds = %270, %269
  br label %293

293:                                              ; preds = %292, %239
  br label %294

294:                                              ; preds = %293, %233
  %295 = call i32 (...) @annotate_field_end()
  br label %296

296:                                              ; preds = %294, %78
  %297 = load i32, i32* %19, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %19, align 4
  br label %66

299:                                              ; preds = %66
  %300 = load i32, i32* %18, align 4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %299
  %303 = load i8*, i8** %23, align 8
  %304 = call i32 @obstack_free(%struct.obstack* @dont_print_statmem_obstack, i8* %303)
  %305 = bitcast %struct.obstack* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.obstack* @dont_print_statmem_obstack to i8*), i8* align 4 %305, i64 4, i1 false)
  br label %306

306:                                              ; preds = %302, %299
  %307 = load i32, i32* %16, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %316

309:                                              ; preds = %306
  %310 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %311 = call i32 @fprintf_filtered(%struct.ui_file* %310, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %312 = load i32, i32* %15, align 4
  %313 = mul nsw i32 2, %312
  %314 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %315 = call i32 @print_spaces_filtered(i32 %313, %struct.ui_file* %314)
  br label %316

316:                                              ; preds = %309, %306
  br label %317

317:                                              ; preds = %316, %55
  %318 = load %struct.ui_file*, %struct.ui_file** %13, align 8
  %319 = call i32 @fprintf_filtered(%struct.ui_file* %318, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare dso_local i8* @obstack_next_free(%struct.obstack*) #1

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i32 @pascal_object_print_value(%struct.type*, i8*, i64, %struct.ui_file*, i32, i32, i32, %struct.type**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @obstack_finish(%struct.obstack*) #1

declare dso_local i64 @TYPE_FIELD_STATIC(%struct.type*, i32) #1

declare dso_local i32 @print_spaces_filtered(i32, %struct.ui_file*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i8* @type_name_no_tag(%struct.type*) #1

declare dso_local i32 @wrap_here(i32) #1

declare dso_local i32 @n_spaces(i32) #1

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @fprintf_symbol_filtered(%struct.ui_file*, i32, i32, i32) #1

declare dso_local i32 @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i32 @annotate_field_begin(i32) #1

declare dso_local i32 @annotate_field_name_end(...) #1

declare dso_local i32 @annotate_field_value(...) #1

declare dso_local i64 @TYPE_FIELD_PACKED(%struct.type*, i32) #1

declare dso_local i64 @TYPE_FIELD_IGNORE(%struct.type*, i32) #1

declare dso_local %struct.value* @value_from_longest(i32, i32) #1

declare dso_local i32 @unpack_field_as_long(%struct.type*, i8*, i32) #1

declare dso_local i32 @common_val_print(%struct.value*, %struct.ui_file*, i32, i32, i32, i32) #1

declare dso_local i32 @pascal_object_print_static_field(%struct.value*, %struct.ui_file*, i32, i32, i32) #1

declare dso_local i32 @val_print(i32, i8*, i32, i64, %struct.ui_file*, i32, i32, i32, i32) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local i32 @annotate_field_end(...) #1

declare dso_local i32 @obstack_free(%struct.obstack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
