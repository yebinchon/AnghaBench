; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-valprint.c_java_print_value_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-valprint.c_java_print_value_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }
%struct.value = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"java.lang.Object\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"> = \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"<No data fields>\00", align 1
@static_field_print = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"members of \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c": \00", align 1
@inspect_it = common dso_local global i64 0, align 8
@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"\22( ptr \22\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"\22( nodef \22\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@language_cplus = common dso_local global i32 0, align 4
@DMGL_PARAMS = common dso_local global i32 0, align 4
@DMGL_ANSI = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"\22 \22\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"\22) \22\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"<optimized out or zero length>\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"<optimized out>\00", align 1
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [15 x i8] c"<unknown type>\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, i8*, i64, %struct.ui_file*, i32, i32, i32)* @java_print_value_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @java_print_value_fields(%struct.type* %0, i8* %1, i64 %2, %struct.ui_file* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.type*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ui_file*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.type*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca %struct.value*, align 8
  %27 = alloca %struct.value*, align 8
  %28 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.ui_file* %3, %struct.ui_file** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %29 = load %struct.type*, %struct.type** %8, align 8
  %30 = call i32 @CHECK_TYPEDEF(%struct.type* %29)
  %31 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %32 = call i32 @fprintf_filtered(%struct.ui_file* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.type*, %struct.type** %8, align 8
  %34 = call i32 @TYPE_NFIELDS(%struct.type* %33)
  store i32 %34, i32* %16, align 4
  %35 = load %struct.type*, %struct.type** %8, align 8
  %36 = call i32 @TYPE_N_BASECLASSES(%struct.type* %35)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %109

39:                                               ; preds = %7
  %40 = load %struct.type*, %struct.type** %8, align 8
  %41 = call i32 @TYPE_N_BASECLASSES(%struct.type* %40)
  store i32 %41, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %42

42:                                               ; preds = %105, %39
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* %19, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %108

46:                                               ; preds = %42
  %47 = load %struct.type*, %struct.type** %8, align 8
  %48 = load i32, i32* %18, align 4
  %49 = call i32 @TYPE_BASECLASS(%struct.type* %47, i32 %48)
  %50 = call %struct.type* @check_typedef(i32 %49)
  store %struct.type* %50, %struct.type** %21, align 8
  %51 = load %struct.type*, %struct.type** %21, align 8
  %52 = call i8* @TYPE_NAME(%struct.type* %51)
  store i8* %52, i8** %22, align 8
  %53 = load %struct.type*, %struct.type** %8, align 8
  %54 = load i32, i32* %18, align 4
  %55 = call i64 @BASETYPE_VIA_VIRTUAL(%struct.type* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %105

58:                                               ; preds = %46
  %59 = load i8*, i8** %22, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i8*, i8** %22, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %105

66:                                               ; preds = %61, %58
  store i32 0, i32* %20, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %71 = call i32 @fprintf_filtered(%struct.ui_file* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  %74 = mul nsw i32 2, %73
  %75 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %76 = call i32 @print_spaces_filtered(i32 %74, %struct.ui_file* %75)
  br label %77

77:                                               ; preds = %69, %66
  %78 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %79 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %78)
  %80 = load i8*, i8** %22, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i8*, i8** %22, align 8
  br label %85

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i8* [ %83, %82 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %84 ]
  %87 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %88 = call i32 @fputs_filtered(i8* %86, %struct.ui_file* %87)
  %89 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %90 = call i32 @fputs_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.ui_file* %89)
  %91 = load i8*, i8** %9, align 8
  store i8* %91, i8** %23, align 8
  %92 = load %struct.type*, %struct.type** %21, align 8
  %93 = load i8*, i8** %23, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i32, i32* %20, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* %14, align 4
  call void @java_print_value_fields(%struct.type* %92, i8* %93, i64 %97, %struct.ui_file* %98, i32 %99, i32 %101, i32 %102)
  %103 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %104 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), %struct.ui_file* %103)
  br label %105

105:                                              ; preds = %85, %65, %57
  %106 = load i32, i32* %18, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %18, align 4
  br label %42

108:                                              ; preds = %42
  br label %109

109:                                              ; preds = %108, %7
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %17, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %117 = call i32 @fprintf_filtered(%struct.ui_file* %116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %393

118:                                              ; preds = %112, %109
  store i32 0, i32* %24, align 4
  %119 = load i32, i32* %17, align 4
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %379, %118
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %382

124:                                              ; preds = %120
  %125 = load %struct.type*, %struct.type** %8, align 8
  %126 = load i32, i32* %15, align 4
  %127 = call i64 @TYPE_FIELD_STATIC(%struct.type* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %124
  %130 = load %struct.type*, %struct.type** %8, align 8
  %131 = load i32, i32* %15, align 4
  %132 = call i8* @TYPE_FIELD_NAME(%struct.type* %130, i32 %131)
  store i8* %132, i8** %25, align 8
  %133 = load i32, i32* @static_field_print, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  br label %379

136:                                              ; preds = %129
  %137 = load i8*, i8** %25, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i8*, i8** %25, align 8
  %141 = call i64 @strcmp(i8* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  br label %379

144:                                              ; preds = %139, %136
  br label %145

145:                                              ; preds = %144, %124
  %146 = load i32, i32* %24, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %150 = call i32 @fprintf_filtered(%struct.ui_file* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %175

151:                                              ; preds = %145
  %152 = load i32, i32* %17, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %174

154:                                              ; preds = %151
  %155 = load i32, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %173

157:                                              ; preds = %154
  %158 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %159 = call i32 @fprintf_filtered(%struct.ui_file* %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %160 = load i32, i32* %13, align 4
  %161 = mul nsw i32 2, %160
  %162 = add nsw i32 2, %161
  %163 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %164 = call i32 @print_spaces_filtered(i32 %162, %struct.ui_file* %163)
  %165 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %166 = call i32 @fputs_filtered(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), %struct.ui_file* %165)
  %167 = load %struct.type*, %struct.type** %8, align 8
  %168 = call i8* @type_name_no_tag(%struct.type* %167)
  %169 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %170 = call i32 @fputs_filtered(i8* %168, %struct.ui_file* %169)
  %171 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %172 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct.ui_file* %171)
  br label %173

173:                                              ; preds = %157, %154
  br label %174

174:                                              ; preds = %173, %151
  br label %175

175:                                              ; preds = %174, %148
  store i32 1, i32* %24, align 4
  %176 = load i32, i32* %14, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %175
  %179 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %180 = call i32 @fprintf_filtered(%struct.ui_file* %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %181 = load i32, i32* %13, align 4
  %182 = mul nsw i32 2, %181
  %183 = add nsw i32 2, %182
  %184 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %185 = call i32 @print_spaces_filtered(i32 %183, %struct.ui_file* %184)
  br label %192

186:                                              ; preds = %175
  %187 = load i32, i32* %13, align 4
  %188 = mul nsw i32 2, %187
  %189 = add nsw i32 2, %188
  %190 = call i32 @n_spaces(i32 %189)
  %191 = call i32 @wrap_here(i32 %190)
  br label %192

192:                                              ; preds = %186, %178
  %193 = load i64, i64* @inspect_it, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %239

195:                                              ; preds = %192
  %196 = load %struct.type*, %struct.type** %8, align 8
  %197 = load i32, i32* %15, align 4
  %198 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %196, i32 %197)
  %199 = call i64 @TYPE_CODE(%struct.type* %198)
  %200 = load i64, i64* @TYPE_CODE_PTR, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %195
  %203 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %204 = call i32 @fputs_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), %struct.ui_file* %203)
  br label %208

205:                                              ; preds = %195
  %206 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %207 = call i32 @fputs_filtered(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), %struct.ui_file* %206)
  br label %208

208:                                              ; preds = %205, %202
  %209 = load %struct.type*, %struct.type** %8, align 8
  %210 = load i32, i32* %15, align 4
  %211 = call i64 @TYPE_FIELD_STATIC(%struct.type* %209, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %215 = call i32 @fputs_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), %struct.ui_file* %214)
  br label %216

216:                                              ; preds = %213, %208
  %217 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %218 = load %struct.type*, %struct.type** %8, align 8
  %219 = load i32, i32* %15, align 4
  %220 = call i8* @TYPE_FIELD_NAME(%struct.type* %218, i32 %219)
  %221 = load i32, i32* @language_cplus, align 4
  %222 = load i32, i32* @DMGL_PARAMS, align 4
  %223 = load i32, i32* @DMGL_ANSI, align 4
  %224 = or i32 %222, %223
  %225 = call i32 @fprintf_symbol_filtered(%struct.ui_file* %217, i8* %220, i32 %221, i32 %224)
  %226 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %227 = call i32 @fputs_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), %struct.ui_file* %226)
  %228 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %229 = load %struct.type*, %struct.type** %8, align 8
  %230 = load i32, i32* %15, align 4
  %231 = call i8* @TYPE_FIELD_NAME(%struct.type* %229, i32 %230)
  %232 = load i32, i32* @language_cplus, align 4
  %233 = load i32, i32* @DMGL_PARAMS, align 4
  %234 = load i32, i32* @DMGL_ANSI, align 4
  %235 = or i32 %233, %234
  %236 = call i32 @fprintf_symbol_filtered(%struct.ui_file* %228, i8* %231, i32 %232, i32 %235)
  %237 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %238 = call i32 @fputs_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), %struct.ui_file* %237)
  br label %265

239:                                              ; preds = %192
  %240 = load %struct.type*, %struct.type** %8, align 8
  %241 = load i32, i32* %15, align 4
  %242 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %240, i32 %241)
  %243 = call i32 @annotate_field_begin(%struct.type* %242)
  %244 = load %struct.type*, %struct.type** %8, align 8
  %245 = load i32, i32* %15, align 4
  %246 = call i64 @TYPE_FIELD_STATIC(%struct.type* %244, i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %239
  %249 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %250 = call i32 @fputs_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), %struct.ui_file* %249)
  br label %251

251:                                              ; preds = %248, %239
  %252 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %253 = load %struct.type*, %struct.type** %8, align 8
  %254 = load i32, i32* %15, align 4
  %255 = call i8* @TYPE_FIELD_NAME(%struct.type* %253, i32 %254)
  %256 = load i32, i32* @language_cplus, align 4
  %257 = load i32, i32* @DMGL_PARAMS, align 4
  %258 = load i32, i32* @DMGL_ANSI, align 4
  %259 = or i32 %257, %258
  %260 = call i32 @fprintf_symbol_filtered(%struct.ui_file* %252, i8* %255, i32 %256, i32 %259)
  %261 = call i32 (...) @annotate_field_name_end()
  %262 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %263 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), %struct.ui_file* %262)
  %264 = call i32 (...) @annotate_field_value()
  br label %265

265:                                              ; preds = %251, %216
  %266 = load %struct.type*, %struct.type** %8, align 8
  %267 = load i32, i32* %15, align 4
  %268 = call i64 @TYPE_FIELD_STATIC(%struct.type* %266, i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %300, label %270

270:                                              ; preds = %265
  %271 = load %struct.type*, %struct.type** %8, align 8
  %272 = load i32, i32* %15, align 4
  %273 = call i64 @TYPE_FIELD_PACKED(%struct.type* %271, i32 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %300

275:                                              ; preds = %270
  %276 = load %struct.type*, %struct.type** %8, align 8
  %277 = load i32, i32* %15, align 4
  %278 = call i64 @TYPE_FIELD_IGNORE(%struct.type* %276, i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %275
  %281 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %282 = call i32 @fputs_filtered(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), %struct.ui_file* %281)
  br label %299

283:                                              ; preds = %275
  %284 = load %struct.type*, %struct.type** %8, align 8
  %285 = load i32, i32* %15, align 4
  %286 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %284, i32 %285)
  %287 = load %struct.type*, %struct.type** %8, align 8
  %288 = load i8*, i8** %9, align 8
  %289 = load i32, i32* %15, align 4
  %290 = call i32 @unpack_field_as_long(%struct.type* %287, i8* %288, i32 %289)
  %291 = call %struct.value* @value_from_longest(%struct.type* %286, i32 %290)
  store %struct.value* %291, %struct.value** %26, align 8
  %292 = load %struct.value*, %struct.value** %26, align 8
  %293 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %294 = load i32, i32* %12, align 4
  %295 = load i32, i32* %13, align 4
  %296 = add nsw i32 %295, 1
  %297 = load i32, i32* %14, align 4
  %298 = call i32 @common_val_print(%struct.value* %292, %struct.ui_file* %293, i32 %294, i32 0, i32 %296, i32 %297)
  br label %299

299:                                              ; preds = %283, %280
  br label %377

300:                                              ; preds = %270, %265
  %301 = load %struct.type*, %struct.type** %8, align 8
  %302 = load i32, i32* %15, align 4
  %303 = call i64 @TYPE_FIELD_IGNORE(%struct.type* %301, i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %300
  %306 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %307 = call i32 @fputs_filtered(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), %struct.ui_file* %306)
  br label %376

308:                                              ; preds = %300
  %309 = load %struct.type*, %struct.type** %8, align 8
  %310 = load i32, i32* %15, align 4
  %311 = call i64 @TYPE_FIELD_STATIC(%struct.type* %309, i32 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %342

313:                                              ; preds = %308
  %314 = load %struct.type*, %struct.type** %8, align 8
  %315 = load i32, i32* %15, align 4
  %316 = call %struct.value* @value_static_field(%struct.type* %314, i32 %315)
  store %struct.value* %316, %struct.value** %27, align 8
  %317 = load %struct.value*, %struct.value** %27, align 8
  %318 = icmp eq %struct.value* %317, null
  br i1 %318, label %319, label %322

319:                                              ; preds = %313
  %320 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %321 = call i32 @fputs_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), %struct.ui_file* %320)
  br label %341

322:                                              ; preds = %313
  %323 = load %struct.value*, %struct.value** %27, align 8
  %324 = call i32 @VALUE_TYPE(%struct.value* %323)
  %325 = call %struct.type* @check_typedef(i32 %324)
  store %struct.type* %325, %struct.type** %28, align 8
  %326 = load %struct.type*, %struct.type** %28, align 8
  %327 = call i64 @TYPE_CODE(%struct.type* %326)
  %328 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %333

330:                                              ; preds = %322
  %331 = load %struct.value*, %struct.value** %27, align 8
  %332 = call %struct.value* @value_addr(%struct.value* %331)
  store %struct.value* %332, %struct.value** %27, align 8
  br label %333

333:                                              ; preds = %330, %322
  %334 = load %struct.value*, %struct.value** %27, align 8
  %335 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %336 = load i32, i32* %12, align 4
  %337 = load i32, i32* %13, align 4
  %338 = add nsw i32 %337, 1
  %339 = load i32, i32* %14, align 4
  %340 = call i32 @common_val_print(%struct.value* %334, %struct.ui_file* %335, i32 %336, i32 0, i32 %338, i32 %339)
  br label %341

341:                                              ; preds = %333, %319
  br label %375

342:                                              ; preds = %308
  %343 = load %struct.type*, %struct.type** %8, align 8
  %344 = load i32, i32* %15, align 4
  %345 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %343, i32 %344)
  %346 = icmp eq %struct.type* %345, null
  br i1 %346, label %347, label %350

347:                                              ; preds = %342
  %348 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %349 = call i32 @fputs_filtered(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), %struct.ui_file* %348)
  br label %374

350:                                              ; preds = %342
  %351 = load %struct.type*, %struct.type** %8, align 8
  %352 = load i32, i32* %15, align 4
  %353 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %351, i32 %352)
  %354 = load i8*, i8** %9, align 8
  %355 = load %struct.type*, %struct.type** %8, align 8
  %356 = load i32, i32* %15, align 4
  %357 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %355, i32 %356)
  %358 = sdiv i32 %357, 8
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8, i8* %354, i64 %359
  %361 = load i64, i64* %10, align 8
  %362 = load %struct.type*, %struct.type** %8, align 8
  %363 = load i32, i32* %15, align 4
  %364 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %362, i32 %363)
  %365 = sdiv i32 %364, 8
  %366 = sext i32 %365 to i64
  %367 = add nsw i64 %361, %366
  %368 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %369 = load i32, i32* %12, align 4
  %370 = load i32, i32* %13, align 4
  %371 = add nsw i32 %370, 1
  %372 = load i32, i32* %14, align 4
  %373 = call i32 @val_print(%struct.type* %353, i8* %360, i32 0, i64 %367, %struct.ui_file* %368, i32 %369, i32 0, i32 %371, i32 %372)
  br label %374

374:                                              ; preds = %350, %347
  br label %375

375:                                              ; preds = %374, %341
  br label %376

376:                                              ; preds = %375, %305
  br label %377

377:                                              ; preds = %376, %299
  %378 = call i32 (...) @annotate_field_end()
  br label %379

379:                                              ; preds = %377, %143, %135
  %380 = load i32, i32* %15, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %15, align 4
  br label %120

382:                                              ; preds = %120
  %383 = load i32, i32* %14, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %392

385:                                              ; preds = %382
  %386 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %387 = call i32 @fprintf_filtered(%struct.ui_file* %386, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %388 = load i32, i32* %13, align 4
  %389 = mul nsw i32 2, %388
  %390 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %391 = call i32 @print_spaces_filtered(i32 %389, %struct.ui_file* %390)
  br label %392

392:                                              ; preds = %385, %382
  br label %393

393:                                              ; preds = %392, %115
  %394 = load %struct.ui_file*, %struct.ui_file** %11, align 8
  %395 = call i32 @fprintf_filtered(%struct.ui_file* %394, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  ret void
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @TYPE_BASECLASS(%struct.type*, i32) #1

declare dso_local i8* @TYPE_NAME(%struct.type*) #1

declare dso_local i64 @BASETYPE_VIA_VIRTUAL(%struct.type*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @print_spaces_filtered(i32, %struct.ui_file*) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i64 @TYPE_FIELD_STATIC(%struct.type*, i32) #1

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i8* @type_name_no_tag(%struct.type*) #1

declare dso_local i32 @wrap_here(i32) #1

declare dso_local i32 @n_spaces(i32) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @fprintf_symbol_filtered(%struct.ui_file*, i8*, i32, i32) #1

declare dso_local i32 @annotate_field_begin(%struct.type*) #1

declare dso_local i32 @annotate_field_name_end(...) #1

declare dso_local i32 @annotate_field_value(...) #1

declare dso_local i64 @TYPE_FIELD_PACKED(%struct.type*, i32) #1

declare dso_local i64 @TYPE_FIELD_IGNORE(%struct.type*, i32) #1

declare dso_local %struct.value* @value_from_longest(%struct.type*, i32) #1

declare dso_local i32 @unpack_field_as_long(%struct.type*, i8*, i32) #1

declare dso_local i32 @common_val_print(%struct.value*, %struct.ui_file*, i32, i32, i32, i32) #1

declare dso_local %struct.value* @value_static_field(%struct.type*, i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local %struct.value* @value_addr(%struct.value*) #1

declare dso_local i32 @val_print(%struct.type*, i8*, i32, i64, %struct.ui_file*, i32, i32, i32, i32) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local i32 @annotate_field_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
