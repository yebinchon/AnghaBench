; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-valprint.c_cp_print_value_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-valprint.c_cp_print_value_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obstack = type { i32 }
%struct.type = type { i32 }
%struct.ui_file = type { i32 }
%struct.value = type { i32 }

@dont_print_statmem_obstack = common dso_local global %struct.obstack zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@hpacc_vtbl_ptr_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"<No data fields>\00", align 1
@static_field_print = common dso_local global i32 0, align 4
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
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"<optimized out or zero length>\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"<optimized out>\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c", Virtual table at \00", align 1
@builtin_type_unsigned_long = common dso_local global i32 0, align 4
@vtblprint = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"not implemented\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cp_print_value_fields(%struct.type* %0, %struct.type* %1, i8* %2, i32 %3, i64 %4, %struct.ui_file* %5, i32 %6, i32 %7, i32 %8, %struct.type** %9, i32 %10) #0 {
  %12 = alloca %struct.type*, align 8
  %13 = alloca %struct.type*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.ui_file*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.type**, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.obstack, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.value*, align 8
  %30 = alloca %struct.value*, align 8
  %31 = alloca %struct.value*, align 8
  %32 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %12, align 8
  store %struct.type* %1, %struct.type** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i64 %4, i64* %16, align 8
  store %struct.ui_file* %5, %struct.ui_file** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store %struct.type** %9, %struct.type*** %21, align 8
  store i32 %10, i32* %22, align 4
  %33 = call i8* @obstack_next_free(%struct.obstack* @dont_print_statmem_obstack)
  store i8* %33, i8** %27, align 8
  store i32 0, i32* %28, align 4
  %34 = load %struct.type*, %struct.type** %12, align 8
  %35 = call i32 @CHECK_TYPEDEF(%struct.type* %34)
  %36 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %37 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.type*, %struct.type** %12, align 8
  %39 = call i32 @TYPE_NFIELDS(%struct.type* %38)
  store i32 %39, i32* %24, align 4
  %40 = load %struct.type*, %struct.type** %12, align 8
  %41 = call i32 @TYPE_N_BASECLASSES(%struct.type* %40)
  store i32 %41, i32* %25, align 4
  %42 = load i32, i32* %25, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %11
  %45 = load %struct.type*, %struct.type** %12, align 8
  %46 = load %struct.type*, %struct.type** %13, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = load i32, i32* %15, align 4
  %49 = load i64, i64* %16, align 8
  %50 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %19, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* %20, align 4
  %55 = load %struct.type**, %struct.type*** %21, align 8
  %56 = call i32 @cp_print_value(%struct.type* %45, %struct.type* %46, i8* %47, i32 %48, i64 %49, %struct.ui_file* %50, i32 %51, i32 %53, i32 %54, %struct.type** %55)
  br label %57

57:                                               ; preds = %44, %11
  %58 = load i32, i32* %24, align 4
  %59 = load i32, i32* %25, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %80, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %24, align 4
  %63 = load i32, i32* %25, align 4
  %64 = sub nsw i32 %62, %63
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.type*, %struct.type** %12, align 8
  %68 = call i64 @TYPE_HAS_VTABLE(%struct.type* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load %struct.type*, %struct.type** %12, align 8
  %72 = load i32, i32* %25, align 4
  %73 = call i32 @TYPE_FIELD_NAME(%struct.type* %71, i32 %72)
  %74 = load i32, i32* @hpacc_vtbl_ptr_name, align 4
  %75 = call i64 @strncmp(i32 %73, i32 %74, i32 5)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %70, %66, %61
  %78 = load i32, i32* %24, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77, %70, %57
  %81 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %82 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %364

83:                                               ; preds = %77
  %84 = load i32, i32* %22, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = bitcast %struct.obstack* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 bitcast (%struct.obstack* @dont_print_statmem_obstack to i8*), i64 4, i1 false)
  %88 = call i32 @obstack_finish(%struct.obstack* @dont_print_statmem_obstack)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %25, align 4
  store i32 %90, i32* %23, align 4
  br label %91

91:                                               ; preds = %343, %89
  %92 = load i32, i32* %23, align 4
  %93 = load i32, i32* %24, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %346

95:                                               ; preds = %91
  %96 = load i32, i32* @static_field_print, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = load %struct.type*, %struct.type** %12, align 8
  %100 = load i32, i32* %23, align 4
  %101 = call i64 @TYPE_FIELD_STATIC(%struct.type* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %343

104:                                              ; preds = %98, %95
  %105 = load %struct.type*, %struct.type** %12, align 8
  %106 = call i64 @TYPE_HAS_VTABLE(%struct.type* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load %struct.type*, %struct.type** %12, align 8
  %110 = load i32, i32* %23, align 4
  %111 = call i32 @TYPE_FIELD_NAME(%struct.type* %109, i32 %110)
  %112 = load i32, i32* @hpacc_vtbl_ptr_name, align 4
  %113 = call i64 @strncmp(i32 %111, i32 %112, i32 5)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %343

116:                                              ; preds = %108, %104
  %117 = load i32, i32* %28, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %121 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %146

122:                                              ; preds = %116
  %123 = load i32, i32* %25, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %122
  %126 = load i32, i32* %20, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %125
  %129 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %130 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32, i32* %19, align 4
  %132 = mul nsw i32 2, %131
  %133 = add nsw i32 2, %132
  %134 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %135 = call i32 @print_spaces_filtered(i32 %133, %struct.ui_file* %134)
  %136 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %137 = call i32 @fputs_filtered(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct.ui_file* %136)
  %138 = load %struct.type*, %struct.type** %12, align 8
  %139 = call i8* @type_name_no_tag(%struct.type* %138)
  %140 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %141 = call i32 @fputs_filtered(i8* %139, %struct.ui_file* %140)
  %142 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %143 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %142)
  br label %144

144:                                              ; preds = %128, %125
  br label %145

145:                                              ; preds = %144, %122
  br label %146

146:                                              ; preds = %145, %119
  store i32 1, i32* %28, align 4
  %147 = load i32, i32* %20, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %146
  %150 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %151 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %152 = load i32, i32* %19, align 4
  %153 = mul nsw i32 2, %152
  %154 = add nsw i32 2, %153
  %155 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %156 = call i32 @print_spaces_filtered(i32 %154, %struct.ui_file* %155)
  br label %163

157:                                              ; preds = %146
  %158 = load i32, i32* %19, align 4
  %159 = mul nsw i32 2, %158
  %160 = add nsw i32 2, %159
  %161 = call i32 @n_spaces(i32 %160)
  %162 = call i32 @wrap_here(i32 %161)
  br label %163

163:                                              ; preds = %157, %149
  %164 = load i64, i64* @inspect_it, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %210

166:                                              ; preds = %163
  %167 = load %struct.type*, %struct.type** %12, align 8
  %168 = load i32, i32* %23, align 4
  %169 = call i32 @TYPE_FIELD_TYPE(%struct.type* %167, i32 %168)
  %170 = call i64 @TYPE_CODE(i32 %169)
  %171 = load i64, i64* @TYPE_CODE_PTR, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %166
  %174 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %175 = call i32 @fputs_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %struct.ui_file* %174)
  br label %179

176:                                              ; preds = %166
  %177 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %178 = call i32 @fputs_filtered(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), %struct.ui_file* %177)
  br label %179

179:                                              ; preds = %176, %173
  %180 = load %struct.type*, %struct.type** %12, align 8
  %181 = load i32, i32* %23, align 4
  %182 = call i64 @TYPE_FIELD_STATIC(%struct.type* %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %186 = call i32 @fputs_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), %struct.ui_file* %185)
  br label %187

187:                                              ; preds = %184, %179
  %188 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %189 = load %struct.type*, %struct.type** %12, align 8
  %190 = load i32, i32* %23, align 4
  %191 = call i32 @TYPE_FIELD_NAME(%struct.type* %189, i32 %190)
  %192 = load i32, i32* @language_cplus, align 4
  %193 = load i32, i32* @DMGL_PARAMS, align 4
  %194 = load i32, i32* @DMGL_ANSI, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @fprintf_symbol_filtered(%struct.ui_file* %188, i32 %191, i32 %192, i32 %195)
  %197 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %198 = call i32 @fputs_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), %struct.ui_file* %197)
  %199 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %200 = load %struct.type*, %struct.type** %12, align 8
  %201 = load i32, i32* %23, align 4
  %202 = call i32 @TYPE_FIELD_NAME(%struct.type* %200, i32 %201)
  %203 = load i32, i32* @language_cplus, align 4
  %204 = load i32, i32* @DMGL_PARAMS, align 4
  %205 = load i32, i32* @DMGL_ANSI, align 4
  %206 = or i32 %204, %205
  %207 = call i32 @fprintf_symbol_filtered(%struct.ui_file* %199, i32 %202, i32 %203, i32 %206)
  %208 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %209 = call i32 @fputs_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %struct.ui_file* %208)
  br label %243

210:                                              ; preds = %163
  %211 = load %struct.type*, %struct.type** %12, align 8
  %212 = load i32, i32* %23, align 4
  %213 = call i32 @TYPE_FIELD_TYPE(%struct.type* %211, i32 %212)
  %214 = call i32 @annotate_field_begin(i32 %213)
  %215 = load %struct.type*, %struct.type** %12, align 8
  %216 = load i32, i32* %23, align 4
  %217 = call i64 @TYPE_FIELD_STATIC(%struct.type* %215, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %210
  %220 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %221 = call i32 @fputs_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), %struct.ui_file* %220)
  br label %222

222:                                              ; preds = %219, %210
  %223 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %224 = load %struct.type*, %struct.type** %12, align 8
  %225 = load i32, i32* %23, align 4
  %226 = call i32 @TYPE_FIELD_NAME(%struct.type* %224, i32 %225)
  %227 = load i32, i32* @language_cplus, align 4
  %228 = load i32, i32* @DMGL_PARAMS, align 4
  %229 = load i32, i32* @DMGL_ANSI, align 4
  %230 = or i32 %228, %229
  %231 = call i32 @fprintf_symbol_filtered(%struct.ui_file* %223, i32 %226, i32 %227, i32 %230)
  %232 = call i32 (...) @annotate_field_name_end()
  %233 = load %struct.type*, %struct.type** %12, align 8
  %234 = load i32, i32* %23, align 4
  %235 = call i32 @TYPE_FIELD_NAME(%struct.type* %233, i32 %234)
  %236 = call i64 @strcmp(i32 %235, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %222
  %239 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %240 = call i32 @fputs_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), %struct.ui_file* %239)
  br label %241

241:                                              ; preds = %238, %222
  %242 = call i32 (...) @annotate_field_value()
  br label %243

243:                                              ; preds = %241, %187
  %244 = load %struct.type*, %struct.type** %12, align 8
  %245 = load i32, i32* %23, align 4
  %246 = call i64 @TYPE_FIELD_STATIC(%struct.type* %244, i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %281, label %248

248:                                              ; preds = %243
  %249 = load %struct.type*, %struct.type** %12, align 8
  %250 = load i32, i32* %23, align 4
  %251 = call i64 @TYPE_FIELD_PACKED(%struct.type* %249, i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %281

253:                                              ; preds = %248
  %254 = load %struct.type*, %struct.type** %12, align 8
  %255 = load i32, i32* %23, align 4
  %256 = call i64 @TYPE_FIELD_IGNORE(%struct.type* %254, i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %260 = call i32 @fputs_filtered(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), %struct.ui_file* %259)
  br label %280

261:                                              ; preds = %253
  %262 = load %struct.type*, %struct.type** %12, align 8
  %263 = load i32, i32* %23, align 4
  %264 = call i32 @TYPE_FIELD_TYPE(%struct.type* %262, i32 %263)
  %265 = load %struct.type*, %struct.type** %12, align 8
  %266 = load i8*, i8** %14, align 8
  %267 = load i32, i32* %15, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i32, i32* %23, align 4
  %271 = call i32 @unpack_field_as_long(%struct.type* %265, i8* %269, i32 %270)
  %272 = call %struct.value* @value_from_longest(i32 %264, i32 %271)
  store %struct.value* %272, %struct.value** %29, align 8
  %273 = load %struct.value*, %struct.value** %29, align 8
  %274 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %275 = load i32, i32* %18, align 4
  %276 = load i32, i32* %19, align 4
  %277 = add nsw i32 %276, 1
  %278 = load i32, i32* %20, align 4
  %279 = call i32 @common_val_print(%struct.value* %273, %struct.ui_file* %274, i32 %275, i32 0, i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %261, %258
  br label %341

281:                                              ; preds = %248, %243
  %282 = load %struct.type*, %struct.type** %12, align 8
  %283 = load i32, i32* %23, align 4
  %284 = call i64 @TYPE_FIELD_IGNORE(%struct.type* %282, i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  %287 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %288 = call i32 @fputs_filtered(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), %struct.ui_file* %287)
  br label %340

289:                                              ; preds = %281
  %290 = load %struct.type*, %struct.type** %12, align 8
  %291 = load i32, i32* %23, align 4
  %292 = call i64 @TYPE_FIELD_STATIC(%struct.type* %290, i32 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %315

294:                                              ; preds = %289
  %295 = load %struct.type*, %struct.type** %12, align 8
  %296 = load i32, i32* %23, align 4
  %297 = call %struct.value* @value_static_field(%struct.type* %295, i32 %296)
  store %struct.value* %297, %struct.value** %30, align 8
  %298 = load %struct.value*, %struct.value** %30, align 8
  %299 = icmp eq %struct.value* %298, null
  br i1 %299, label %300, label %303

300:                                              ; preds = %294
  %301 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %302 = call i32 @fputs_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), %struct.ui_file* %301)
  br label %314

303:                                              ; preds = %294
  %304 = load %struct.type*, %struct.type** %12, align 8
  %305 = load i32, i32* %23, align 4
  %306 = call i32 @TYPE_FIELD_TYPE(%struct.type* %304, i32 %305)
  %307 = load %struct.value*, %struct.value** %30, align 8
  %308 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %309 = load i32, i32* %18, align 4
  %310 = load i32, i32* %19, align 4
  %311 = add nsw i32 %310, 1
  %312 = load i32, i32* %20, align 4
  %313 = call i32 @cp_print_static_field(i32 %306, %struct.value* %307, %struct.ui_file* %308, i32 %309, i32 %311, i32 %312)
  br label %314

314:                                              ; preds = %303, %300
  br label %339

315:                                              ; preds = %289
  %316 = load %struct.type*, %struct.type** %12, align 8
  %317 = load i32, i32* %23, align 4
  %318 = call i32 @TYPE_FIELD_TYPE(%struct.type* %316, i32 %317)
  %319 = load i8*, i8** %14, align 8
  %320 = load i32, i32* %15, align 4
  %321 = load %struct.type*, %struct.type** %12, align 8
  %322 = load i32, i32* %23, align 4
  %323 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %321, i32 %322)
  %324 = sdiv i32 %323, 8
  %325 = add nsw i32 %320, %324
  %326 = load i64, i64* %16, align 8
  %327 = load %struct.type*, %struct.type** %12, align 8
  %328 = load i32, i32* %23, align 4
  %329 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %327, i32 %328)
  %330 = sdiv i32 %329, 8
  %331 = sext i32 %330 to i64
  %332 = add nsw i64 %326, %331
  %333 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %334 = load i32, i32* %18, align 4
  %335 = load i32, i32* %19, align 4
  %336 = add nsw i32 %335, 1
  %337 = load i32, i32* %20, align 4
  %338 = call i32 @val_print(i32 %318, i8* %319, i32 %325, i64 %332, %struct.ui_file* %333, i32 %334, i32 0, i32 %336, i32 %337)
  br label %339

339:                                              ; preds = %315, %314
  br label %340

340:                                              ; preds = %339, %286
  br label %341

341:                                              ; preds = %340, %280
  %342 = call i32 (...) @annotate_field_end()
  br label %343

343:                                              ; preds = %341, %115, %103
  %344 = load i32, i32* %23, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %23, align 4
  br label %91

346:                                              ; preds = %91
  %347 = load i32, i32* %22, align 4
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %346
  %350 = load i8*, i8** %27, align 8
  %351 = call i32 @obstack_free(%struct.obstack* @dont_print_statmem_obstack, i8* %350)
  %352 = bitcast %struct.obstack* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.obstack* @dont_print_statmem_obstack to i8*), i8* align 4 %352, i64 4, i1 false)
  br label %353

353:                                              ; preds = %349, %346
  %354 = load i32, i32* %20, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %363

356:                                              ; preds = %353
  %357 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %358 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %357, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %359 = load i32, i32* %19, align 4
  %360 = mul nsw i32 2, %359
  %361 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %362 = call i32 @print_spaces_filtered(i32 %360, %struct.ui_file* %361)
  br label %363

363:                                              ; preds = %356, %353
  br label %364

364:                                              ; preds = %363, %80
  %365 = load %struct.type*, %struct.type** %12, align 8
  %366 = call i64 @TYPE_HAS_VTABLE(%struct.type* %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %416

368:                                              ; preds = %364
  %369 = load %struct.type*, %struct.type** %12, align 8
  %370 = load i32, i32* %25, align 4
  %371 = call i32 @TYPE_FIELD_NAME(%struct.type* %369, i32 %370)
  %372 = load i32, i32* @hpacc_vtbl_ptr_name, align 4
  %373 = call i64 @strncmp(i32 %371, i32 %372, i32 5)
  %374 = icmp eq i64 %373, 0
  br i1 %374, label %375, label %416

375:                                              ; preds = %368
  %376 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %377 = call i32 @fputs_filtered(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), %struct.ui_file* %376)
  %378 = load i32, i32* @builtin_type_unsigned_long, align 4
  %379 = call i32 @lookup_pointer_type(i32 %378)
  %380 = load i8*, i8** %14, align 8
  %381 = load i32, i32* %15, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i8, i8* %380, i64 %382
  %384 = bitcast i8* %383 to i64*
  %385 = load i64, i64* %384, align 8
  %386 = call %struct.value* @value_from_pointer(i32 %379, i64 %385)
  store %struct.value* %386, %struct.value** %31, align 8
  %387 = load %struct.value*, %struct.value** %31, align 8
  %388 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %389 = load i32, i32* %18, align 4
  %390 = load i32, i32* %19, align 4
  %391 = add nsw i32 %390, 1
  %392 = load i32, i32* %20, align 4
  %393 = call i32 @common_val_print(%struct.value* %387, %struct.ui_file* %388, i32 %389, i32 0, i32 %391, i32 %392)
  store i32 1, i32* %28, align 4
  %394 = load i64, i64* @vtblprint, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %405

396:                                              ; preds = %375
  %397 = load %struct.type*, %struct.type** %13, align 8
  %398 = call i32 @count_virtual_fns(%struct.type* %397)
  store i32 %398, i32* %32, align 4
  %399 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %400 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), %struct.ui_file* %399)
  %401 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %402 = call i32 @fputs_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), %struct.ui_file* %401)
  %403 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %404 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %struct.ui_file* %403)
  br label %405

405:                                              ; preds = %396, %375
  %406 = load i32, i32* %20, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %415

408:                                              ; preds = %405
  %409 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %410 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %409, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %411 = load i32, i32* %19, align 4
  %412 = mul nsw i32 2, %411
  %413 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %414 = call i32 @print_spaces_filtered(i32 %412, %struct.ui_file* %413)
  br label %415

415:                                              ; preds = %408, %405
  br label %416

416:                                              ; preds = %415, %368, %364
  %417 = load %struct.ui_file*, %struct.ui_file** %17, align 8
  %418 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %417, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  ret void
}

declare dso_local i8* @obstack_next_free(%struct.obstack*) #1

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i32 @cp_print_value(%struct.type*, %struct.type*, i8*, i32, i64, %struct.ui_file*, i32, i32, i32, %struct.type**) #1

declare dso_local i64 @TYPE_HAS_VTABLE(%struct.type*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @TYPE_FIELD_NAME(%struct.type*, i32) #1

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

declare dso_local i32 @annotate_field_begin(i32) #1

declare dso_local i32 @annotate_field_name_end(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @annotate_field_value(...) #1

declare dso_local i64 @TYPE_FIELD_PACKED(%struct.type*, i32) #1

declare dso_local i64 @TYPE_FIELD_IGNORE(%struct.type*, i32) #1

declare dso_local %struct.value* @value_from_longest(i32, i32) #1

declare dso_local i32 @unpack_field_as_long(%struct.type*, i8*, i32) #1

declare dso_local i32 @common_val_print(%struct.value*, %struct.ui_file*, i32, i32, i32, i32) #1

declare dso_local %struct.value* @value_static_field(%struct.type*, i32) #1

declare dso_local i32 @cp_print_static_field(i32, %struct.value*, %struct.ui_file*, i32, i32, i32) #1

declare dso_local i32 @val_print(i32, i8*, i32, i64, %struct.ui_file*, i32, i32, i32, i32) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local i32 @annotate_field_end(...) #1

declare dso_local i32 @obstack_free(%struct.obstack*, i8*) #1

declare dso_local %struct.value* @value_from_pointer(i32, i64) #1

declare dso_local i32 @lookup_pointer_type(i32) #1

declare dso_local i32 @count_virtual_fns(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
