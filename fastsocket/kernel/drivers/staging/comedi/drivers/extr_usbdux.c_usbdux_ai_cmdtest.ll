; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ai_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ai_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.usbduxsub* }
%struct.usbduxsub = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"comedi%d: usbdux_ai_cmdtest\0A\00", align 1
@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_INT = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @usbdux_ai_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_ai_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usbduxsub*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load %struct.usbduxsub*, %struct.usbduxsub** %14, align 8
  store %struct.usbduxsub* %15, %struct.usbduxsub** %12, align 8
  %16 = load %struct.usbduxsub*, %struct.usbduxsub** %12, align 8
  %17 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %337

23:                                               ; preds = %3
  %24 = load %struct.usbduxsub*, %struct.usbduxsub** %12, align 8
  %25 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_dbg(i32* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @TRIG_NOW, align 4
  %36 = load i32, i32* @TRIG_INT, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %23
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %23
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %46
  %56 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @TRIG_TIMER, align 4
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %55
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %71 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68, %55
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %74, %68
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* @TRIG_NOW, align 4
  %82 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %83 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %87 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %77
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %93 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %91, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90, %77
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %96, %90
  %100 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %101 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* @TRIG_COUNT, align 4
  %104 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %105 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %109 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %99
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %115 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %113, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112, %99
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %118, %112
  %122 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %123 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* @TRIG_COUNT, align 4
  %126 = load i32, i32* @TRIG_NONE, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %129 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %133 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %121
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %139 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %137, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %136, %121
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %142, %136
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 1, i32* %4, align 4
  br label %337

149:                                              ; preds = %145
  %150 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %151 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @TRIG_FOLLOW, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %170

155:                                              ; preds = %149
  %156 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %157 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @TRIG_EXT, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %155
  %162 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %163 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @TRIG_TIMER, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %170

170:                                              ; preds = %167, %161, %155, %149
  %171 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %172 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @TRIG_COUNT, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %170
  %177 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %178 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @TRIG_NONE, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %185

185:                                              ; preds = %182, %176, %170
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 2, i32* %4, align 4
  br label %337

189:                                              ; preds = %185
  %190 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %191 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %189
  %195 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %196 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %195, i32 0, i32 5
  store i64 0, i64* %196, align 8
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %8, align 4
  br label %199

199:                                              ; preds = %194, %189
  %200 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %201 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @TRIG_FOLLOW, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %216

205:                                              ; preds = %199
  %206 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %207 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %212 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %211, i32 0, i32 6
  store i32 0, i32* %212, align 8
  %213 = load i32, i32* %8, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %8, align 4
  br label %215

215:                                              ; preds = %210, %205
  br label %216

216:                                              ; preds = %215, %199
  %217 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %218 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @TRIG_TIMER, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %298

222:                                              ; preds = %216
  %223 = load %struct.usbduxsub*, %struct.usbduxsub** %12, align 8
  %224 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %269

227:                                              ; preds = %222
  store i32 1, i32* %10, align 4
  br label %228

228:                                              ; preds = %234, %227
  %229 = load i32, i32* %10, align 4
  %230 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %231 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 4
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %228
  %235 = load i32, i32* %10, align 4
  %236 = mul nsw i32 %235, 2
  store i32 %236, i32* %10, align 4
  br label %228

237:                                              ; preds = %228
  %238 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %239 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %10, align 4
  %242 = mul nsw i32 125000, %241
  %243 = icmp slt i32 %240, %242
  br i1 %243, label %244, label %251

244:                                              ; preds = %237
  %245 = load i32, i32* %10, align 4
  %246 = mul nsw i32 125000, %245
  %247 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %248 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %247, i32 0, i32 6
  store i32 %246, i32* %248, align 8
  %249 = load i32, i32* %8, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %8, align 4
  br label %251

251:                                              ; preds = %244, %237
  %252 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %253 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %252, i32 0, i32 6
  %254 = load i32, i32* %253, align 8
  %255 = sdiv i32 %254, 125000
  %256 = mul i32 %255, 125000
  store i32 %256, i32* %11, align 4
  %257 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %258 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %11, align 4
  %261 = icmp ne i32 %259, %260
  br i1 %261, label %262, label %268

262:                                              ; preds = %251
  %263 = load i32, i32* %11, align 4
  %264 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %265 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %264, i32 0, i32 6
  store i32 %263, i32* %265, align 8
  %266 = load i32, i32* %8, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %8, align 4
  br label %268

268:                                              ; preds = %262, %251
  br label %297

269:                                              ; preds = %222
  %270 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %271 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 8
  %273 = icmp slt i32 %272, 1000000
  br i1 %273, label %274, label %279

274:                                              ; preds = %269
  %275 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %276 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %275, i32 0, i32 6
  store i32 1000000, i32* %276, align 8
  %277 = load i32, i32* %8, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %8, align 4
  br label %279

279:                                              ; preds = %274, %269
  %280 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %281 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 8
  %283 = sdiv i32 %282, 1000000
  %284 = mul i32 %283, 1000000
  store i32 %284, i32* %11, align 4
  %285 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %286 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %285, i32 0, i32 6
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* %11, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %296

290:                                              ; preds = %279
  %291 = load i32, i32* %11, align 4
  %292 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %293 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %292, i32 0, i32 6
  store i32 %291, i32* %293, align 8
  %294 = load i32, i32* %8, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %8, align 4
  br label %296

296:                                              ; preds = %290, %279
  br label %297

297:                                              ; preds = %296, %268
  br label %298

298:                                              ; preds = %297, %216
  %299 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %300 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %299, i32 0, i32 8
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %303 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %302, i32 0, i32 7
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %301, %304
  br i1 %305, label %306, label %314

306:                                              ; preds = %298
  %307 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %308 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %307, i32 0, i32 7
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %311 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %310, i32 0, i32 8
  store i32 %309, i32* %311, align 8
  %312 = load i32, i32* %8, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %8, align 4
  br label %314

314:                                              ; preds = %306, %298
  %315 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %316 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @TRIG_COUNT, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %314
  br label %332

321:                                              ; preds = %314
  %322 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %323 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %322, i32 0, i32 9
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %331

326:                                              ; preds = %321
  %327 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %328 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %327, i32 0, i32 9
  store i64 0, i64* %328, align 8
  %329 = load i32, i32* %8, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %8, align 4
  br label %331

331:                                              ; preds = %326, %321
  br label %332

332:                                              ; preds = %331, %320
  %333 = load i32, i32* %8, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %332
  store i32 3, i32* %4, align 4
  br label %337

336:                                              ; preds = %332
  store i32 0, i32* %4, align 4
  br label %337

337:                                              ; preds = %336, %335, %188, %148, %20
  %338 = load i32, i32* %4, align 4
  ret i32 %338
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
