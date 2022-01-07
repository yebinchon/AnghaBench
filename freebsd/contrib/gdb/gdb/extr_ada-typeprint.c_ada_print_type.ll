; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_ada_print_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_ada_print_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%.*s: \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"<null type?>\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"access \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"<ref> \00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"<%d-byte integer>\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"range \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"mod %ld\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"<%d-byte float>\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"(...)\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"array (?) of ? (<mal-formed descriptor>)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ada_print_type(%struct.type* %0, i8* %1, %struct.ui_file* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ui_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.type*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.type* %0, %struct.type** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.ui_file* %2, %struct.ui_file** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.type*, %struct.type** %6, align 8
  %18 = call i32 @ada_get_base_type(%struct.type* %17)
  %19 = call %struct.type* @ada_completed_type(i32 %18)
  store %struct.type* %19, %struct.type** %13, align 8
  %20 = load %struct.type*, %struct.type** %13, align 8
  %21 = call i8* @demangled_type_name(%struct.type* %20)
  store i8* %21, i8** %14, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %24, %5
  %31 = phi i1 [ false, %5 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %15, align 4
  %33 = load %struct.type*, %struct.type** %13, align 8
  %34 = icmp eq %struct.type* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @ada_name_prefix_len(i8* %40)
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %41, i8* %42)
  br label %44

44:                                               ; preds = %38, %35
  %45 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %46 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %257

47:                                               ; preds = %30
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.type*, %struct.type** %13, align 8
  %52 = call i32 @CHECK_TYPEDEF(%struct.type* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load %struct.type*, %struct.type** %13, align 8
  %58 = call i32 @TYPE_CODE(%struct.type* %57)
  %59 = icmp ne i32 %58, 134
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @ada_name_prefix_len(i8* %62)
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %63, i8* %64)
  br label %66

66:                                               ; preds = %60, %56, %53
  %67 = load i8*, i8** %14, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 @ada_name_prefix_len(i8* %74)
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %75, i8* %76)
  br label %257

78:                                               ; preds = %69, %66
  %79 = load %struct.type*, %struct.type** %13, align 8
  %80 = call i64 @ada_is_aligner_type(%struct.type* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load %struct.type*, %struct.type** %13, align 8
  %84 = call %struct.type* @ada_aligned_type(%struct.type* %83)
  %85 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  call void @ada_print_type(%struct.type* %84, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %85, i32 %86, i32 %87)
  br label %257

88:                                               ; preds = %78
  %89 = load %struct.type*, %struct.type** %13, align 8
  %90 = call i64 @ada_is_packed_array_type(%struct.type* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load %struct.type*, %struct.type** %13, align 8
  %94 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @print_array_type(%struct.type* %93, %struct.ui_file* %94, i32 %95, i32 %96)
  br label %256

98:                                               ; preds = %88
  %99 = load %struct.type*, %struct.type** %13, align 8
  %100 = call i32 @TYPE_CODE(%struct.type* %99)
  switch i32 %100, label %101 [
    i32 132, label %111
    i32 130, label %119
    i32 137, label %127
    i32 133, label %133
    i32 131, label %169
    i32 135, label %203
    i32 136, label %208
    i32 129, label %219
    i32 128, label %244
    i32 134, label %250
  ]

101:                                              ; preds = %98
  %102 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %103 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %104 = load %struct.type*, %struct.type** %13, align 8
  %105 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @c_print_type(%struct.type* %104, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %105, i32 %106, i32 %107)
  %109 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %110 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %255

111:                                              ; preds = %98
  %112 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %113 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %114 = load %struct.type*, %struct.type** %13, align 8
  %115 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %114)
  %116 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  call void @ada_print_type(%struct.type* %115, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %116, i32 %117, i32 %118)
  br label %255

119:                                              ; preds = %98
  %120 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %121 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %122 = load %struct.type*, %struct.type** %13, align 8
  %123 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %122)
  %124 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  call void @ada_print_type(%struct.type* %123, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.ui_file* %124, i32 %125, i32 %126)
  br label %255

127:                                              ; preds = %98
  %128 = load %struct.type*, %struct.type** %13, align 8
  %129 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @print_array_type(%struct.type* %128, %struct.ui_file* %129, i32 %130, i32 %131)
  br label %255

133:                                              ; preds = %98
  %134 = load %struct.type*, %struct.type** %13, align 8
  %135 = call i32 @ada_is_fixed_point_type(%struct.type* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load %struct.type*, %struct.type** %13, align 8
  %139 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %140 = call i32 @print_fixed_point_type(%struct.type* %138, %struct.ui_file* %139)
  br label %168

141:                                              ; preds = %133
  %142 = load %struct.type*, %struct.type** %13, align 8
  %143 = call i32 @ada_is_vax_floating_type(%struct.type* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load %struct.type*, %struct.type** %13, align 8
  %147 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %148 = call i32 @print_vax_floating_point_type(%struct.type* %146, %struct.ui_file* %147)
  br label %167

149:                                              ; preds = %141
  %150 = load %struct.type*, %struct.type** %13, align 8
  %151 = call i8* @ada_type_name(%struct.type* %150)
  store i8* %151, i8** %16, align 8
  %152 = load i8*, i8** %16, align 8
  %153 = call i32 @ada_is_range_type_name(i8* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %149
  %156 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %157 = load %struct.type*, %struct.type** %13, align 8
  %158 = call i32 @TYPE_LENGTH(%struct.type* %157)
  %159 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %156, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %158)
  br label %166

160:                                              ; preds = %149
  %161 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %162 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %163 = load i8*, i8** %16, align 8
  %164 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %165 = call i32 @print_range_type_named(i8* %163, %struct.ui_file* %164)
  br label %166

166:                                              ; preds = %160, %155
  br label %167

167:                                              ; preds = %166, %145
  br label %168

168:                                              ; preds = %167, %137
  br label %255

169:                                              ; preds = %98
  %170 = load %struct.type*, %struct.type** %13, align 8
  %171 = call i32 @ada_is_fixed_point_type(%struct.type* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load %struct.type*, %struct.type** %13, align 8
  %175 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %176 = call i32 @print_fixed_point_type(%struct.type* %174, %struct.ui_file* %175)
  br label %202

177:                                              ; preds = %169
  %178 = load %struct.type*, %struct.type** %13, align 8
  %179 = call i32 @ada_is_vax_floating_type(%struct.type* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = load %struct.type*, %struct.type** %13, align 8
  %183 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %184 = call i32 @print_vax_floating_point_type(%struct.type* %182, %struct.ui_file* %183)
  br label %201

185:                                              ; preds = %177
  %186 = load %struct.type*, %struct.type** %13, align 8
  %187 = call i32 @ada_is_modular_type(%struct.type* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %191 = load %struct.type*, %struct.type** %13, align 8
  %192 = call i64 @ada_modulus(%struct.type* %191)
  %193 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %190, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i64 %192)
  br label %200

194:                                              ; preds = %185
  %195 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %196 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %195, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %197 = load %struct.type*, %struct.type** %13, align 8
  %198 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %199 = call i32 @print_range(%struct.type* %197, %struct.ui_file* %198)
  br label %200

200:                                              ; preds = %194, %189
  br label %201

201:                                              ; preds = %200, %181
  br label %202

202:                                              ; preds = %201, %173
  br label %255

203:                                              ; preds = %98
  %204 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %205 = load %struct.type*, %struct.type** %13, align 8
  %206 = call i32 @TYPE_LENGTH(%struct.type* %205)
  %207 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %204, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %206)
  br label %255

208:                                              ; preds = %98
  %209 = load i32, i32* %9, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %213 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %212, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %218

214:                                              ; preds = %208
  %215 = load %struct.type*, %struct.type** %13, align 8
  %216 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %217 = call i32 @print_enum_type(%struct.type* %215, %struct.ui_file* %216)
  br label %218

218:                                              ; preds = %214, %211
  br label %255

219:                                              ; preds = %98
  %220 = load %struct.type*, %struct.type** %13, align 8
  %221 = call i32 @ada_is_array_descriptor(%struct.type* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %219
  %224 = load %struct.type*, %struct.type** %13, align 8
  %225 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @print_array_type(%struct.type* %224, %struct.ui_file* %225, i32 %226, i32 %227)
  br label %243

229:                                              ; preds = %219
  %230 = load %struct.type*, %struct.type** %13, align 8
  %231 = call i32 @ada_is_bogus_array_descriptor(%struct.type* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %235 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %234, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  br label %242

236:                                              ; preds = %229
  %237 = load %struct.type*, %struct.type** %13, align 8
  %238 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* %10, align 4
  %241 = call i32 @print_record_type(%struct.type* %237, %struct.ui_file* %238, i32 %239, i32 %240)
  br label %242

242:                                              ; preds = %236, %233
  br label %243

243:                                              ; preds = %242, %223
  br label %255

244:                                              ; preds = %98
  %245 = load %struct.type*, %struct.type** %13, align 8
  %246 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* %10, align 4
  %249 = call i32 @print_unchecked_union_type(%struct.type* %245, %struct.ui_file* %246, i32 %247, i32 %248)
  br label %255

250:                                              ; preds = %98
  %251 = load %struct.type*, %struct.type** %13, align 8
  %252 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %253 = load i8*, i8** %7, align 8
  %254 = call i32 @print_func_type(%struct.type* %251, %struct.ui_file* %252, i8* %253)
  br label %255

255:                                              ; preds = %250, %244, %243, %218, %203, %202, %168, %127, %119, %111, %101
  br label %256

256:                                              ; preds = %255, %92
  br label %257

257:                                              ; preds = %44, %72, %256, %82
  ret void
}

declare dso_local %struct.type* @ada_completed_type(i32) #1

declare dso_local i32 @ada_get_base_type(%struct.type*) #1

declare dso_local i8* @demangled_type_name(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @ada_name_prefix_len(i8*) #1

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @ada_is_aligner_type(%struct.type*) #1

declare dso_local %struct.type* @ada_aligned_type(%struct.type*) #1

declare dso_local i64 @ada_is_packed_array_type(%struct.type*) #1

declare dso_local i32 @print_array_type(%struct.type*, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @c_print_type(%struct.type*, i8*, %struct.ui_file*, i32, i32) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @ada_is_fixed_point_type(%struct.type*) #1

declare dso_local i32 @print_fixed_point_type(%struct.type*, %struct.ui_file*) #1

declare dso_local i32 @ada_is_vax_floating_type(%struct.type*) #1

declare dso_local i32 @print_vax_floating_point_type(%struct.type*, %struct.ui_file*) #1

declare dso_local i8* @ada_type_name(%struct.type*) #1

declare dso_local i32 @ada_is_range_type_name(i8*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @print_range_type_named(i8*, %struct.ui_file*) #1

declare dso_local i32 @ada_is_modular_type(%struct.type*) #1

declare dso_local i64 @ada_modulus(%struct.type*) #1

declare dso_local i32 @print_range(%struct.type*, %struct.ui_file*) #1

declare dso_local i32 @print_enum_type(%struct.type*, %struct.ui_file*) #1

declare dso_local i32 @ada_is_array_descriptor(%struct.type*) #1

declare dso_local i32 @ada_is_bogus_array_descriptor(%struct.type*) #1

declare dso_local i32 @print_record_type(%struct.type*, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @print_unchecked_union_type(%struct.type*, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @print_func_type(%struct.type*, %struct.ui_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
