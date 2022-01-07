; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fsl-diu-fb.c_adjust_aoi_size_position.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fsl-diu-fb.c_adjust_aoi_size_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i8*, i32 }
%struct.fb_info = type { %struct.mfb_info* }
%struct.mfb_info = type { i32, i64, i64, i32, %struct.fsl_diu_data* }
%struct.fsl_diu_data = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.mfb_info* }
%struct.TYPE_3__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*, %struct.fb_info*)* @adjust_aoi_size_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_aoi_size_position(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.mfb_info*, align 8
  %6 = alloca %struct.mfb_info*, align 8
  %7 = alloca %struct.mfb_info*, align 8
  %8 = alloca %struct.fsl_diu_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 0
  %19 = load %struct.mfb_info*, %struct.mfb_info** %18, align 8
  store %struct.mfb_info* %19, %struct.mfb_info** %7, align 8
  %20 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %21 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %20, i32 0, i32 4
  %22 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %21, align 8
  store %struct.fsl_diu_data* %22, %struct.fsl_diu_data** %8, align 8
  %23 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %24 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %27 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %28, i64 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %14, align 8
  %34 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %35 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %15, align 8
  %42 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %43 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %2
  %47 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %48 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %2
  %50 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %51 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %56 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* %11, align 4
  switch i32 %58, label %295 [
    i32 0, label %59
    i32 1, label %76
    i32 3, label %76
    i32 2, label %165
    i32 4, label %165
  ]

59:                                               ; preds = %57
  %60 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %61 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %66 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %69 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %74 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %67
  br label %295

76:                                               ; preds = %57, %57
  %77 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %78 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %79, i64 %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.mfb_info*, %struct.mfb_info** %85, align 8
  store %struct.mfb_info* %86, %struct.mfb_info** %5, align 8
  %87 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %88 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  store i32 %92, i32* %12, align 4
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = icmp ugt i8* %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %76
  %99 = load i8*, i8** %14, align 8
  %100 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %101 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %98, %76
  %103 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %104 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr i8, i8* %108, i64 %105
  %110 = load i8*, i8** %14, align 8
  %111 = icmp ugt i8* %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %102
  %113 = load i8*, i8** %14, align 8
  %114 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %115 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = ptrtoint i8* %113 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %121 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %112, %102
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %127 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %9, align 4
  br label %133

130:                                              ; preds = %122
  %131 = load i8*, i8** %15, align 8
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %130, %125
  %134 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %135 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %142 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %139, %133
  %144 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %145 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %148 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %146, %150
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = icmp sgt i64 %151, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %143
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %158 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = sub nsw i32 %156, %159
  %161 = sext i32 %160 to i64
  %162 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %163 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  br label %164

164:                                              ; preds = %155, %143
  br label %295

165:                                              ; preds = %57, %57
  %166 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %167 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %166, i32 0, i32 0
  %168 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %168, i64 %171
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load %struct.mfb_info*, %struct.mfb_info** %174, align 8
  store %struct.mfb_info* %175, %struct.mfb_info** %6, align 8
  %176 = load %struct.fsl_diu_data*, %struct.fsl_diu_data** %8, align 8
  %177 = getelementptr inbounds %struct.fsl_diu_data, %struct.fsl_diu_data* %176, i32 0, i32 0
  %178 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %177, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %178, i64 %181
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  store i8* %186, i8** %16, align 8
  %187 = load %struct.mfb_info*, %struct.mfb_info** %6, align 8
  %188 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i8*, i8** %16, align 8
  %191 = getelementptr i8, i8* %190, i64 %189
  %192 = ptrtoint i8* %191 to i32
  store i32 %192, i32* %10, align 4
  %193 = load %struct.mfb_info*, %struct.mfb_info** %6, align 8
  %194 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = icmp sgt i32 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i32 1, i32 0
  store i32 %198, i32* %13, align 4
  %199 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %200 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = load i8*, i8** %14, align 8
  %203 = icmp ugt i8* %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %165
  %205 = load i8*, i8** %14, align 8
  %206 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %207 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %206, i32 0, i32 0
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %204, %165
  %209 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %210 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %213 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = getelementptr i8, i8* %214, i64 %211
  %216 = load i8*, i8** %14, align 8
  %217 = icmp ugt i8* %215, %216
  br i1 %217, label %218, label %228

218:                                              ; preds = %208
  %219 = load i8*, i8** %14, align 8
  %220 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %221 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = ptrtoint i8* %219 to i64
  %224 = ptrtoint i8* %222 to i64
  %225 = sub i64 %223, %224
  %226 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %227 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %226, i32 0, i32 1
  store i64 %225, i64* %227, align 8
  br label %228

228:                                              ; preds = %218, %208
  %229 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %230 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %228
  %234 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %235 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %234, i32 0, i32 2
  store i64 0, i64* %235, align 8
  br label %236

236:                                              ; preds = %233, %228
  %237 = load i32, i32* %13, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %258

239:                                              ; preds = %236
  %240 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %241 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* %10, align 4
  %244 = sext i32 %243 to i64
  %245 = icmp slt i64 %242, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %239
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %250 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %249, i32 0, i32 2
  store i64 %248, i64* %250, align 8
  br label %251

251:                                              ; preds = %246, %239
  %252 = load i8*, i8** %15, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = sub i64 0, %254
  %256 = getelementptr i8, i8* %252, i64 %255
  %257 = ptrtoint i8* %256 to i32
  store i32 %257, i32* %9, align 4
  br label %261

258:                                              ; preds = %236
  %259 = load i8*, i8** %15, align 8
  %260 = ptrtoint i8* %259 to i32
  store i32 %260, i32* %9, align 4
  br label %261

261:                                              ; preds = %258, %251
  %262 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %263 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %9, align 4
  %266 = icmp sgt i32 %264, %265
  br i1 %266, label %267, label %271

267:                                              ; preds = %261
  %268 = load i32, i32* %9, align 4
  %269 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %270 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 8
  br label %271

271:                                              ; preds = %267, %261
  %272 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %273 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %276 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = sext i32 %277 to i64
  %279 = add nsw i64 %274, %278
  %280 = inttoptr i64 %279 to i8*
  %281 = load i8*, i8** %15, align 8
  %282 = icmp ugt i8* %280, %281
  br i1 %282, label %283, label %294

283:                                              ; preds = %271
  %284 = load i8*, i8** %15, align 8
  %285 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %286 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = sext i32 %287 to i64
  %289 = sub i64 0, %288
  %290 = getelementptr i8, i8* %284, i64 %289
  %291 = ptrtoint i8* %290 to i64
  %292 = load %struct.mfb_info*, %struct.mfb_info** %7, align 8
  %293 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %292, i32 0, i32 2
  store i64 %291, i64* %293, align 8
  br label %294

294:                                              ; preds = %283, %271
  br label %295

295:                                              ; preds = %57, %294, %164, %75
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
