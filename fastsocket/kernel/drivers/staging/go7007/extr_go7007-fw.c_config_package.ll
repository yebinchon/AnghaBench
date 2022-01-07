; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-fw.c_config_package.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-fw.c_config_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GO7007_FORMAT_MPEG4 = common dso_local global i32 0, align 4
@GO7007_FORMAT_H263 = common dso_local global i32 0, align 4
@GO7007_SENSOR_TV = common dso_local global i32 0, align 4
@GO7007_FORMAT_MPEG1 = common dso_local global i32 0, align 4
@GO7007_FORMAT_MPEG2 = common dso_local global i32 0, align 4
@GO7007_SENSOR_VBI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i32*, i32)* @config_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_package(%struct.go7007* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.go7007*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [160 x i32], align 16
  store %struct.go7007* %0, %struct.go7007** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.go7007*, %struct.go7007** %4, align 8
  %15 = getelementptr inbounds %struct.go7007, %struct.go7007* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.go7007*, %struct.go7007** %4, align 8
  %18 = getelementptr inbounds %struct.go7007, %struct.go7007* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %16, %19
  %21 = sdiv i32 %20, 1000
  store i32 %21, i32* %7, align 4
  %22 = load %struct.go7007*, %struct.go7007** %4, align 8
  %23 = getelementptr inbounds %struct.go7007, %struct.go7007* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.go7007*, %struct.go7007** %4, align 8
  %28 = getelementptr inbounds %struct.go7007, %struct.go7007* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = sdiv i32 %29, 32
  br label %36

31:                                               ; preds = %3
  %32 = load %struct.go7007*, %struct.go7007** %4, align 8
  %33 = getelementptr inbounds %struct.go7007, %struct.go7007* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 16
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i32 [ %30, %26 ], [ %35, %31 ]
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %9, align 4
  store i32 2, i32* %10, align 4
  store i32 31, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %39 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 0
  store i32 8206, i32* %39, align 4
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 49154, i32* %41, align 4
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 5300, i32* %42, align 4
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 49155, i32* %43, align 4
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 10420, i32* %44, align 4
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 49156, i32* %45, align 4
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 15450, i32* %46, align 4
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 56325, i32* %47, align 4
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 10871, i32* %48, align 4
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 50883, i32* %49, align 4
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load %struct.go7007*, %struct.go7007** %4, align 8
  %52 = getelementptr inbounds %struct.go7007, %struct.go7007* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @GO7007_FORMAT_MPEG4, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %36
  br label %65

57:                                               ; preds = %36
  %58 = load %struct.go7007*, %struct.go7007** %4, align 8
  %59 = getelementptr inbounds %struct.go7007, %struct.go7007* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @GO7007_FORMAT_H263, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 0, i32 1
  br label %65

65:                                               ; preds = %57, %56
  %66 = phi i32 [ 0, %56 ], [ %64, %57 ]
  store i32 %66, i32* %50, align 4
  %67 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 50816, i32* %67, align 4
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load %struct.go7007*, %struct.go7007** %4, align 8
  %70 = getelementptr inbounds %struct.go7007, %struct.go7007* %69, i32 0, i32 11
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @GO7007_FORMAT_MPEG4, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %83

75:                                               ; preds = %65
  %76 = load %struct.go7007*, %struct.go7007** %4, align 8
  %77 = getelementptr inbounds %struct.go7007, %struct.go7007* %76, i32 0, i32 11
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @GO7007_FORMAT_H263, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 97, i32 211
  br label %83

83:                                               ; preds = %75, %74
  %84 = phi i32 [ 241, %74 ], [ %82, %75 ]
  store i32 %84, i32* %68, align 4
  %85 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 51072, i32* %85, align 4
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 320, i32* %86, align 4
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 57353, i32* %87, align 4
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 1, i32* %88, align 4
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 50703, i32* %89, align 4
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 8, i32* %90, align 4
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 54527, i32* %91, align 4
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 2, i32* %92, align 4
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 58371, i32* %93, align 4
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 2340, i32* %94, align 4
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 58374, i32* %95, align 4
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 75, i32* %96, align 4
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  store i32 54289, i32* %97, align 4
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 1, i32* %98, align 4
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 54288, i32* %99, align 4
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 41430, i32* %100, align 4
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 1, i32* %101, align 4
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 10241, i32* %102, align 4
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 8205, i32* %103, align 4
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 0, i32* %104, align 4
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  store i32 58370, i32* %105, align 4
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 395, i32* %106, align 4
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 58369, i32* %107, align 4
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 35585, i32* %108, align 4
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 54386, i32* %109, align 4
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load %struct.go7007*, %struct.go7007** %4, align 8
  %112 = getelementptr inbounds %struct.go7007, %struct.go7007* %111, i32 0, i32 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @GO7007_SENSOR_TV, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %83
  %120 = load %struct.go7007*, %struct.go7007** %4, align 8
  %121 = getelementptr inbounds %struct.go7007, %struct.go7007* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  %124 = xor i1 %123, true
  br label %125

125:                                              ; preds = %119, %83
  %126 = phi i1 [ false, %83 ], [ %124, %119 ]
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 432, i32 368
  store i32 %128, i32* %110, align 4
  %129 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 54389, i32* %129, align 4
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load %struct.go7007*, %struct.go7007** %4, align 8
  %132 = getelementptr inbounds %struct.go7007, %struct.go7007* %131, i32 0, i32 4
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @GO7007_SENSOR_TV, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %125
  %140 = load %struct.go7007*, %struct.go7007** %4, align 8
  %141 = getelementptr inbounds %struct.go7007, %struct.go7007* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  %144 = xor i1 %143, true
  br label %145

145:                                              ; preds = %139, %125
  %146 = phi i1 [ false, %125 ], [ %144, %139 ]
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 8, i32 9
  store i32 %148, i32* %130, align 4
  %149 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 50180, i32* %149, align 4
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load %struct.go7007*, %struct.go7007** %4, align 8
  %152 = getelementptr inbounds %struct.go7007, %struct.go7007* %151, i32 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  br label %191

156:                                              ; preds = %145
  %157 = load %struct.go7007*, %struct.go7007** %4, align 8
  %158 = getelementptr inbounds %struct.go7007, %struct.go7007* %157, i32 0, i32 11
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @GO7007_FORMAT_MPEG4, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %189

163:                                              ; preds = %156
  %164 = load %struct.go7007*, %struct.go7007** %4, align 8
  %165 = getelementptr inbounds %struct.go7007, %struct.go7007* %164, i32 0, i32 11
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @GO7007_FORMAT_MPEG1, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  br label %187

170:                                              ; preds = %163
  %171 = load %struct.go7007*, %struct.go7007** %4, align 8
  %172 = getelementptr inbounds %struct.go7007, %struct.go7007* %171, i32 0, i32 11
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @GO7007_FORMAT_MPEG2, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  br label %185

177:                                              ; preds = %170
  %178 = load %struct.go7007*, %struct.go7007** %4, align 8
  %179 = getelementptr inbounds %struct.go7007, %struct.go7007* %178, i32 0, i32 11
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @GO7007_FORMAT_H263, align 4
  %182 = icmp eq i32 %180, %181
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 8, i32 32
  br label %185

185:                                              ; preds = %177, %176
  %186 = phi i32 [ 4, %176 ], [ %184, %177 ]
  br label %187

187:                                              ; preds = %185, %169
  %188 = phi i32 [ 2, %169 ], [ %186, %185 ]
  br label %189

189:                                              ; preds = %187, %162
  %190 = phi i32 [ 17, %162 ], [ %188, %187 ]
  br label %191

191:                                              ; preds = %189, %155
  %192 = phi i32 [ 68, %155 ], [ %190, %189 ]
  store i32 %192, i32* %150, align 4
  %193 = getelementptr inbounds i32, i32* %150, i64 1
  store i32 48906, i32* %193, align 4
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  %195 = load %struct.go7007*, %struct.go7007** %4, align 8
  %196 = getelementptr inbounds %struct.go7007, %struct.go7007* %195, i32 0, i32 11
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @GO7007_FORMAT_MPEG4, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %191
  br label %227

201:                                              ; preds = %191
  %202 = load %struct.go7007*, %struct.go7007** %4, align 8
  %203 = getelementptr inbounds %struct.go7007, %struct.go7007* %202, i32 0, i32 11
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @GO7007_FORMAT_MPEG1, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  br label %225

208:                                              ; preds = %201
  %209 = load %struct.go7007*, %struct.go7007** %4, align 8
  %210 = getelementptr inbounds %struct.go7007, %struct.go7007* %209, i32 0, i32 11
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @GO7007_FORMAT_MPEG2, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  br label %223

215:                                              ; preds = %208
  %216 = load %struct.go7007*, %struct.go7007** %4, align 8
  %217 = getelementptr inbounds %struct.go7007, %struct.go7007* %216, i32 0, i32 11
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @GO7007_FORMAT_H263, align 4
  %220 = icmp eq i32 %218, %219
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i32 4, i32 16
  br label %223

223:                                              ; preds = %215, %214
  %224 = phi i32 [ 2, %214 ], [ %222, %215 ]
  br label %225

225:                                              ; preds = %223, %207
  %226 = phi i32 [ 1, %207 ], [ %224, %223 ]
  br label %227

227:                                              ; preds = %225, %200
  %228 = phi i32 [ 8, %200 ], [ %226, %225 ]
  %229 = load %struct.go7007*, %struct.go7007** %4, align 8
  %230 = getelementptr inbounds %struct.go7007, %struct.go7007* %229, i32 0, i32 10
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i32 1, i32 0
  %235 = shl i32 %234, 6
  %236 = or i32 %228, %235
  %237 = load %struct.go7007*, %struct.go7007** %4, align 8
  %238 = getelementptr inbounds %struct.go7007, %struct.go7007* %237, i32 0, i32 9
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i32 1, i32 0
  %243 = shl i32 %242, 9
  %244 = or i32 %236, %243
  %245 = load %struct.go7007*, %struct.go7007** %4, align 8
  %246 = getelementptr inbounds %struct.go7007, %struct.go7007* %245, i32 0, i32 8
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  %249 = zext i1 %248 to i64
  %250 = select i1 %248, i32 1, i32 0
  %251 = shl i32 %250, 10
  %252 = or i32 %244, %251
  store i32 %252, i32* %194, align 4
  %253 = getelementptr inbounds i32, i32* %194, i64 1
  store i32 48907, i32* %253, align 4
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  store i32 0, i32* %254, align 4
  %255 = getelementptr inbounds i32, i32* %254, i64 1
  store i32 56666, i32* %255, align 4
  %256 = getelementptr inbounds i32, i32* %255, i64 1
  %257 = load %struct.go7007*, %struct.go7007** %4, align 8
  %258 = getelementptr inbounds %struct.go7007, %struct.go7007* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %259, 0
  %261 = zext i1 %260 to i64
  %262 = select i1 %260, i32 20, i32 10
  store i32 %262, i32* %256, align 4
  %263 = getelementptr inbounds i32, i32* %256, i64 1
  store i32 48908, i32* %263, align 4
  %264 = getelementptr inbounds i32, i32* %263, i64 1
  store i32 0, i32* %264, align 4
  %265 = getelementptr inbounds i32, i32* %264, i64 1
  store i32 48909, i32* %265, align 4
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  store i32 0, i32* %266, align 4
  %267 = getelementptr inbounds i32, i32* %266, i64 1
  store i32 50819, i32* %267, align 4
  %268 = getelementptr inbounds i32, i32* %267, i64 1
  %269 = load i32, i32* %12, align 4
  store i32 %269, i32* %268, align 4
  %270 = getelementptr inbounds i32, i32* %268, i64 1
  store i32 50186, i32* %270, align 4
  %271 = getelementptr inbounds i32, i32* %270, i64 1
  %272 = load %struct.go7007*, %struct.go7007** %4, align 8
  %273 = getelementptr inbounds %struct.go7007, %struct.go7007* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = shl i32 %274, 4
  %276 = load i32, i32* %8, align 4
  %277 = or i32 %275, %276
  store i32 %277, i32* %271, align 4
  %278 = getelementptr inbounds i32, i32* %271, i64 1
  store i32 57370, i32* %278, align 4
  %279 = getelementptr inbounds i32, i32* %278, i64 1
  %280 = load %struct.go7007*, %struct.go7007** %4, align 8
  %281 = getelementptr inbounds %struct.go7007, %struct.go7007* %280, i32 0, i32 4
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  store i32 %284, i32* %279, align 4
  %285 = getelementptr inbounds i32, i32* %279, i64 1
  store i32 0, i32* %285, align 4
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  store i32 0, i32* %286, align 4
  %287 = getelementptr inbounds i32, i32* %286, i64 1
  store i32 0, i32* %287, align 4
  %288 = getelementptr inbounds i32, i32* %287, i64 1
  store i32 0, i32* %288, align 4
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  store i32 8200, i32* %289, align 4
  %290 = getelementptr inbounds i32, i32* %289, i64 1
  store i32 0, i32* %290, align 4
  %291 = getelementptr inbounds i32, i32* %290, i64 1
  store i32 58370, i32* %291, align 4
  %292 = getelementptr inbounds i32, i32* %291, i64 1
  store i32 136, i32* %292, align 4
  %293 = getelementptr inbounds i32, i32* %292, i64 1
  store i32 58369, i32* %293, align 4
  %294 = getelementptr inbounds i32, i32* %293, i64 1
  store i32 36609, i32* %294, align 4
  %295 = getelementptr inbounds i32, i32* %294, i64 1
  store i32 49002, i32* %295, align 4
  %296 = getelementptr inbounds i32, i32* %295, i64 1
  store i32 0, i32* %296, align 4
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  store i32 49003, i32* %297, align 4
  %298 = getelementptr inbounds i32, i32* %297, i64 1
  store i32 0, i32* %298, align 4
  %299 = getelementptr inbounds i32, i32* %298, i64 1
  store i32 49004, i32* %299, align 4
  %300 = getelementptr inbounds i32, i32* %299, i64 1
  store i32 0, i32* %300, align 4
  %301 = getelementptr inbounds i32, i32* %300, i64 1
  store i32 49005, i32* %301, align 4
  %302 = getelementptr inbounds i32, i32* %301, i64 1
  store i32 0, i32* %302, align 4
  %303 = getelementptr inbounds i32, i32* %302, i64 1
  store i32 49006, i32* %303, align 4
  %304 = getelementptr inbounds i32, i32* %303, i64 1
  store i32 0, i32* %304, align 4
  %305 = getelementptr inbounds i32, i32* %304, i64 1
  store i32 49007, i32* %305, align 4
  %306 = getelementptr inbounds i32, i32* %305, i64 1
  store i32 0, i32* %306, align 4
  %307 = getelementptr inbounds i32, i32* %306, i64 1
  store i32 0, i32* %307, align 4
  %308 = getelementptr inbounds i32, i32* %307, i64 1
  store i32 0, i32* %308, align 4
  %309 = getelementptr inbounds i32, i32* %308, i64 1
  store i32 0, i32* %309, align 4
  %310 = getelementptr inbounds i32, i32* %309, i64 1
  store i32 0, i32* %310, align 4
  %311 = getelementptr inbounds i32, i32* %310, i64 1
  store i32 0, i32* %311, align 4
  %312 = getelementptr inbounds i32, i32* %311, i64 1
  store i32 0, i32* %312, align 4
  %313 = getelementptr inbounds i32, i32* %312, i64 1
  store i32 0, i32* %313, align 4
  %314 = getelementptr inbounds i32, i32* %313, i64 1
  store i32 0, i32* %314, align 4
  %315 = getelementptr inbounds i32, i32* %314, i64 1
  store i32 0, i32* %315, align 4
  %316 = getelementptr inbounds i32, i32* %315, i64 1
  store i32 0, i32* %316, align 4
  %317 = getelementptr inbounds i32, i32* %316, i64 1
  store i32 0, i32* %317, align 4
  %318 = getelementptr inbounds i32, i32* %317, i64 1
  store i32 0, i32* %318, align 4
  %319 = getelementptr inbounds i32, i32* %318, i64 1
  store i32 0, i32* %319, align 4
  %320 = getelementptr inbounds i32, i32* %319, i64 1
  store i32 0, i32* %320, align 4
  %321 = getelementptr inbounds i32, i32* %320, i64 1
  store i32 8206, i32* %321, align 4
  %322 = getelementptr inbounds i32, i32* %321, i64 1
  store i32 0, i32* %322, align 4
  %323 = getelementptr inbounds i32, i32* %322, i64 1
  store i32 48998, i32* %323, align 4
  %324 = getelementptr inbounds i32, i32* %323, i64 1
  %325 = load i32, i32* %9, align 4
  store i32 %325, i32* %324, align 4
  %326 = getelementptr inbounds i32, i32* %324, i64 1
  store i32 48999, i32* %326, align 4
  %327 = getelementptr inbounds i32, i32* %326, i64 1
  store i32 0, i32* %327, align 4
  %328 = getelementptr inbounds i32, i32* %327, i64 1
  store i32 49000, i32* %328, align 4
  %329 = getelementptr inbounds i32, i32* %328, i64 1
  %330 = load i32, i32* %10, align 4
  store i32 %330, i32* %329, align 4
  %331 = getelementptr inbounds i32, i32* %329, i64 1
  store i32 49001, i32* %331, align 4
  %332 = getelementptr inbounds i32, i32* %331, i64 1
  %333 = load i32, i32* %11, align 4
  store i32 %333, i32* %332, align 4
  %334 = getelementptr inbounds i32, i32* %332, i64 1
  store i32 49120, i32* %334, align 4
  %335 = getelementptr inbounds i32, i32* %334, i64 1
  store i32 0, i32* %335, align 4
  %336 = getelementptr inbounds i32, i32* %335, i64 1
  store i32 49121, i32* %336, align 4
  %337 = getelementptr inbounds i32, i32* %336, i64 1
  store i32 0, i32* %337, align 4
  %338 = getelementptr inbounds i32, i32* %337, i64 1
  store i32 49122, i32* %338, align 4
  %339 = getelementptr inbounds i32, i32* %338, i64 1
  store i32 0, i32* %339, align 4
  %340 = getelementptr inbounds i32, i32* %339, i64 1
  store i32 49123, i32* %340, align 4
  %341 = getelementptr inbounds i32, i32* %340, i64 1
  %342 = load %struct.go7007*, %struct.go7007** %4, align 8
  %343 = getelementptr inbounds %struct.go7007, %struct.go7007* %342, i32 0, i32 7
  %344 = load i32, i32* %343, align 8
  %345 = icmp ne i32 %344, 0
  %346 = zext i1 %345 to i64
  %347 = select i1 %345, i32 3, i32 1
  store i32 %347, i32* %341, align 4
  %348 = getelementptr inbounds i32, i32* %341, i64 1
  store i32 49201, i32* %348, align 4
  %349 = getelementptr inbounds i32, i32* %348, i64 1
  %350 = load %struct.go7007*, %struct.go7007** %4, align 8
  %351 = getelementptr inbounds %struct.go7007, %struct.go7007* %350, i32 0, i32 4
  %352 = load %struct.TYPE_2__*, %struct.TYPE_2__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* @GO7007_SENSOR_VBI, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  %358 = zext i1 %357 to i64
  %359 = select i1 %357, i32 1, i32 0
  store i32 %359, i32* %349, align 4
  %360 = getelementptr inbounds i32, i32* %349, i64 1
  store i32 49180, i32* %360, align 4
  %361 = getelementptr inbounds i32, i32* %360, i64 1
  store i32 31, i32* %361, align 4
  %362 = getelementptr inbounds i32, i32* %361, i64 1
  store i32 56716, i32* %362, align 4
  %363 = getelementptr inbounds i32, i32* %362, i64 1
  store i32 21, i32* %363, align 4
  %364 = getelementptr inbounds i32, i32* %363, i64 1
  store i32 56724, i32* %364, align 4
  %365 = getelementptr inbounds i32, i32* %364, i64 1
  store i32 21, i32* %365, align 4
  %366 = getelementptr inbounds i32, i32* %365, i64 1
  store i32 56712, i32* %366, align 4
  %367 = getelementptr inbounds i32, i32* %366, i64 1
  %368 = load %struct.go7007*, %struct.go7007** %4, align 8
  %369 = getelementptr inbounds %struct.go7007, %struct.go7007* %368, i32 0, i32 7
  %370 = load i32, i32* %369, align 8
  %371 = icmp ne i32 %370, 0
  %372 = zext i1 %371 to i64
  %373 = select i1 %371, i32 5121, i32 2561
  store i32 %373, i32* %367, align 4
  %374 = getelementptr inbounds i32, i32* %367, i64 1
  store i32 56720, i32* %374, align 4
  %375 = getelementptr inbounds i32, i32* %374, i64 1
  %376 = load %struct.go7007*, %struct.go7007** %4, align 8
  %377 = getelementptr inbounds %struct.go7007, %struct.go7007* %376, i32 0, i32 7
  %378 = load i32, i32* %377, align 8
  %379 = icmp ne i32 %378, 0
  %380 = zext i1 %379 to i64
  %381 = select i1 %379, i32 5121, i32 2561
  store i32 %381, i32* %375, align 4
  %382 = getelementptr inbounds i32, i32* %375, i64 1
  store i32 0, i32* %382, align 4
  %383 = getelementptr inbounds i32, i32* %382, i64 1
  store i32 0, i32* %383, align 4
  %384 = getelementptr inbounds i32, i32* %383, i64 1
  store i32 8206, i32* %384, align 4
  %385 = getelementptr inbounds i32, i32* %384, i64 1
  store i32 0, i32* %385, align 4
  %386 = getelementptr inbounds i32, i32* %385, i64 1
  store i32 49124, i32* %386, align 4
  %387 = getelementptr inbounds i32, i32* %386, i64 1
  store i32 0, i32* %387, align 4
  %388 = getelementptr inbounds i32, i32* %387, i64 1
  store i32 49125, i32* %388, align 4
  %389 = getelementptr inbounds i32, i32* %388, i64 1
  store i32 0, i32* %389, align 4
  %390 = getelementptr inbounds i32, i32* %389, i64 1
  store i32 49126, i32* %390, align 4
  %391 = getelementptr inbounds i32, i32* %390, i64 1
  store i32 0, i32* %391, align 4
  %392 = getelementptr inbounds i32, i32* %391, i64 1
  store i32 49127, i32* %392, align 4
  %393 = getelementptr inbounds i32, i32* %392, i64 1
  %394 = load i32, i32* %7, align 4
  %395 = shl i32 %394, 8
  store i32 %395, i32* %393, align 4
  %396 = getelementptr inbounds i32, i32* %393, i64 1
  store i32 49128, i32* %396, align 4
  %397 = getelementptr inbounds i32, i32* %396, i64 1
  store i32 14848, i32* %397, align 4
  %398 = getelementptr inbounds i32, i32* %397, i64 1
  store i32 49129, i32* %398, align 4
  %399 = getelementptr inbounds i32, i32* %398, i64 1
  store i32 0, i32* %399, align 4
  %400 = getelementptr inbounds i32, i32* %399, i64 1
  store i32 49130, i32* %400, align 4
  %401 = getelementptr inbounds i32, i32* %400, i64 1
  store i32 0, i32* %401, align 4
  %402 = getelementptr inbounds i32, i32* %401, i64 1
  store i32 49131, i32* %402, align 4
  %403 = getelementptr inbounds i32, i32* %402, i64 1
  store i32 0, i32* %403, align 4
  %404 = getelementptr inbounds i32, i32* %403, i64 1
  store i32 49132, i32* %404, align 4
  %405 = getelementptr inbounds i32, i32* %404, i64 1
  %406 = load %struct.go7007*, %struct.go7007** %4, align 8
  %407 = getelementptr inbounds %struct.go7007, %struct.go7007* %406, i32 0, i32 6
  %408 = load i64, i64* %407, align 8
  %409 = icmp ne i64 %408, 0
  %410 = zext i1 %409 to i64
  %411 = select i1 %409, i32 32768, i32 0
  %412 = load %struct.go7007*, %struct.go7007** %4, align 8
  %413 = getelementptr inbounds %struct.go7007, %struct.go7007* %412, i32 0, i32 5
  %414 = load i32, i32* %413, align 8
  %415 = icmp ne i32 %414, 0
  %416 = zext i1 %415 to i64
  %417 = select i1 %415, i32 10, i32 0
  %418 = or i32 %411, %417
  %419 = load %struct.go7007*, %struct.go7007** %4, align 8
  %420 = getelementptr inbounds %struct.go7007, %struct.go7007* %419, i32 0, i32 4
  %421 = load %struct.TYPE_2__*, %struct.TYPE_2__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* @GO7007_SENSOR_VBI, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  %427 = zext i1 %426 to i64
  %428 = select i1 %426, i32 1, i32 0
  %429 = or i32 %418, %428
  store i32 %429, i32* %405, align 4
  %430 = getelementptr inbounds i32, i32* %405, i64 1
  store i32 49133, i32* %430, align 4
  %431 = getelementptr inbounds i32, i32* %430, i64 1
  store i32 0, i32* %431, align 4
  %432 = getelementptr inbounds i32, i32* %431, i64 1
  store i32 49134, i32* %432, align 4
  %433 = getelementptr inbounds i32, i32* %432, i64 1
  store i32 0, i32* %433, align 4
  %434 = getelementptr inbounds i32, i32* %433, i64 1
  store i32 49135, i32* %434, align 4
  %435 = getelementptr inbounds i32, i32* %434, i64 1
  store i32 0, i32* %435, align 4
  %436 = getelementptr inbounds i32, i32* %435, i64 1
  store i32 49136, i32* %436, align 4
  %437 = getelementptr inbounds i32, i32* %436, i64 1
  %438 = load %struct.go7007*, %struct.go7007** %4, align 8
  %439 = getelementptr inbounds %struct.go7007, %struct.go7007* %438, i32 0, i32 4
  %440 = load %struct.TYPE_2__*, %struct.TYPE_2__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* @GO7007_SENSOR_TV, align 4
  %444 = and i32 %442, %443
  %445 = icmp ne i32 %444, 0
  %446 = zext i1 %445 to i64
  %447 = select i1 %445, i32 61536, i32 45152
  store i32 %447, i32* %437, align 4
  %448 = getelementptr inbounds i32, i32* %437, i64 1
  store i32 49137, i32* %448, align 4
  %449 = getelementptr inbounds i32, i32* %448, i64 1
  store i32 0, i32* %449, align 4
  %450 = getelementptr inbounds i32, i32* %449, i64 1
  store i32 0, i32* %450, align 4
  %451 = getelementptr inbounds i32, i32* %450, i64 1
  store i32 0, i32* %451, align 4
  %452 = load i32*, i32** %5, align 8
  %453 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 0
  %454 = load i32, i32* %6, align 4
  %455 = call i32 @copy_packages(i32* %452, i32* %453, i32 5, i32 %454)
  ret i32 %455
}

declare dso_local i32 @copy_packages(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
