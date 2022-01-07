; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ao_cmdtest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ao_cmdtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.usbduxsub* }
%struct.usbduxsub = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i64 }

@EFAULT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"comedi%d: usbdux_ao_cmdtest\0A\00", align 1
@TRIG_NOW = common dso_local global i32 0, align 4
@TRIG_INT = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i32 0, align 4
@TRIG_FOLLOW = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [88 x i8] c"comedi%d: err=%d, scan_begin_src=%d, scan_begin_arg=%d, convert_src=%d, convert_arg=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*)* @usbdux_ao_cmdtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_ao_cmdtest(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usbduxsub*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.usbduxsub*, %struct.usbduxsub** %12, align 8
  store %struct.usbduxsub* %13, %struct.usbduxsub** %10, align 8
  %14 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %15 = icmp ne %struct.usbduxsub* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EFAULT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %314

19:                                               ; preds = %3
  %20 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %21 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %314

27:                                               ; preds = %19
  %28 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %29 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @TRIG_NOW, align 4
  %40 = load i32, i32* @TRIG_INT, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %47 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %27
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %53 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50, %27
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %50
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @TRIG_TIMER, align 4
  %64 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %65 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %69 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %75 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72, %59
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %78, %72
  %82 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %83 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* @TRIG_NOW, align 4
  %86 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %87 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %91 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %81
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %97 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %95, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94, %81
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %100, %94
  %104 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %105 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* @TRIG_COUNT, align 4
  %108 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %109 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %113 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %103
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %119 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %117, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116, %103
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %122, %116
  %126 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %127 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* @TRIG_COUNT, align 4
  %130 = load i32, i32* @TRIG_NONE, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %133 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %137 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %125
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %143 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %141, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140, %125
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %146, %140
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  store i32 1, i32* %4, align 4
  br label %314

153:                                              ; preds = %149
  %154 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %155 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @TRIG_FOLLOW, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %174

159:                                              ; preds = %153
  %160 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %161 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @TRIG_EXT, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %159
  %166 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %167 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @TRIG_TIMER, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %174

174:                                              ; preds = %171, %165, %159, %153
  %175 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %176 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @TRIG_COUNT, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %174
  %181 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %182 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @TRIG_NONE, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  br label %189

189:                                              ; preds = %186, %180, %174
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store i32 2, i32* %4, align 4
  br label %314

193:                                              ; preds = %189
  %194 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %195 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %194, i32 0, i32 5
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %200 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %199, i32 0, i32 5
  store i64 0, i64* %200, align 8
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %198, %193
  %204 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %205 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @TRIG_FOLLOW, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %220

209:                                              ; preds = %203
  %210 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %211 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %216 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %215, i32 0, i32 6
  store i32 0, i32* %216, align 8
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %8, align 4
  br label %219

219:                                              ; preds = %214, %209
  br label %220

220:                                              ; preds = %219, %203
  %221 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %222 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @TRIG_TIMER, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %237

226:                                              ; preds = %220
  %227 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %228 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 8
  %230 = icmp slt i32 %229, 1000000
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %233 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %232, i32 0, i32 6
  store i32 1000000, i32* %233, align 8
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %8, align 4
  br label %236

236:                                              ; preds = %231, %226
  br label %237

237:                                              ; preds = %236, %220
  %238 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %239 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @TRIG_TIMER, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %254

243:                                              ; preds = %237
  %244 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %245 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %244, i32 0, i32 7
  %246 = load i32, i32* %245, align 4
  %247 = icmp slt i32 %246, 125000
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %250 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %249, i32 0, i32 7
  store i32 125000, i32* %250, align 4
  %251 = load i32, i32* %8, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %8, align 4
  br label %253

253:                                              ; preds = %248, %243
  br label %254

254:                                              ; preds = %253, %237
  %255 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %256 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %255, i32 0, i32 8
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %259 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %258, i32 0, i32 9
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %257, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %254
  %263 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %264 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %263, i32 0, i32 9
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %267 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %266, i32 0, i32 8
  store i64 %265, i64* %267, align 8
  %268 = load i32, i32* %8, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %8, align 4
  br label %270

270:                                              ; preds = %262, %254
  %271 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %272 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @TRIG_COUNT, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %270
  br label %288

277:                                              ; preds = %270
  %278 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %279 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %278, i32 0, i32 10
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %277
  %283 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %284 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %283, i32 0, i32 10
  store i64 0, i64* %284, align 8
  %285 = load i32, i32* %8, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %8, align 4
  br label %287

287:                                              ; preds = %282, %277
  br label %288

288:                                              ; preds = %287, %276
  %289 = load %struct.usbduxsub*, %struct.usbduxsub** %10, align 8
  %290 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %289, i32 0, i32 0
  %291 = load %struct.TYPE_2__*, %struct.TYPE_2__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 0
  %293 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %294 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* %8, align 4
  %297 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %298 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %301 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %300, i32 0, i32 6
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %304 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %307 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %306, i32 0, i32 7
  %308 = load i32, i32* %307, align 4
  %309 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %292, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %295, i32 %296, i32 %299, i32 %302, i32 %305, i32 %308)
  %310 = load i32, i32* %8, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %288
  store i32 3, i32* %4, align 4
  br label %314

313:                                              ; preds = %288
  store i32 0, i32* %4, align 4
  br label %314

314:                                              ; preds = %313, %312, %192, %152, %24, %16
  %315 = load i32, i32* %4, align 4
  ret i32 %315
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
