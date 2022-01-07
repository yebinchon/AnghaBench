; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_s626_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_s626_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_INT = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@MAX_SPEED = common dso_local global i8* null, align 8
@MIN_SPEED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @s626_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s626_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %11 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @TRIG_NOW, align 4
  %14 = load i32, i32* @TRIG_INT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @TRIG_EXT, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %29 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %3
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @TRIG_TIMER, align 4
  %40 = load i32, i32* @TRIG_EXT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @TRIG_FOLLOW, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %45 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %35
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52, %35
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %52
  %62 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %63 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @TRIG_TIMER, align 4
  %66 = load i32, i32* @TRIG_EXT, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @TRIG_NOW, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %71 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %75 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %61
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %79, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78, %61
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %84, %78
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* @TRIG_COUNT, align 4
  %92 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %93 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %97 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %87
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %101, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %100, %87
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %106, %100
  %110 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %111 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* @TRIG_COUNT, align 4
  %114 = load i32, i32* @TRIG_NONE, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %117 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %121 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %109
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %127 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %125, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %124, %109
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %130, %124
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 1, i32* %4, align 4
  br label %455

137:                                              ; preds = %133
  %138 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %139 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @TRIG_TIMER, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %158

143:                                              ; preds = %137
  %144 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %145 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @TRIG_EXT, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %151 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @TRIG_FOLLOW, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %155, %149, %143, %137
  %159 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %160 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @TRIG_TIMER, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %158
  %165 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %166 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @TRIG_EXT, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %164
  %171 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %172 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @TRIG_NOW, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %179

179:                                              ; preds = %176, %170, %164, %158
  %180 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %181 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @TRIG_COUNT, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %179
  %186 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %187 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @TRIG_NONE, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %8, align 4
  br label %194

194:                                              ; preds = %191, %185, %179
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  store i32 2, i32* %4, align 4
  br label %455

198:                                              ; preds = %194
  %199 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %200 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @TRIG_EXT, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %198
  %205 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %206 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %211 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %210, i32 0, i32 5
  store i32 0, i32* %211, align 4
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %8, align 4
  br label %214

214:                                              ; preds = %209, %204, %198
  %215 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %216 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @TRIG_EXT, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %230

220:                                              ; preds = %214
  %221 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %222 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = icmp sgt i32 %223, 39
  br i1 %224, label %225, label %230

225:                                              ; preds = %220
  %226 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %227 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %226, i32 0, i32 5
  store i32 39, i32* %227, align 4
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %8, align 4
  br label %230

230:                                              ; preds = %225, %220, %214
  %231 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %232 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @TRIG_EXT, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %246

236:                                              ; preds = %230
  %237 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %238 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 4
  %240 = icmp sgt i32 %239, 39
  br i1 %240, label %241, label %246

241:                                              ; preds = %236
  %242 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %243 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %242, i32 0, i32 6
  store i32 39, i32* %243, align 4
  %244 = load i32, i32* %8, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %8, align 4
  br label %246

246:                                              ; preds = %241, %236, %230
  %247 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %248 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @TRIG_EXT, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %262

252:                                              ; preds = %246
  %253 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %254 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 4
  %256 = icmp sgt i32 %255, 39
  br i1 %256, label %257, label %262

257:                                              ; preds = %252
  %258 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %259 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %258, i32 0, i32 7
  store i32 39, i32* %259, align 4
  %260 = load i32, i32* %8, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %8, align 4
  br label %262

262:                                              ; preds = %257, %252, %246
  %263 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %264 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @TRIG_TIMER, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %289

268:                                              ; preds = %262
  %269 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %270 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 4
  %272 = icmp slt i32 %271, 200000
  br i1 %272, label %273, label %278

273:                                              ; preds = %268
  %274 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %275 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %274, i32 0, i32 6
  store i32 200000, i32* %275, align 4
  %276 = load i32, i32* %8, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %8, align 4
  br label %278

278:                                              ; preds = %273, %268
  %279 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %280 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 4
  %282 = icmp sgt i32 %281, 2000000000
  br i1 %282, label %283, label %288

283:                                              ; preds = %278
  %284 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %285 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %284, i32 0, i32 6
  store i32 2000000000, i32* %285, align 4
  %286 = load i32, i32* %8, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %8, align 4
  br label %288

288:                                              ; preds = %283, %278
  br label %290

289:                                              ; preds = %262
  br label %290

290:                                              ; preds = %289, %288
  %291 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %292 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @TRIG_TIMER, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %317

296:                                              ; preds = %290
  %297 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %298 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %297, i32 0, i32 7
  %299 = load i32, i32* %298, align 4
  %300 = icmp slt i32 %299, 200000
  br i1 %300, label %301, label %306

301:                                              ; preds = %296
  %302 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %303 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %302, i32 0, i32 7
  store i32 200000, i32* %303, align 4
  %304 = load i32, i32* %8, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %8, align 4
  br label %306

306:                                              ; preds = %301, %296
  %307 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %308 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %307, i32 0, i32 7
  %309 = load i32, i32* %308, align 4
  %310 = icmp sgt i32 %309, 2000000000
  br i1 %310, label %311, label %316

311:                                              ; preds = %306
  %312 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %313 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %312, i32 0, i32 7
  store i32 2000000000, i32* %313, align 4
  %314 = load i32, i32* %8, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %8, align 4
  br label %316

316:                                              ; preds = %311, %306
  br label %318

317:                                              ; preds = %290
  br label %318

318:                                              ; preds = %317, %316
  %319 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %320 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %319, i32 0, i32 8
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %323 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %322, i32 0, i32 9
  %324 = load i32, i32* %323, align 4
  %325 = icmp ne i32 %321, %324
  br i1 %325, label %326, label %334

326:                                              ; preds = %318
  %327 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %328 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %327, i32 0, i32 9
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %331 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %330, i32 0, i32 8
  store i32 %329, i32* %331, align 4
  %332 = load i32, i32* %8, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %8, align 4
  br label %334

334:                                              ; preds = %326, %318
  %335 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %336 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @TRIG_COUNT, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %351

340:                                              ; preds = %334
  %341 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %342 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %341, i32 0, i32 10
  %343 = load i32, i32* %342, align 4
  %344 = icmp sgt i32 %343, 16777215
  br i1 %344, label %345, label %350

345:                                              ; preds = %340
  %346 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %347 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %346, i32 0, i32 10
  store i32 16777215, i32* %347, align 4
  %348 = load i32, i32* %8, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %8, align 4
  br label %350

350:                                              ; preds = %345, %340
  br label %362

351:                                              ; preds = %334
  %352 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %353 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %352, i32 0, i32 10
  %354 = load i32, i32* %353, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %351
  %357 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %358 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %357, i32 0, i32 10
  store i32 0, i32* %358, align 4
  %359 = load i32, i32* %8, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %8, align 4
  br label %361

361:                                              ; preds = %356, %351
  br label %362

362:                                              ; preds = %361, %350
  %363 = load i32, i32* %8, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %362
  store i32 3, i32* %4, align 4
  br label %455

366:                                              ; preds = %362
  %367 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %368 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @TRIG_TIMER, align 4
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %372, label %393

372:                                              ; preds = %366
  %373 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %374 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %373, i32 0, i32 6
  %375 = load i32, i32* %374, align 4
  store i32 %375, i32* %9, align 4
  %376 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %377 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %376, i32 0, i32 6
  %378 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %379 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %378, i32 0, i32 11
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %382 = and i32 %380, %381
  %383 = call i32 @s626_ns_to_timer(i32* %377, i32 %382)
  %384 = load i32, i32* %9, align 4
  %385 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %386 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %385, i32 0, i32 6
  %387 = load i32, i32* %386, align 4
  %388 = icmp ne i32 %384, %387
  br i1 %388, label %389, label %392

389:                                              ; preds = %372
  %390 = load i32, i32* %8, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %8, align 4
  br label %392

392:                                              ; preds = %389, %372
  br label %393

393:                                              ; preds = %392, %366
  %394 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %395 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* @TRIG_TIMER, align 4
  %398 = icmp eq i32 %396, %397
  br i1 %398, label %399, label %450

399:                                              ; preds = %393
  %400 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %401 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %400, i32 0, i32 7
  %402 = load i32, i32* %401, align 4
  store i32 %402, i32* %9, align 4
  %403 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %404 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %403, i32 0, i32 7
  %405 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %406 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %405, i32 0, i32 11
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %409 = and i32 %407, %408
  %410 = call i32 @s626_ns_to_timer(i32* %404, i32 %409)
  %411 = load i32, i32* %9, align 4
  %412 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %413 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %412, i32 0, i32 7
  %414 = load i32, i32* %413, align 4
  %415 = icmp ne i32 %411, %414
  br i1 %415, label %416, label %419

416:                                              ; preds = %399
  %417 = load i32, i32* %8, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %8, align 4
  br label %419

419:                                              ; preds = %416, %399
  %420 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %421 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* @TRIG_TIMER, align 4
  %424 = icmp eq i32 %422, %423
  br i1 %424, label %425, label %449

425:                                              ; preds = %419
  %426 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %427 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %426, i32 0, i32 6
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %430 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %429, i32 0, i32 7
  %431 = load i32, i32* %430, align 4
  %432 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %433 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %432, i32 0, i32 8
  %434 = load i32, i32* %433, align 4
  %435 = mul nsw i32 %431, %434
  %436 = icmp slt i32 %428, %435
  br i1 %436, label %437, label %449

437:                                              ; preds = %425
  %438 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %439 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %438, i32 0, i32 7
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %442 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %441, i32 0, i32 8
  %443 = load i32, i32* %442, align 4
  %444 = mul nsw i32 %440, %443
  %445 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %446 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %445, i32 0, i32 6
  store i32 %444, i32* %446, align 4
  %447 = load i32, i32* %8, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %8, align 4
  br label %449

449:                                              ; preds = %437, %425, %419
  br label %450

450:                                              ; preds = %449, %393
  %451 = load i32, i32* %8, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %450
  store i32 4, i32* %4, align 4
  br label %455

454:                                              ; preds = %450
  store i32 0, i32* %4, align 4
  br label %455

455:                                              ; preds = %454, %453, %365, %197, %136
  %456 = load i32, i32* %4, align 4
  ret i32 %456
}

declare dso_local i32 @s626_ns_to_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
