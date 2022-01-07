; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-driver.c_go7007_parse_video_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-driver.c_go7007_parse_video_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@GO7007_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dropping oversized frame\0A\00", align 1
@GO7007_FORMAT_MJPEG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @go7007_parse_video_stream(%struct.go7007* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.go7007*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %10 = load %struct.go7007*, %struct.go7007** %4, align 8
  %11 = getelementptr inbounds %struct.go7007, %struct.go7007* %10, i32 0, i32 5
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.go7007*, %struct.go7007** %4, align 8
  %14 = getelementptr inbounds %struct.go7007, %struct.go7007* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %18 [
    i32 137, label %16
    i32 139, label %17
    i32 138, label %17
  ]

16:                                               ; preds = %3
  store i32 176, i32* %8, align 4
  store i32 182, i32* %9, align 4
  br label %18

17:                                               ; preds = %3, %3
  store i32 179, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %3, %17, %16
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %465, %18
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %468

23:                                               ; preds = %19
  %24 = load %struct.go7007*, %struct.go7007** %4, align 8
  %25 = getelementptr inbounds %struct.go7007, %struct.go7007* %24, i32 0, i32 6
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %63

28:                                               ; preds = %23
  %29 = load %struct.go7007*, %struct.go7007** %4, align 8
  %30 = getelementptr inbounds %struct.go7007, %struct.go7007* %29, i32 0, i32 6
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GO7007_BUF_SIZE, align 4
  %35 = sub nsw i32 %34, 3
  %36 = icmp sge i32 %33, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %28
  %38 = load %struct.go7007*, %struct.go7007** %4, align 8
  %39 = getelementptr inbounds %struct.go7007, %struct.go7007* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @v4l2_info(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.go7007*, %struct.go7007** %4, align 8
  %43 = getelementptr inbounds %struct.go7007, %struct.go7007* %42, i32 0, i32 6
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.go7007*, %struct.go7007** %4, align 8
  %48 = getelementptr inbounds %struct.go7007, %struct.go7007* %47, i32 0, i32 6
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, %46
  store i32 %52, i32* %50, align 4
  %53 = load %struct.go7007*, %struct.go7007** %4, align 8
  %54 = getelementptr inbounds %struct.go7007, %struct.go7007* %53, i32 0, i32 6
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load %struct.go7007*, %struct.go7007** %4, align 8
  %58 = getelementptr inbounds %struct.go7007, %struct.go7007* %57, i32 0, i32 6
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.go7007*, %struct.go7007** %4, align 8
  %62 = getelementptr inbounds %struct.go7007, %struct.go7007* %61, i32 0, i32 6
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %62, align 8
  br label %63

63:                                               ; preds = %37, %28, %23
  %64 = load %struct.go7007*, %struct.go7007** %4, align 8
  %65 = getelementptr inbounds %struct.go7007, %struct.go7007* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %464 [
    i32 133, label %67
    i32 136, label %90
    i32 135, label %123
    i32 134, label %169
    i32 132, label %313
    i32 129, label %358
    i32 128, label %369
    i32 131, label %390
    i32 130, label %454
  ]

67:                                               ; preds = %63
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %79 [
    i32 0, label %73
    i32 255, label %76
  ]

73:                                               ; preds = %67
  %74 = load %struct.go7007*, %struct.go7007** %4, align 8
  %75 = getelementptr inbounds %struct.go7007, %struct.go7007* %74, i32 0, i32 1
  store i32 136, i32* %75, align 4
  br label %89

76:                                               ; preds = %67
  %77 = load %struct.go7007*, %struct.go7007** %4, align 8
  %78 = getelementptr inbounds %struct.go7007, %struct.go7007* %77, i32 0, i32 1
  store i32 132, i32* %78, align 4
  br label %89

79:                                               ; preds = %67
  %80 = load %struct.go7007*, %struct.go7007** %4, align 8
  %81 = getelementptr inbounds %struct.go7007, %struct.go7007* %80, i32 0, i32 6
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @store_byte(%struct.TYPE_2__* %82, i32 %87)
  br label %89

89:                                               ; preds = %79, %76, %73
  br label %464

90:                                               ; preds = %63
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %106 [
    i32 0, label %96
    i32 255, label %99
  ]

96:                                               ; preds = %90
  %97 = load %struct.go7007*, %struct.go7007** %4, align 8
  %98 = getelementptr inbounds %struct.go7007, %struct.go7007* %97, i32 0, i32 1
  store i32 135, i32* %98, align 4
  br label %122

99:                                               ; preds = %90
  %100 = load %struct.go7007*, %struct.go7007** %4, align 8
  %101 = getelementptr inbounds %struct.go7007, %struct.go7007* %100, i32 0, i32 6
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = call i32 @store_byte(%struct.TYPE_2__* %102, i32 0)
  %104 = load %struct.go7007*, %struct.go7007** %4, align 8
  %105 = getelementptr inbounds %struct.go7007, %struct.go7007* %104, i32 0, i32 1
  store i32 132, i32* %105, align 4
  br label %122

106:                                              ; preds = %90
  %107 = load %struct.go7007*, %struct.go7007** %4, align 8
  %108 = getelementptr inbounds %struct.go7007, %struct.go7007* %107, i32 0, i32 6
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = call i32 @store_byte(%struct.TYPE_2__* %109, i32 0)
  %111 = load %struct.go7007*, %struct.go7007** %4, align 8
  %112 = getelementptr inbounds %struct.go7007, %struct.go7007* %111, i32 0, i32 6
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @store_byte(%struct.TYPE_2__* %113, i32 %118)
  %120 = load %struct.go7007*, %struct.go7007** %4, align 8
  %121 = getelementptr inbounds %struct.go7007, %struct.go7007* %120, i32 0, i32 1
  store i32 133, i32* %121, align 4
  br label %122

122:                                              ; preds = %106, %99, %96
  br label %464

123:                                              ; preds = %63
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  switch i32 %128, label %148 [
    i32 0, label %129
    i32 1, label %134
    i32 255, label %137
  ]

129:                                              ; preds = %123
  %130 = load %struct.go7007*, %struct.go7007** %4, align 8
  %131 = getelementptr inbounds %struct.go7007, %struct.go7007* %130, i32 0, i32 6
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = call i32 @store_byte(%struct.TYPE_2__* %132, i32 0)
  br label %168

134:                                              ; preds = %123
  %135 = load %struct.go7007*, %struct.go7007** %4, align 8
  %136 = getelementptr inbounds %struct.go7007, %struct.go7007* %135, i32 0, i32 1
  store i32 134, i32* %136, align 4
  br label %168

137:                                              ; preds = %123
  %138 = load %struct.go7007*, %struct.go7007** %4, align 8
  %139 = getelementptr inbounds %struct.go7007, %struct.go7007* %138, i32 0, i32 6
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = call i32 @store_byte(%struct.TYPE_2__* %140, i32 0)
  %142 = load %struct.go7007*, %struct.go7007** %4, align 8
  %143 = getelementptr inbounds %struct.go7007, %struct.go7007* %142, i32 0, i32 6
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = call i32 @store_byte(%struct.TYPE_2__* %144, i32 0)
  %146 = load %struct.go7007*, %struct.go7007** %4, align 8
  %147 = getelementptr inbounds %struct.go7007, %struct.go7007* %146, i32 0, i32 1
  store i32 132, i32* %147, align 4
  br label %168

148:                                              ; preds = %123
  %149 = load %struct.go7007*, %struct.go7007** %4, align 8
  %150 = getelementptr inbounds %struct.go7007, %struct.go7007* %149, i32 0, i32 6
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = call i32 @store_byte(%struct.TYPE_2__* %151, i32 0)
  %153 = load %struct.go7007*, %struct.go7007** %4, align 8
  %154 = getelementptr inbounds %struct.go7007, %struct.go7007* %153, i32 0, i32 6
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = call i32 @store_byte(%struct.TYPE_2__* %155, i32 0)
  %157 = load %struct.go7007*, %struct.go7007** %4, align 8
  %158 = getelementptr inbounds %struct.go7007, %struct.go7007* %157, i32 0, i32 6
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @store_byte(%struct.TYPE_2__* %159, i32 %164)
  %166 = load %struct.go7007*, %struct.go7007** %4, align 8
  %167 = getelementptr inbounds %struct.go7007, %struct.go7007* %166, i32 0, i32 1
  store i32 133, i32* %167, align 4
  br label %168

168:                                              ; preds = %148, %137, %134, %129
  br label %464

169:                                              ; preds = %63
  %170 = load %struct.go7007*, %struct.go7007** %4, align 8
  %171 = getelementptr inbounds %struct.go7007, %struct.go7007* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 139
  br i1 %173, label %184, label %174

174:                                              ; preds = %169
  %175 = load %struct.go7007*, %struct.go7007** %4, align 8
  %176 = getelementptr inbounds %struct.go7007, %struct.go7007* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 138
  br i1 %178, label %184, label %179

179:                                              ; preds = %174
  %180 = load %struct.go7007*, %struct.go7007** %4, align 8
  %181 = getelementptr inbounds %struct.go7007, %struct.go7007* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %182, 137
  br i1 %183, label %184, label %250

184:                                              ; preds = %179, %174, %169
  %185 = load i32*, i32** %5, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %207, label %192

192:                                              ; preds = %184
  %193 = load i32*, i32** %5, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 184
  br i1 %198, label %207, label %199

199:                                              ; preds = %192
  %200 = load i32*, i32** %5, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %9, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %250

207:                                              ; preds = %199, %192, %184
  %208 = load %struct.go7007*, %struct.go7007** %4, align 8
  %209 = getelementptr inbounds %struct.go7007, %struct.go7007* %208, i32 0, i32 6
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = icmp eq %struct.TYPE_2__* %210, null
  br i1 %211, label %217, label %212

212:                                              ; preds = %207
  %213 = load %struct.go7007*, %struct.go7007** %4, align 8
  %214 = getelementptr inbounds %struct.go7007, %struct.go7007* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %212, %207
  %218 = load %struct.go7007*, %struct.go7007** %4, align 8
  %219 = call i32 @frame_boundary(%struct.go7007* %218)
  br label %220

220:                                              ; preds = %217, %212
  %221 = load i32*, i32** %5, align 8
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %9, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %246

228:                                              ; preds = %220
  %229 = load %struct.go7007*, %struct.go7007** %4, align 8
  %230 = getelementptr inbounds %struct.go7007, %struct.go7007* %229, i32 0, i32 6
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** %230, align 8
  %232 = icmp ne %struct.TYPE_2__* %231, null
  br i1 %232, label %233, label %243

233:                                              ; preds = %228
  %234 = load %struct.go7007*, %struct.go7007** %4, align 8
  %235 = getelementptr inbounds %struct.go7007, %struct.go7007* %234, i32 0, i32 6
  %236 = load %struct.TYPE_2__*, %struct.TYPE_2__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.go7007*, %struct.go7007** %4, align 8
  %240 = getelementptr inbounds %struct.go7007, %struct.go7007* %239, i32 0, i32 6
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 3
  store i32 %238, i32* %242, align 4
  br label %243

243:                                              ; preds = %233, %228
  %244 = load %struct.go7007*, %struct.go7007** %4, align 8
  %245 = getelementptr inbounds %struct.go7007, %struct.go7007* %244, i32 0, i32 2
  store i32 1, i32* %245, align 8
  br label %249

246:                                              ; preds = %220
  %247 = load %struct.go7007*, %struct.go7007** %4, align 8
  %248 = getelementptr inbounds %struct.go7007, %struct.go7007* %247, i32 0, i32 2
  store i32 0, i32* %248, align 8
  br label %249

249:                                              ; preds = %246, %243
  br label %250

250:                                              ; preds = %249, %199, %179
  %251 = load i32*, i32** %5, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  switch i32 %255, label %288 [
    i32 245, label %256
    i32 246, label %261
    i32 248, label %264
    i32 255, label %273
  ]

256:                                              ; preds = %250
  %257 = load %struct.go7007*, %struct.go7007** %4, align 8
  %258 = getelementptr inbounds %struct.go7007, %struct.go7007* %257, i32 0, i32 3
  store i32 12, i32* %258, align 4
  %259 = load %struct.go7007*, %struct.go7007** %4, align 8
  %260 = getelementptr inbounds %struct.go7007, %struct.go7007* %259, i32 0, i32 1
  store i32 130, i32* %260, align 4
  br label %312

261:                                              ; preds = %250
  %262 = load %struct.go7007*, %struct.go7007** %4, align 8
  %263 = getelementptr inbounds %struct.go7007, %struct.go7007* %262, i32 0, i32 1
  store i32 129, i32* %263, align 4
  br label %312

264:                                              ; preds = %250
  %265 = load %struct.go7007*, %struct.go7007** %4, align 8
  %266 = getelementptr inbounds %struct.go7007, %struct.go7007* %265, i32 0, i32 3
  store i32 0, i32* %266, align 4
  %267 = load %struct.go7007*, %struct.go7007** %4, align 8
  %268 = getelementptr inbounds %struct.go7007, %struct.go7007* %267, i32 0, i32 7
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @memset(i32 %269, i32 0, i32 4)
  %271 = load %struct.go7007*, %struct.go7007** %4, align 8
  %272 = getelementptr inbounds %struct.go7007, %struct.go7007* %271, i32 0, i32 1
  store i32 131, i32* %272, align 4
  br label %312

273:                                              ; preds = %250
  %274 = load %struct.go7007*, %struct.go7007** %4, align 8
  %275 = getelementptr inbounds %struct.go7007, %struct.go7007* %274, i32 0, i32 6
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** %275, align 8
  %277 = call i32 @store_byte(%struct.TYPE_2__* %276, i32 0)
  %278 = load %struct.go7007*, %struct.go7007** %4, align 8
  %279 = getelementptr inbounds %struct.go7007, %struct.go7007* %278, i32 0, i32 6
  %280 = load %struct.TYPE_2__*, %struct.TYPE_2__** %279, align 8
  %281 = call i32 @store_byte(%struct.TYPE_2__* %280, i32 0)
  %282 = load %struct.go7007*, %struct.go7007** %4, align 8
  %283 = getelementptr inbounds %struct.go7007, %struct.go7007* %282, i32 0, i32 6
  %284 = load %struct.TYPE_2__*, %struct.TYPE_2__** %283, align 8
  %285 = call i32 @store_byte(%struct.TYPE_2__* %284, i32 1)
  %286 = load %struct.go7007*, %struct.go7007** %4, align 8
  %287 = getelementptr inbounds %struct.go7007, %struct.go7007* %286, i32 0, i32 1
  store i32 132, i32* %287, align 4
  br label %312

288:                                              ; preds = %250
  %289 = load %struct.go7007*, %struct.go7007** %4, align 8
  %290 = getelementptr inbounds %struct.go7007, %struct.go7007* %289, i32 0, i32 6
  %291 = load %struct.TYPE_2__*, %struct.TYPE_2__** %290, align 8
  %292 = call i32 @store_byte(%struct.TYPE_2__* %291, i32 0)
  %293 = load %struct.go7007*, %struct.go7007** %4, align 8
  %294 = getelementptr inbounds %struct.go7007, %struct.go7007* %293, i32 0, i32 6
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** %294, align 8
  %296 = call i32 @store_byte(%struct.TYPE_2__* %295, i32 0)
  %297 = load %struct.go7007*, %struct.go7007** %4, align 8
  %298 = getelementptr inbounds %struct.go7007, %struct.go7007* %297, i32 0, i32 6
  %299 = load %struct.TYPE_2__*, %struct.TYPE_2__** %298, align 8
  %300 = call i32 @store_byte(%struct.TYPE_2__* %299, i32 1)
  %301 = load %struct.go7007*, %struct.go7007** %4, align 8
  %302 = getelementptr inbounds %struct.go7007, %struct.go7007* %301, i32 0, i32 6
  %303 = load %struct.TYPE_2__*, %struct.TYPE_2__** %302, align 8
  %304 = load i32*, i32** %5, align 8
  %305 = load i32, i32* %7, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @store_byte(%struct.TYPE_2__* %303, i32 %308)
  %310 = load %struct.go7007*, %struct.go7007** %4, align 8
  %311 = getelementptr inbounds %struct.go7007, %struct.go7007* %310, i32 0, i32 1
  store i32 133, i32* %311, align 4
  br label %312

312:                                              ; preds = %288, %273, %264, %261, %256
  br label %464

313:                                              ; preds = %63
  %314 = load i32*, i32** %5, align 8
  %315 = load i32, i32* %7, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  switch i32 %318, label %341 [
    i32 0, label %319
    i32 255, label %326
    i32 216, label %331
  ]

319:                                              ; preds = %313
  %320 = load %struct.go7007*, %struct.go7007** %4, align 8
  %321 = getelementptr inbounds %struct.go7007, %struct.go7007* %320, i32 0, i32 6
  %322 = load %struct.TYPE_2__*, %struct.TYPE_2__** %321, align 8
  %323 = call i32 @store_byte(%struct.TYPE_2__* %322, i32 255)
  %324 = load %struct.go7007*, %struct.go7007** %4, align 8
  %325 = getelementptr inbounds %struct.go7007, %struct.go7007* %324, i32 0, i32 1
  store i32 136, i32* %325, align 4
  br label %357

326:                                              ; preds = %313
  %327 = load %struct.go7007*, %struct.go7007** %4, align 8
  %328 = getelementptr inbounds %struct.go7007, %struct.go7007* %327, i32 0, i32 6
  %329 = load %struct.TYPE_2__*, %struct.TYPE_2__** %328, align 8
  %330 = call i32 @store_byte(%struct.TYPE_2__* %329, i32 255)
  br label %357

331:                                              ; preds = %313
  %332 = load %struct.go7007*, %struct.go7007** %4, align 8
  %333 = getelementptr inbounds %struct.go7007, %struct.go7007* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @GO7007_FORMAT_MJPEG, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %337, label %340

337:                                              ; preds = %331
  %338 = load %struct.go7007*, %struct.go7007** %4, align 8
  %339 = call i32 @frame_boundary(%struct.go7007* %338)
  br label %340

340:                                              ; preds = %337, %331
  br label %341

341:                                              ; preds = %313, %340
  %342 = load %struct.go7007*, %struct.go7007** %4, align 8
  %343 = getelementptr inbounds %struct.go7007, %struct.go7007* %342, i32 0, i32 6
  %344 = load %struct.TYPE_2__*, %struct.TYPE_2__** %343, align 8
  %345 = call i32 @store_byte(%struct.TYPE_2__* %344, i32 255)
  %346 = load %struct.go7007*, %struct.go7007** %4, align 8
  %347 = getelementptr inbounds %struct.go7007, %struct.go7007* %346, i32 0, i32 6
  %348 = load %struct.TYPE_2__*, %struct.TYPE_2__** %347, align 8
  %349 = load i32*, i32** %5, align 8
  %350 = load i32, i32* %7, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @store_byte(%struct.TYPE_2__* %348, i32 %353)
  %355 = load %struct.go7007*, %struct.go7007** %4, align 8
  %356 = getelementptr inbounds %struct.go7007, %struct.go7007* %355, i32 0, i32 1
  store i32 133, i32* %356, align 4
  br label %357

357:                                              ; preds = %341, %326, %319
  br label %464

358:                                              ; preds = %63
  %359 = load i32*, i32** %5, align 8
  %360 = load i32, i32* %7, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = shl i32 %363, 8
  %365 = load %struct.go7007*, %struct.go7007** %4, align 8
  %366 = getelementptr inbounds %struct.go7007, %struct.go7007* %365, i32 0, i32 3
  store i32 %364, i32* %366, align 4
  %367 = load %struct.go7007*, %struct.go7007** %4, align 8
  %368 = getelementptr inbounds %struct.go7007, %struct.go7007* %367, i32 0, i32 1
  store i32 128, i32* %368, align 4
  br label %464

369:                                              ; preds = %63
  %370 = load i32*, i32** %5, align 8
  %371 = load i32, i32* %7, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.go7007*, %struct.go7007** %4, align 8
  %376 = getelementptr inbounds %struct.go7007, %struct.go7007* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 4
  %378 = or i32 %377, %374
  store i32 %378, i32* %376, align 4
  %379 = load %struct.go7007*, %struct.go7007** %4, align 8
  %380 = getelementptr inbounds %struct.go7007, %struct.go7007* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 4
  %382 = icmp sgt i32 %381, 0
  br i1 %382, label %383, label %386

383:                                              ; preds = %369
  %384 = load %struct.go7007*, %struct.go7007** %4, align 8
  %385 = getelementptr inbounds %struct.go7007, %struct.go7007* %384, i32 0, i32 1
  store i32 130, i32* %385, align 4
  br label %389

386:                                              ; preds = %369
  %387 = load %struct.go7007*, %struct.go7007** %4, align 8
  %388 = getelementptr inbounds %struct.go7007, %struct.go7007* %387, i32 0, i32 1
  store i32 133, i32* %388, align 4
  br label %389

389:                                              ; preds = %386, %383
  br label %464

390:                                              ; preds = %63
  %391 = load %struct.go7007*, %struct.go7007** %4, align 8
  %392 = getelementptr inbounds %struct.go7007, %struct.go7007* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 4
  %394 = icmp slt i32 %393, 204
  br i1 %394, label %395, label %423

395:                                              ; preds = %390
  %396 = load %struct.go7007*, %struct.go7007** %4, align 8
  %397 = getelementptr inbounds %struct.go7007, %struct.go7007* %396, i32 0, i32 3
  %398 = load i32, i32* %397, align 4
  %399 = and i32 %398, 1
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %413

401:                                              ; preds = %395
  %402 = load i32*, i32** %5, align 8
  %403 = load i32, i32* %7, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.go7007*, %struct.go7007** %4, align 8
  %408 = getelementptr inbounds %struct.go7007, %struct.go7007* %407, i32 0, i32 4
  %409 = load i32, i32* %408, align 8
  %410 = or i32 %409, %406
  store i32 %410, i32* %408, align 8
  %411 = load %struct.go7007*, %struct.go7007** %4, align 8
  %412 = call i32 @write_bitmap_word(%struct.go7007* %411)
  br label %422

413:                                              ; preds = %395
  %414 = load i32*, i32** %5, align 8
  %415 = load i32, i32* %7, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = shl i32 %418, 8
  %420 = load %struct.go7007*, %struct.go7007** %4, align 8
  %421 = getelementptr inbounds %struct.go7007, %struct.go7007* %420, i32 0, i32 4
  store i32 %419, i32* %421, align 8
  br label %422

422:                                              ; preds = %413, %401
  br label %444

423:                                              ; preds = %390
  %424 = load %struct.go7007*, %struct.go7007** %4, align 8
  %425 = getelementptr inbounds %struct.go7007, %struct.go7007* %424, i32 0, i32 3
  %426 = load i32, i32* %425, align 4
  %427 = icmp eq i32 %426, 207
  br i1 %427, label %428, label %443

428:                                              ; preds = %423
  %429 = load %struct.go7007*, %struct.go7007** %4, align 8
  %430 = getelementptr inbounds %struct.go7007, %struct.go7007* %429, i32 0, i32 6
  %431 = load %struct.TYPE_2__*, %struct.TYPE_2__** %430, align 8
  %432 = icmp ne %struct.TYPE_2__* %431, null
  br i1 %432, label %433, label %443

433:                                              ; preds = %428
  %434 = load i32*, i32** %5, align 8
  %435 = load i32, i32* %7, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %434, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = load %struct.go7007*, %struct.go7007** %4, align 8
  %440 = getelementptr inbounds %struct.go7007, %struct.go7007* %439, i32 0, i32 6
  %441 = load %struct.TYPE_2__*, %struct.TYPE_2__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %441, i32 0, i32 1
  store i32 %438, i32* %442, align 4
  br label %443

443:                                              ; preds = %433, %428, %423
  br label %444

444:                                              ; preds = %443, %422
  %445 = load %struct.go7007*, %struct.go7007** %4, align 8
  %446 = getelementptr inbounds %struct.go7007, %struct.go7007* %445, i32 0, i32 3
  %447 = load i32, i32* %446, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %446, align 4
  %449 = icmp eq i32 %448, 208
  br i1 %449, label %450, label %453

450:                                              ; preds = %444
  %451 = load %struct.go7007*, %struct.go7007** %4, align 8
  %452 = getelementptr inbounds %struct.go7007, %struct.go7007* %451, i32 0, i32 1
  store i32 133, i32* %452, align 4
  br label %453

453:                                              ; preds = %450, %444
  br label %464

454:                                              ; preds = %63
  %455 = load %struct.go7007*, %struct.go7007** %4, align 8
  %456 = getelementptr inbounds %struct.go7007, %struct.go7007* %455, i32 0, i32 3
  %457 = load i32, i32* %456, align 4
  %458 = add nsw i32 %457, -1
  store i32 %458, i32* %456, align 4
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %463

460:                                              ; preds = %454
  %461 = load %struct.go7007*, %struct.go7007** %4, align 8
  %462 = getelementptr inbounds %struct.go7007, %struct.go7007* %461, i32 0, i32 1
  store i32 133, i32* %462, align 4
  br label %463

463:                                              ; preds = %460, %454
  br label %464

464:                                              ; preds = %63, %463, %453, %389, %358, %357, %312, %168, %122, %89
  br label %465

465:                                              ; preds = %464
  %466 = load i32, i32* %7, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %7, align 4
  br label %19

468:                                              ; preds = %19
  %469 = load %struct.go7007*, %struct.go7007** %4, align 8
  %470 = getelementptr inbounds %struct.go7007, %struct.go7007* %469, i32 0, i32 5
  %471 = call i32 @spin_unlock(i32* %470)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @v4l2_info(i32, i8*) #1

declare dso_local i32 @store_byte(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @frame_boundary(%struct.go7007*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @write_bitmap_word(%struct.go7007*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
