; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_arm.c_read_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_arm.c_read_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_data = type { i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"d->p (org str) is NULL\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"unsigned \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"volatile \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"signed \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demangle_data*)* @read_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_type(%struct.demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.demangle_data*, align 8
  store %struct.demangle_data* %0, %struct.demangle_data** %3, align 8
  %4 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %5 = icmp eq %struct.demangle_data* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %288

7:                                                ; preds = %1
  %8 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %9 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %7
  %14 = phi i1 [ false, %7 ], [ true, %12 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  br label %17

17:                                               ; preds = %190, %13
  %18 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %19 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 85
  br i1 %23, label %80, label %24

24:                                               ; preds = %17
  %25 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %26 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 67
  br i1 %30, label %80, label %31

31:                                               ; preds = %24
  %32 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %33 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 86
  br i1 %37, label %80, label %38

38:                                               ; preds = %31
  %39 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %40 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 83
  br i1 %44, label %80, label %45

45:                                               ; preds = %38
  %46 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %47 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 80
  br i1 %51, label %80, label %52

52:                                               ; preds = %45
  %53 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %54 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 82
  br i1 %58, label %80, label %59

59:                                               ; preds = %52
  %60 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %61 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 65
  br i1 %65, label %80, label %66

66:                                               ; preds = %59
  %67 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %68 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, 70
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %75 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 77
  br label %80

80:                                               ; preds = %73, %66, %59, %52, %45, %38, %31, %24, %17
  %81 = phi i1 [ true, %66 ], [ true, %59 ], [ true, %52 ], [ true, %45 ], [ true, %38 ], [ true, %31 ], [ true, %24 ], [ true, %17 ], [ %79, %73 ]
  br i1 %81, label %82, label %191

82:                                               ; preds = %80
  %83 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %84 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  switch i32 %87, label %189 [
    i32 85, label %88
    i32 67, label %99
    i32 86, label %121
    i32 83, label %132
    i32 80, label %143
    i32 82, label %161
    i32 70, label %168
    i32 65, label %169
    i32 77, label %179
  ]

88:                                               ; preds = %82
  %89 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %90 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %90, align 8
  %93 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %94 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %93, i32 0, i32 4
  %95 = call i32 @VEC_PUSH_STR(i32* %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %288

98:                                               ; preds = %88
  br label %190

99:                                               ; preds = %82
  %100 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %101 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %101, align 8
  %104 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %105 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 80
  br i1 %109, label %110, label %113

110:                                              ; preds = %99
  %111 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %112 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %111, i32 0, i32 1
  store i32 1, i32* %112, align 8
  br label %120

113:                                              ; preds = %99
  %114 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %115 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %114, i32 0, i32 4
  %116 = call i32 @VEC_PUSH_STR(i32* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %288

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %110
  br label %190

121:                                              ; preds = %82
  %122 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %123 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %123, align 8
  %126 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %127 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %126, i32 0, i32 4
  %128 = call i32 @VEC_PUSH_STR(i32* %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %288

131:                                              ; preds = %121
  br label %190

132:                                              ; preds = %82
  %133 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %134 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %134, align 8
  %137 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %138 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %137, i32 0, i32 4
  %139 = call i32 @VEC_PUSH_STR(i32* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  store i32 0, i32* %2, align 4
  br label %288

142:                                              ; preds = %132
  br label %190

143:                                              ; preds = %82
  %144 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %145 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %145, align 8
  %148 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %149 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 70
  br i1 %153, label %154, label %157

154:                                              ; preds = %143
  %155 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %156 = call i32 @read_func_ptr(%struct.demangle_data* %155)
  store i32 %156, i32* %2, align 4
  br label %288

157:                                              ; preds = %143
  %158 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %159 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %158, i32 0, i32 2
  store i32 1, i32* %159, align 4
  br label %160

160:                                              ; preds = %157
  br label %190

161:                                              ; preds = %82
  %162 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %163 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %163, align 8
  %166 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %167 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %166, i32 0, i32 3
  store i32 1, i32* %167, align 8
  br label %190

168:                                              ; preds = %82
  br label %190

169:                                              ; preds = %82
  %170 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %171 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %171, align 8
  %174 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %175 = call i32 @read_array(%struct.demangle_data* %174)
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %169
  store i32 0, i32* %2, align 4
  br label %288

178:                                              ; preds = %169
  br label %190

179:                                              ; preds = %82
  %180 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %181 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %181, align 8
  %184 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %185 = call i32 @read_memptr(%struct.demangle_data* %184)
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  store i32 0, i32* %2, align 4
  br label %288

188:                                              ; preds = %179
  br label %190

189:                                              ; preds = %82
  br label %190

190:                                              ; preds = %189, %188, %178, %168, %161, %160, %142, %131, %120, %98
  br label %17

191:                                              ; preds = %80
  %192 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %193 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load i8, i8* %194, align 1
  %196 = uitofp i8 %195 to float
  %197 = call i64 @ELFTC_ISDIGIT(float %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %191
  %200 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %201 = call i32 @read_class(%struct.demangle_data* %200)
  store i32 %201, i32* %2, align 4
  br label %288

202:                                              ; preds = %191
  %203 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %204 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  switch i32 %207, label %287 [
    i32 81, label %208
    i32 118, label %215
    i32 99, label %223
    i32 115, label %231
    i32 105, label %239
    i32 108, label %247
    i32 102, label %255
    i32 100, label %263
    i32 114, label %271
    i32 101, label %279
  ]

208:                                              ; preds = %202
  %209 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %210 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %210, align 8
  %213 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %214 = call i32 @read_qual_name(%struct.demangle_data* %213)
  store i32 %214, i32* %2, align 4
  br label %288

215:                                              ; preds = %202
  %216 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %217 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %217, align 8
  %220 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %221 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %220, i32 0, i32 4
  %222 = call i32 @VEC_PUSH_STR(i32* %221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 %222, i32* %2, align 4
  br label %288

223:                                              ; preds = %202
  %224 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %225 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %225, align 8
  %228 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %229 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %228, i32 0, i32 4
  %230 = call i32 @VEC_PUSH_STR(i32* %229, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 %230, i32* %2, align 4
  br label %288

231:                                              ; preds = %202
  %232 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %233 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %233, align 8
  %236 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %237 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %236, i32 0, i32 4
  %238 = call i32 @VEC_PUSH_STR(i32* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  store i32 %238, i32* %2, align 4
  br label %288

239:                                              ; preds = %202
  %240 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %241 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %241, align 8
  %244 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %245 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %244, i32 0, i32 4
  %246 = call i32 @VEC_PUSH_STR(i32* %245, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  store i32 %246, i32* %2, align 4
  br label %288

247:                                              ; preds = %202
  %248 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %249 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %249, align 8
  %252 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %253 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %252, i32 0, i32 4
  %254 = call i32 @VEC_PUSH_STR(i32* %253, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  store i32 %254, i32* %2, align 4
  br label %288

255:                                              ; preds = %202
  %256 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %257 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %259, i8** %257, align 8
  %260 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %261 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %260, i32 0, i32 4
  %262 = call i32 @VEC_PUSH_STR(i32* %261, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  store i32 %262, i32* %2, align 4
  br label %288

263:                                              ; preds = %202
  %264 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %265 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %264, i32 0, i32 0
  %266 = load i8*, i8** %265, align 8
  %267 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %267, i8** %265, align 8
  %268 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %269 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %268, i32 0, i32 4
  %270 = call i32 @VEC_PUSH_STR(i32* %269, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  store i32 %270, i32* %2, align 4
  br label %288

271:                                              ; preds = %202
  %272 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %273 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** %273, align 8
  %276 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %277 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %276, i32 0, i32 4
  %278 = call i32 @VEC_PUSH_STR(i32* %277, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  store i32 %278, i32* %2, align 4
  br label %288

279:                                              ; preds = %202
  %280 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %281 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %280, i32 0, i32 0
  %282 = load i8*, i8** %281, align 8
  %283 = getelementptr inbounds i8, i8* %282, i32 1
  store i8* %283, i8** %281, align 8
  %284 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %285 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %284, i32 0, i32 4
  %286 = call i32 @VEC_PUSH_STR(i32* %285, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  store i32 %286, i32* %2, align 4
  br label %288

287:                                              ; preds = %202
  store i32 0, i32* %2, align 4
  br label %288

288:                                              ; preds = %287, %279, %271, %263, %255, %247, %239, %231, %223, %215, %208, %199, %187, %177, %154, %141, %130, %118, %97, %6
  %289 = load i32, i32* %2, align 4
  ret i32 %289
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VEC_PUSH_STR(i32*, i8*) #1

declare dso_local i32 @read_func_ptr(%struct.demangle_data*) #1

declare dso_local i32 @read_array(%struct.demangle_data*) #1

declare dso_local i32 @read_memptr(%struct.demangle_data*) #1

declare dso_local i64 @ELFTC_ISDIGIT(float) #1

declare dso_local i32 @read_class(%struct.demangle_data*) #1

declare dso_local i32 @read_qual_name(%struct.demangle_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
