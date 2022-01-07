; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32, i32 }
%struct.u132 = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i8* }

@OHCI_INTR_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"resetting from state '%s', control = %08X\0A\00", align 1
@OHCI_CTRL_HCFS = common dso_local global i32 0, align 4
@OHCI_CTRL_RWC = common dso_local global i32 0, align 4
@OHCI_USB_RESET = common dso_local global i32 0, align 4
@roothub = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@RH_A_NPS = common dso_local global i32 0, align 4
@RH_PS_LSDA = common dso_local global i32 0, align 4
@OHCI_HCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"USB HC reset timed out!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@OHCI_QUIRK_INITRESET = common dso_local global i32 0, align 4
@ed_controlhead = common dso_local global i32 0, align 4
@ed_bulkhead = common dso_local global i32 0, align 4
@hcca = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"init err(%08x %04x)\0A\00", align 1
@OHCI_CONTROL_INIT = common dso_local global i32 0, align 4
@OHCI_CTRL_BLE = common dso_local global i32 0, align 4
@OHCI_BLF = common dso_local global i32 0, align 4
@HC_STATE_RUNNING = common dso_local global i8* null, align 8
@RH_HS_DRWE = common dso_local global i32 0, align 4
@intrstatus = common dso_local global i32 0, align 4
@intrdisable = common dso_local global i32 0, align 4
@OHCI_INTR_MIE = common dso_local global i32 0, align 4
@OHCI_INTR_OC = common dso_local global i32 0, align 4
@OHCI_INTR_RHSC = common dso_local global i32 0, align 4
@OHCI_INTR_FNO = common dso_local global i32 0, align 4
@OHCI_INTR_UE = common dso_local global i32 0, align 4
@OHCI_INTR_RD = common dso_local global i32 0, align 4
@OHCI_INTR_SF = common dso_local global i32 0, align 4
@OHCI_INTR_WDH = common dso_local global i32 0, align 4
@OHCI_INTR_SO = common dso_local global i32 0, align 4
@RH_A_PSM = common dso_local global i32 0, align 4
@RH_A_OCPM = common dso_local global i32 0, align 4
@OHCI_QUIRK_SUPERIO = common dso_local global i32 0, align 4
@RH_A_NOCP = common dso_local global i32 0, align 4
@RH_A_POTPGT = common dso_local global i32 0, align 4
@OHCI_QUIRK_AMD756 = common dso_local global i32 0, align 4
@distrust_firmware = common dso_local global i64 0, align 8
@RH_HS_LPSC = common dso_local global i32 0, align 4
@RH_B_PPCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u132*)* @u132_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u132_run(%struct.u132* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.u132*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.u132* %0, %struct.u132** %3, align 8
  %17 = load i32, i32* @OHCI_INTR_INIT, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.u132*, %struct.u132** %3, align 8
  %19 = getelementptr inbounds %struct.u132, %struct.u132* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 30, i32* %14, align 4
  %23 = load %struct.u132*, %struct.u132** %3, align 8
  %24 = call i32 @u132_disable(%struct.u132* %23)
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %1
  %28 = load %struct.u132*, %struct.u132** %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @u132_read_pcimem(%struct.u132* %28, i32 %29, i32* %15)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %520

35:                                               ; preds = %27
  %36 = load i32, i32* %15, align 4
  %37 = and i32 %36, 16383
  %38 = load %struct.u132*, %struct.u132** %3, align 8
  %39 = getelementptr inbounds %struct.u132, %struct.u132* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.u132*, %struct.u132** %3, align 8
  %41 = getelementptr inbounds %struct.u132, %struct.u132* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @FSMP(i32 %42)
  %44 = shl i32 %43, 16
  %45 = load %struct.u132*, %struct.u132** %3, align 8
  %46 = getelementptr inbounds %struct.u132, %struct.u132* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %35, %1
  %50 = load %struct.u132*, %struct.u132** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.u132*, %struct.u132** %3, align 8
  %53 = getelementptr inbounds %struct.u132, %struct.u132* %52, i32 0, i32 1
  %54 = call i32 @u132_read_pcimem(%struct.u132* %50, i32 %51, i32* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %520

59:                                               ; preds = %49
  %60 = load %struct.u132*, %struct.u132** %3, align 8
  %61 = getelementptr inbounds %struct.u132, %struct.u132* %60, i32 0, i32 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.u132*, %struct.u132** %3, align 8
  %65 = getelementptr inbounds %struct.u132, %struct.u132* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @OHCI_CTRL_HCFS, align 4
  %68 = and i32 %66, %67
  %69 = call i32 @hcfs2string(i32 %68)
  %70 = load %struct.u132*, %struct.u132** %3, align 8
  %71 = getelementptr inbounds %struct.u132, %struct.u132* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_info(i32* %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %72)
  %74 = load %struct.u132*, %struct.u132** %3, align 8
  %75 = getelementptr inbounds %struct.u132, %struct.u132* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @OHCI_CTRL_HCFS, align 4
  %78 = and i32 %76, %77
  switch i32 %78, label %90 [
    i32 130, label %79
    i32 128, label %80
    i32 129, label %80
  ]

79:                                               ; preds = %59
  store i32 0, i32* %13, align 4
  br label %101

80:                                               ; preds = %59, %59
  %81 = load i32, i32* @OHCI_CTRL_RWC, align 4
  %82 = load %struct.u132*, %struct.u132** %3, align 8
  %83 = getelementptr inbounds %struct.u132, %struct.u132* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.u132*, %struct.u132** %3, align 8
  %87 = getelementptr inbounds %struct.u132, %struct.u132* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, 129
  store i32 %89, i32* %87, align 4
  store i32 10, i32* %13, align 4
  br label %101

90:                                               ; preds = %59
  %91 = load i32, i32* @OHCI_CTRL_RWC, align 4
  %92 = load %struct.u132*, %struct.u132** %3, align 8
  %93 = getelementptr inbounds %struct.u132, %struct.u132* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @OHCI_USB_RESET, align 4
  %97 = load %struct.u132*, %struct.u132** %3, align 8
  %98 = getelementptr inbounds %struct.u132, %struct.u132* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  store i32 50, i32* %13, align 4
  br label %101

101:                                              ; preds = %90, %80, %79
  %102 = load %struct.u132*, %struct.u132** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.u132*, %struct.u132** %3, align 8
  %105 = getelementptr inbounds %struct.u132, %struct.u132* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @u132_write_pcimem(%struct.u132* %102, i32 %103, i32 %106)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %2, align 4
  br label %520

112:                                              ; preds = %101
  %113 = load %struct.u132*, %struct.u132** %3, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @u132_read_pcimem(%struct.u132* %113, i32 %114, i32* %5)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %520

120:                                              ; preds = %112
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @msleep(i32 %121)
  %123 = load %struct.u132*, %struct.u132** %3, align 8
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @roothub, i32 0, i32 0), align 8
  %125 = call i32 @u132_read_pcimem(%struct.u132* %123, i32 %124, i32* %10)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load i32, i32* %4, align 4
  store i32 %129, i32* %2, align 4
  br label %520

130:                                              ; preds = %120
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @RH_A_NPS, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %160, label %135

135:                                              ; preds = %130
  store i32 0, i32* %16, align 4
  br label %136

136:                                              ; preds = %156, %135
  %137 = load i32, i32* %16, align 4
  %138 = load %struct.u132*, %struct.u132** %3, align 8
  %139 = getelementptr inbounds %struct.u132, %struct.u132* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %136
  %143 = load %struct.u132*, %struct.u132** %3, align 8
  %144 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @roothub, i32 0, i32 1), align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @RH_PS_LSDA, align 4
  %150 = call i32 @u132_write_pcimem(%struct.u132* %143, i32 %148, i32 %149)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %142
  %154 = load i32, i32* %4, align 4
  store i32 %154, i32* %2, align 4
  br label %520

155:                                              ; preds = %142
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %16, align 4
  br label %136

159:                                              ; preds = %136
  br label %160

160:                                              ; preds = %159, %130
  %161 = load %struct.u132*, %struct.u132** %3, align 8
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @u132_read_pcimem(%struct.u132* %161, i32 %162, i32* %5)
  store i32 %163, i32* %4, align 4
  %164 = load i32, i32* %4, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load i32, i32* %4, align 4
  store i32 %167, i32* %2, align 4
  br label %520

168:                                              ; preds = %160
  br label %169

169:                                              ; preds = %302, %168
  %170 = load %struct.u132*, %struct.u132** %3, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @u132_read_pcimem(%struct.u132* %170, i32 %171, i32* %6)
  store i32 %172, i32* %4, align 4
  %173 = load i32, i32* %4, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %169
  %176 = load i32, i32* %4, align 4
  store i32 %176, i32* %2, align 4
  br label %520

177:                                              ; preds = %169
  %178 = load %struct.u132*, %struct.u132** %3, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @OHCI_HCR, align 4
  %181 = call i32 @u132_write_pcimem(%struct.u132* %178, i32 %179, i32 %180)
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* %4, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = load i32, i32* %4, align 4
  store i32 %185, i32* %2, align 4
  br label %520

186:                                              ; preds = %177
  br label %187

187:                                              ; preds = %212, %186
  %188 = load %struct.u132*, %struct.u132** %3, align 8
  %189 = load i32, i32* %9, align 4
  %190 = call i32 @u132_read_pcimem(%struct.u132* %188, i32 %189, i32* %6)
  store i32 %190, i32* %4, align 4
  %191 = load i32, i32* %4, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %187
  %194 = load i32, i32* %4, align 4
  store i32 %194, i32* %2, align 4
  br label %520

195:                                              ; preds = %187
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @OHCI_HCR, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 0, %198
  br i1 %199, label %200, label %214

200:                                              ; preds = %195
  %201 = load i32, i32* %14, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %14, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %200
  %205 = load %struct.u132*, %struct.u132** %3, align 8
  %206 = getelementptr inbounds %struct.u132, %struct.u132* %205, i32 0, i32 4
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = call i32 (i32*, i8*, ...) @dev_err(i32* %208, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %210 = load i32, i32* @ENODEV, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %2, align 4
  br label %520

212:                                              ; preds = %200
  %213 = call i32 @msleep(i32 5)
  br label %187

214:                                              ; preds = %195
  %215 = load %struct.u132*, %struct.u132** %3, align 8
  %216 = getelementptr inbounds %struct.u132, %struct.u132* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @OHCI_QUIRK_INITRESET, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %241

221:                                              ; preds = %214
  %222 = load %struct.u132*, %struct.u132** %3, align 8
  %223 = load i32, i32* %5, align 4
  %224 = load %struct.u132*, %struct.u132** %3, align 8
  %225 = getelementptr inbounds %struct.u132, %struct.u132* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @u132_write_pcimem(%struct.u132* %222, i32 %223, i32 %226)
  store i32 %227, i32* %4, align 4
  %228 = load i32, i32* %4, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %221
  %231 = load i32, i32* %4, align 4
  store i32 %231, i32* %2, align 4
  br label %520

232:                                              ; preds = %221
  %233 = load %struct.u132*, %struct.u132** %3, align 8
  %234 = load i32, i32* %5, align 4
  %235 = call i32 @u132_read_pcimem(%struct.u132* %233, i32 %234, i32* %5)
  store i32 %235, i32* %4, align 4
  %236 = load i32, i32* %4, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %232
  %239 = load i32, i32* %4, align 4
  store i32 %239, i32* %2, align 4
  br label %520

240:                                              ; preds = %232
  br label %241

241:                                              ; preds = %240, %214
  %242 = load %struct.u132*, %struct.u132** %3, align 8
  %243 = load i32, i32* @ed_controlhead, align 4
  %244 = call i32 @u132_write_pcimem(%struct.u132* %242, i32 %243, i32 0)
  store i32 %244, i32* %4, align 4
  %245 = load i32, i32* %4, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %241
  %248 = load i32, i32* %4, align 4
  store i32 %248, i32* %2, align 4
  br label %520

249:                                              ; preds = %241
  %250 = load %struct.u132*, %struct.u132** %3, align 8
  %251 = load i32, i32* @ed_bulkhead, align 4
  %252 = call i32 @u132_write_pcimem(%struct.u132* %250, i32 %251, i32 285212672)
  store i32 %252, i32* %4, align 4
  %253 = load i32, i32* %4, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %249
  %256 = load i32, i32* %4, align 4
  store i32 %256, i32* %2, align 4
  br label %520

257:                                              ; preds = %249
  %258 = load %struct.u132*, %struct.u132** %3, align 8
  %259 = load i32, i32* @hcca, align 4
  %260 = call i32 @u132_write_pcimem(%struct.u132* %258, i32 %259, i32 0)
  store i32 %260, i32* %4, align 4
  %261 = load i32, i32* %4, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %257
  %264 = load i32, i32* %4, align 4
  store i32 %264, i32* %2, align 4
  br label %520

265:                                              ; preds = %257
  %266 = load %struct.u132*, %struct.u132** %3, align 8
  %267 = call i32 @u132_periodic_reinit(%struct.u132* %266)
  store i32 %267, i32* %4, align 4
  %268 = load i32, i32* %4, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  %271 = load i32, i32* %4, align 4
  store i32 %271, i32* %2, align 4
  br label %520

272:                                              ; preds = %265
  %273 = load %struct.u132*, %struct.u132** %3, align 8
  %274 = load i32, i32* %7, align 4
  %275 = call i32 @u132_read_pcimem(%struct.u132* %273, i32 %274, i32* %7)
  store i32 %275, i32* %4, align 4
  %276 = load i32, i32* %4, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %272
  %279 = load i32, i32* %4, align 4
  store i32 %279, i32* %2, align 4
  br label %520

280:                                              ; preds = %272
  %281 = load %struct.u132*, %struct.u132** %3, align 8
  %282 = load i32, i32* %8, align 4
  %283 = call i32 @u132_read_pcimem(%struct.u132* %281, i32 %282, i32* %8)
  store i32 %283, i32* %4, align 4
  %284 = load i32, i32* %4, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %280
  %287 = load i32, i32* %4, align 4
  store i32 %287, i32* %2, align 4
  br label %520

288:                                              ; preds = %280
  %289 = load i32, i32* %7, align 4
  %290 = and i32 %289, 1073676288
  %291 = icmp eq i32 0, %290
  br i1 %291, label %295, label %292

292:                                              ; preds = %288
  %293 = load i32, i32* %8, align 4
  %294 = icmp eq i32 0, %293
  br i1 %294, label %295, label %317

295:                                              ; preds = %292, %288
  %296 = load %struct.u132*, %struct.u132** %3, align 8
  %297 = getelementptr inbounds %struct.u132, %struct.u132* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @OHCI_QUIRK_INITRESET, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %308, label %302

302:                                              ; preds = %295
  %303 = load i32, i32* @OHCI_QUIRK_INITRESET, align 4
  %304 = load %struct.u132*, %struct.u132** %3, align 8
  %305 = getelementptr inbounds %struct.u132, %struct.u132* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = or i32 %306, %303
  store i32 %307, i32* %305, align 4
  br label %169

308:                                              ; preds = %295
  %309 = load %struct.u132*, %struct.u132** %3, align 8
  %310 = getelementptr inbounds %struct.u132, %struct.u132* %309, i32 0, i32 4
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 0
  %313 = load i32, i32* %7, align 4
  %314 = load i32, i32* %8, align 4
  %315 = call i32 (i32*, i8*, ...) @dev_err(i32* %312, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %313, i32 %314)
  br label %316

316:                                              ; preds = %308
  br label %317

317:                                              ; preds = %316, %292
  %318 = load i32, i32* @OHCI_CTRL_RWC, align 4
  %319 = load %struct.u132*, %struct.u132** %3, align 8
  %320 = getelementptr inbounds %struct.u132, %struct.u132* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = and i32 %321, %318
  store i32 %322, i32* %320, align 4
  %323 = load i32, i32* @OHCI_CONTROL_INIT, align 4
  %324 = load i32, i32* @OHCI_CTRL_BLE, align 4
  %325 = or i32 %323, %324
  %326 = or i32 %325, 130
  %327 = load %struct.u132*, %struct.u132** %3, align 8
  %328 = getelementptr inbounds %struct.u132, %struct.u132* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = or i32 %329, %326
  store i32 %330, i32* %328, align 4
  %331 = load %struct.u132*, %struct.u132** %3, align 8
  %332 = load i32, i32* %5, align 4
  %333 = load %struct.u132*, %struct.u132** %3, align 8
  %334 = getelementptr inbounds %struct.u132, %struct.u132* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @u132_write_pcimem(%struct.u132* %331, i32 %332, i32 %335)
  store i32 %336, i32* %4, align 4
  %337 = load i32, i32* %4, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %317
  %340 = load i32, i32* %4, align 4
  store i32 %340, i32* %2, align 4
  br label %520

341:                                              ; preds = %317
  %342 = load %struct.u132*, %struct.u132** %3, align 8
  %343 = load i32, i32* %9, align 4
  %344 = load i32, i32* @OHCI_BLF, align 4
  %345 = call i32 @u132_write_pcimem(%struct.u132* %342, i32 %343, i32 %344)
  store i32 %345, i32* %4, align 4
  %346 = load i32, i32* %4, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %341
  %349 = load i32, i32* %4, align 4
  store i32 %349, i32* %2, align 4
  br label %520

350:                                              ; preds = %341
  %351 = load %struct.u132*, %struct.u132** %3, align 8
  %352 = load i32, i32* %9, align 4
  %353 = call i32 @u132_read_pcimem(%struct.u132* %351, i32 %352, i32* %9)
  store i32 %353, i32* %4, align 4
  %354 = load i32, i32* %4, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %350
  %357 = load i32, i32* %4, align 4
  store i32 %357, i32* %2, align 4
  br label %520

358:                                              ; preds = %350
  %359 = load %struct.u132*, %struct.u132** %3, align 8
  %360 = load i32, i32* %5, align 4
  %361 = call i32 @u132_read_pcimem(%struct.u132* %359, i32 %360, i32* %5)
  store i32 %361, i32* %4, align 4
  %362 = load i32, i32* %4, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %358
  %365 = load i32, i32* %4, align 4
  store i32 %365, i32* %2, align 4
  br label %520

366:                                              ; preds = %358
  %367 = load i8*, i8** @HC_STATE_RUNNING, align 8
  %368 = load %struct.u132*, %struct.u132** %3, align 8
  %369 = call %struct.TYPE_5__* @u132_to_hcd(%struct.u132* %368)
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %369, i32 0, i32 0
  store i8* %367, i8** %370, align 8
  %371 = load %struct.u132*, %struct.u132** %3, align 8
  %372 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @roothub, i32 0, i32 2), align 8
  %373 = load i32, i32* @RH_HS_DRWE, align 4
  %374 = call i32 @u132_write_pcimem(%struct.u132* %371, i32 %372, i32 %373)
  store i32 %374, i32* %4, align 4
  %375 = load i32, i32* %4, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %379

377:                                              ; preds = %366
  %378 = load i32, i32* %4, align 4
  store i32 %378, i32* %2, align 4
  br label %520

379:                                              ; preds = %366
  %380 = load %struct.u132*, %struct.u132** %3, align 8
  %381 = load i32, i32* @intrstatus, align 4
  %382 = load i32, i32* %11, align 4
  %383 = call i32 @u132_write_pcimem(%struct.u132* %380, i32 %381, i32 %382)
  store i32 %383, i32* %4, align 4
  %384 = load i32, i32* %4, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %379
  %387 = load i32, i32* %4, align 4
  store i32 %387, i32* %2, align 4
  br label %520

388:                                              ; preds = %379
  %389 = load %struct.u132*, %struct.u132** %3, align 8
  %390 = load i32, i32* @intrdisable, align 4
  %391 = load i32, i32* @OHCI_INTR_MIE, align 4
  %392 = load i32, i32* @OHCI_INTR_OC, align 4
  %393 = or i32 %391, %392
  %394 = load i32, i32* @OHCI_INTR_RHSC, align 4
  %395 = or i32 %393, %394
  %396 = load i32, i32* @OHCI_INTR_FNO, align 4
  %397 = or i32 %395, %396
  %398 = load i32, i32* @OHCI_INTR_UE, align 4
  %399 = or i32 %397, %398
  %400 = load i32, i32* @OHCI_INTR_RD, align 4
  %401 = or i32 %399, %400
  %402 = load i32, i32* @OHCI_INTR_SF, align 4
  %403 = or i32 %401, %402
  %404 = load i32, i32* @OHCI_INTR_WDH, align 4
  %405 = or i32 %403, %404
  %406 = load i32, i32* @OHCI_INTR_SO, align 4
  %407 = or i32 %405, %406
  %408 = call i32 @u132_write_pcimem(%struct.u132* %389, i32 %390, i32 %407)
  store i32 %408, i32* %4, align 4
  %409 = load i32, i32* %4, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %413

411:                                              ; preds = %388
  %412 = load i32, i32* %4, align 4
  store i32 %412, i32* %2, align 4
  br label %520

413:                                              ; preds = %388
  %414 = load %struct.u132*, %struct.u132** %3, align 8
  %415 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @roothub, i32 0, i32 0), align 8
  %416 = call i32 @u132_read_pcimem(%struct.u132* %414, i32 %415, i32* %10)
  store i32 %416, i32* %4, align 4
  %417 = load i32, i32* %4, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %413
  %420 = load i32, i32* %4, align 4
  store i32 %420, i32* %2, align 4
  br label %520

421:                                              ; preds = %413
  %422 = load i32, i32* @RH_A_PSM, align 4
  %423 = load i32, i32* @RH_A_OCPM, align 4
  %424 = or i32 %422, %423
  %425 = xor i32 %424, -1
  %426 = load i32, i32* %10, align 4
  %427 = and i32 %426, %425
  store i32 %427, i32* %10, align 4
  %428 = load %struct.u132*, %struct.u132** %3, align 8
  %429 = getelementptr inbounds %struct.u132, %struct.u132* %428, i32 0, i32 3
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* @OHCI_QUIRK_SUPERIO, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %453

434:                                              ; preds = %421
  %435 = load i32, i32* @RH_A_NOCP, align 4
  %436 = load i32, i32* %10, align 4
  %437 = or i32 %436, %435
  store i32 %437, i32* %10, align 4
  %438 = load i32, i32* @RH_A_POTPGT, align 4
  %439 = load i32, i32* @RH_A_NPS, align 4
  %440 = or i32 %438, %439
  %441 = xor i32 %440, -1
  %442 = load i32, i32* %10, align 4
  %443 = and i32 %442, %441
  store i32 %443, i32* %10, align 4
  %444 = load %struct.u132*, %struct.u132** %3, align 8
  %445 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @roothub, i32 0, i32 0), align 8
  %446 = load i32, i32* %10, align 4
  %447 = call i32 @u132_write_pcimem(%struct.u132* %444, i32 %445, i32 %446)
  store i32 %447, i32* %4, align 4
  %448 = load i32, i32* %4, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %452

450:                                              ; preds = %434
  %451 = load i32, i32* %4, align 4
  store i32 %451, i32* %2, align 4
  br label %520

452:                                              ; preds = %434
  br label %477

453:                                              ; preds = %421
  %454 = load %struct.u132*, %struct.u132** %3, align 8
  %455 = getelementptr inbounds %struct.u132, %struct.u132* %454, i32 0, i32 3
  %456 = load i32, i32* %455, align 4
  %457 = load i32, i32* @OHCI_QUIRK_AMD756, align 4
  %458 = and i32 %456, %457
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %463, label %460

460:                                              ; preds = %453
  %461 = load i64, i64* @distrust_firmware, align 8
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %476

463:                                              ; preds = %460, %453
  %464 = load i32, i32* @RH_A_NPS, align 4
  %465 = load i32, i32* %10, align 4
  %466 = or i32 %465, %464
  store i32 %466, i32* %10, align 4
  %467 = load %struct.u132*, %struct.u132** %3, align 8
  %468 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @roothub, i32 0, i32 0), align 8
  %469 = load i32, i32* %10, align 4
  %470 = call i32 @u132_write_pcimem(%struct.u132* %467, i32 %468, i32 %469)
  store i32 %470, i32* %4, align 4
  %471 = load i32, i32* %4, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %475

473:                                              ; preds = %463
  %474 = load i32, i32* %4, align 4
  store i32 %474, i32* %2, align 4
  br label %520

475:                                              ; preds = %463
  br label %476

476:                                              ; preds = %475, %460
  br label %477

477:                                              ; preds = %476, %452
  %478 = load %struct.u132*, %struct.u132** %3, align 8
  %479 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @roothub, i32 0, i32 2), align 8
  %480 = load i32, i32* @RH_HS_LPSC, align 4
  %481 = call i32 @u132_write_pcimem(%struct.u132* %478, i32 %479, i32 %480)
  store i32 %481, i32* %4, align 4
  %482 = load i32, i32* %4, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %486

484:                                              ; preds = %477
  %485 = load i32, i32* %4, align 4
  store i32 %485, i32* %2, align 4
  br label %520

486:                                              ; preds = %477
  %487 = load %struct.u132*, %struct.u132** %3, align 8
  %488 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @roothub, i32 0, i32 3), align 4
  %489 = load i32, i32* %10, align 4
  %490 = load i32, i32* @RH_A_NPS, align 4
  %491 = and i32 %489, %490
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %494

493:                                              ; preds = %486
  br label %496

494:                                              ; preds = %486
  %495 = load i32, i32* @RH_B_PPCM, align 4
  br label %496

496:                                              ; preds = %494, %493
  %497 = phi i32 [ 0, %493 ], [ %495, %494 ]
  %498 = call i32 @u132_write_pcimem(%struct.u132* %487, i32 %488, i32 %497)
  store i32 %498, i32* %4, align 4
  %499 = load i32, i32* %4, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %503

501:                                              ; preds = %496
  %502 = load i32, i32* %4, align 4
  store i32 %502, i32* %2, align 4
  br label %520

503:                                              ; preds = %496
  %504 = load %struct.u132*, %struct.u132** %3, align 8
  %505 = load i32, i32* %5, align 4
  %506 = call i32 @u132_read_pcimem(%struct.u132* %504, i32 %505, i32* %5)
  store i32 %506, i32* %4, align 4
  %507 = load i32, i32* %4, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %511

509:                                              ; preds = %503
  %510 = load i32, i32* %4, align 4
  store i32 %510, i32* %2, align 4
  br label %520

511:                                              ; preds = %503
  %512 = load i32, i32* %10, align 4
  %513 = ashr i32 %512, 23
  %514 = and i32 %513, 510
  %515 = call i32 @mdelay(i32 %514)
  %516 = load i8*, i8** @HC_STATE_RUNNING, align 8
  %517 = load %struct.u132*, %struct.u132** %3, align 8
  %518 = call %struct.TYPE_5__* @u132_to_hcd(%struct.u132* %517)
  %519 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %518, i32 0, i32 0
  store i8* %516, i8** %519, align 8
  store i32 0, i32* %2, align 4
  br label %520

520:                                              ; preds = %511, %509, %501, %484, %473, %450, %419, %411, %386, %377, %364, %356, %348, %339, %286, %278, %270, %263, %255, %247, %238, %230, %204, %193, %184, %175, %166, %153, %128, %118, %110, %57, %33
  %521 = load i32, i32* %2, align 4
  ret i32 %521
}

declare dso_local i32 @u132_disable(%struct.u132*) #1

declare dso_local i32 @u132_read_pcimem(%struct.u132*, i32, i32*) #1

declare dso_local i32 @FSMP(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @hcfs2string(i32) #1

declare dso_local i32 @u132_write_pcimem(%struct.u132*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @u132_periodic_reinit(%struct.u132*) #1

declare dso_local %struct.TYPE_5__* @u132_to_hcd(%struct.u132*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
