; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_check_controller.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_check_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i32 }
%struct.usb_ftdi = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@OHCI_INTR_INIT = common dso_local global i32 0, align 4
@intrdisable = common dso_local global i32 0, align 4
@OHCI_INTR_MIE = common dso_local global i32 0, align 4
@roothub = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@RH_A_NDP = common dso_local global i32 0, align 4
@FI = common dso_local global i32 0, align 4
@OHCI_CTRL_HCFS = common dso_local global i32 0, align 4
@OHCI_CTRL_RWC = common dso_local global i32 0, align 4
@OHCI_USB_RESET = common dso_local global i32 0, align 4
@RH_A_NPS = common dso_local global i32 0, align 4
@RH_PS_LSDA = common dso_local global i32 0, align 4
@OHCI_HCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"USB HC reset timed out!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@OHCI_QUIRK_INITRESET = common dso_local global i32 0, align 4
@ed_controlhead = common dso_local global i32 0, align 4
@ed_bulkhead = common dso_local global i32 0, align 4
@hcca = common dso_local global i32 0, align 4
@FIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"init err(%08x %04x)\0A\00", align 1
@OHCI_CONTROL_INIT = common dso_local global i32 0, align 4
@OHCI_CTRL_BLE = common dso_local global i32 0, align 4
@OHCI_BLF = common dso_local global i32 0, align 4
@RH_HS_DRWE = common dso_local global i32 0, align 4
@intrstatus = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*, i32)* @ftdi_elan_check_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_check_controller(%struct.usb_ftdi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ftdi*, align 8
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %11, align 4
  %23 = load i32, i32* @OHCI_INTR_INIT, align 4
  store i32 %23, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 30, i32* %20, align 4
  %24 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %25 = load i32, i32* @intrdisable, align 4
  %26 = load i32, i32* @OHCI_INTR_MIE, align 4
  %27 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %24, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %543

32:                                               ; preds = %2
  %33 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @ftdi_read_pcimem(%struct.usb_ftdi* %33, i32 %34, i32* %10)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %543

40:                                               ; preds = %32
  %41 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @roothub, i32 0, i32 0), align 8
  %43 = call i32 @ftdi_read_pcimem(%struct.usb_ftdi* %41, i32 %42, i32* %11)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %543

48:                                               ; preds = %40
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @RH_A_NDP, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %9, align 4
  %52 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @ftdi_read_pcimem(%struct.usb_ftdi* %52, i32 %53, i32* %14)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %543

59:                                               ; preds = %48
  %60 = load i32, i32* %14, align 4
  %61 = and i32 %60, 16383
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @FI, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %59
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @FSMP(i32 %67)
  %69 = shl i32 %68, 16
  %70 = load i32, i32* %14, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %14, align 4
  %72 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @ftdi_read_pcimem(%struct.usb_ftdi* %72, i32 %73, i32* %8)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %543

79:                                               ; preds = %66
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @OHCI_CTRL_HCFS, align 4
  %82 = and i32 %80, %81
  switch i32 %82, label %90 [
    i32 130, label %83
    i32 128, label %84
    i32 129, label %84
  ]

83:                                               ; preds = %79
  store i32 0, i32* %19, align 4
  br label %97

84:                                               ; preds = %79, %79
  %85 = load i32, i32* @OHCI_CTRL_RWC, align 4
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, 129
  store i32 %89, i32* %8, align 4
  store i32 10, i32* %19, align 4
  br label %97

90:                                               ; preds = %79
  %91 = load i32, i32* @OHCI_CTRL_RWC, align 4
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* @OHCI_USB_RESET, align 4
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  store i32 50, i32* %19, align 4
  br label %97

97:                                               ; preds = %90, %84, %83
  %98 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %98, i32 %99, i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %543

106:                                              ; preds = %97
  %107 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @ftdi_read_pcimem(%struct.usb_ftdi* %107, i32 %108, i32* %10)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %3, align 4
  br label %543

114:                                              ; preds = %106
  %115 = load i32, i32* %19, align 4
  %116 = call i32 @msleep(i32 %115)
  %117 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @roothub, i32 0, i32 0), align 8
  %119 = call i32 @ftdi_read_pcimem(%struct.usb_ftdi* %117, i32 %118, i32* %17)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %3, align 4
  br label %543

124:                                              ; preds = %114
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* @RH_A_NPS, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %152, label %129

129:                                              ; preds = %124
  store i32 0, i32* %21, align 4
  br label %130

130:                                              ; preds = %148, %129
  %131 = load i32, i32* %21, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %151

134:                                              ; preds = %130
  %135 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %136 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @roothub, i32 0, i32 1), align 8
  %137 = load i32, i32* %21, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @RH_PS_LSDA, align 4
  %142 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %135, i32 %140, i32 %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %134
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %3, align 4
  br label %543

147:                                              ; preds = %134
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %21, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %21, align 4
  br label %130

151:                                              ; preds = %130
  br label %152

152:                                              ; preds = %151, %124
  %153 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @ftdi_read_pcimem(%struct.usb_ftdi* %153, i32 %154, i32* %10)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %3, align 4
  br label %543

160:                                              ; preds = %152
  br label %161

161:                                              ; preds = %316, %160
  %162 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %163 = load i32, i32* %16, align 4
  %164 = call i32 @ftdi_read_pcimem(%struct.usb_ftdi* %162, i32 %163, i32* %12)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = load i32, i32* %7, align 4
  store i32 %168, i32* %3, align 4
  br label %543

169:                                              ; preds = %161
  %170 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* @OHCI_HCR, align 4
  %173 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %170, i32 %171, i32 %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = load i32, i32* %7, align 4
  store i32 %177, i32* %3, align 4
  br label %543

178:                                              ; preds = %169
  br label %179

179:                                              ; preds = %204, %178
  %180 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %181 = load i32, i32* %16, align 4
  %182 = call i32 @ftdi_read_pcimem(%struct.usb_ftdi* %180, i32 %181, i32* %12)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %179
  %186 = load i32, i32* %7, align 4
  store i32 %186, i32* %3, align 4
  br label %543

187:                                              ; preds = %179
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* @OHCI_HCR, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 0, %190
  br i1 %191, label %192, label %206

192:                                              ; preds = %187
  %193 = load i32, i32* %20, align 4
  %194 = add nsw i32 %193, -1
  store i32 %194, i32* %20, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %192
  %197 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %198 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %197, i32 0, i32 0
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = call i32 (i32*, i8*, ...) @dev_err(i32* %200, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %202 = load i32, i32* @ENODEV, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %3, align 4
  br label %543

204:                                              ; preds = %192
  %205 = call i32 @msleep(i32 5)
  br label %179

206:                                              ; preds = %187
  %207 = load i32, i32* %5, align 4
  %208 = load i32, i32* @OHCI_QUIRK_INITRESET, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %229

211:                                              ; preds = %206
  %212 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %8, align 4
  %215 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %212, i32 %213, i32 %214)
  store i32 %215, i32* %7, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %211
  %219 = load i32, i32* %7, align 4
  store i32 %219, i32* %3, align 4
  br label %543

220:                                              ; preds = %211
  %221 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @ftdi_read_pcimem(%struct.usb_ftdi* %221, i32 %222, i32* %10)
  store i32 %223, i32* %7, align 4
  %224 = load i32, i32* %7, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %220
  %227 = load i32, i32* %7, align 4
  store i32 %227, i32* %3, align 4
  br label %543

228:                                              ; preds = %220
  br label %229

229:                                              ; preds = %228, %206
  %230 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %231 = load i32, i32* @ed_controlhead, align 4
  %232 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %230, i32 %231, i32 0)
  store i32 %232, i32* %7, align 4
  %233 = load i32, i32* %7, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %229
  %236 = load i32, i32* %7, align 4
  store i32 %236, i32* %3, align 4
  br label %543

237:                                              ; preds = %229
  %238 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %239 = load i32, i32* @ed_bulkhead, align 4
  %240 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %238, i32 %239, i32 285212672)
  store i32 %240, i32* %7, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = load i32, i32* %7, align 4
  store i32 %244, i32* %3, align 4
  br label %543

245:                                              ; preds = %237
  %246 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %247 = load i32, i32* @hcca, align 4
  %248 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %246, i32 %247, i32 0)
  store i32 %248, i32* %7, align 4
  %249 = load i32, i32* %7, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %245
  %252 = load i32, i32* %7, align 4
  store i32 %252, i32* %3, align 4
  br label %543

253:                                              ; preds = %245
  %254 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %255 = load i32, i32* %13, align 4
  %256 = call i32 @ftdi_read_pcimem(%struct.usb_ftdi* %254, i32 %255, i32* %13)
  store i32 %256, i32* %7, align 4
  %257 = load i32, i32* %7, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %253
  %260 = load i32, i32* %7, align 4
  store i32 %260, i32* %3, align 4
  br label %543

261:                                              ; preds = %253
  %262 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %263 = load i32, i32* %13, align 4
  %264 = load i32, i32* %13, align 4
  %265 = load i32, i32* @FIT, align 4
  %266 = and i32 %264, %265
  %267 = load i32, i32* @FIT, align 4
  %268 = xor i32 %266, %267
  %269 = load i32, i32* %14, align 4
  %270 = or i32 %268, %269
  %271 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %262, i32 %263, i32 %270)
  store i32 %271, i32* %7, align 4
  %272 = load i32, i32* %7, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %261
  %275 = load i32, i32* %7, align 4
  store i32 %275, i32* %3, align 4
  br label %543

276:                                              ; preds = %261
  %277 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %278 = load i32, i32* %15, align 4
  %279 = load i32, i32* %14, align 4
  %280 = mul nsw i32 9, %279
  %281 = sdiv i32 %280, 10
  %282 = and i32 %281, 16383
  %283 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %277, i32 %278, i32 %282)
  store i32 %283, i32* %7, align 4
  %284 = load i32, i32* %7, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %276
  %287 = load i32, i32* %7, align 4
  store i32 %287, i32* %3, align 4
  br label %543

288:                                              ; preds = %276
  %289 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %290 = load i32, i32* %13, align 4
  %291 = call i32 @ftdi_read_pcimem(%struct.usb_ftdi* %289, i32 %290, i32* %13)
  store i32 %291, i32* %7, align 4
  %292 = load i32, i32* %7, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %288
  %295 = load i32, i32* %7, align 4
  store i32 %295, i32* %3, align 4
  br label %543

296:                                              ; preds = %288
  %297 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %298 = load i32, i32* %15, align 4
  %299 = call i32 @ftdi_read_pcimem(%struct.usb_ftdi* %297, i32 %298, i32* %15)
  store i32 %299, i32* %7, align 4
  %300 = load i32, i32* %7, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %296
  %303 = load i32, i32* %7, align 4
  store i32 %303, i32* %3, align 4
  br label %543

304:                                              ; preds = %296
  %305 = load i32, i32* %13, align 4
  %306 = and i32 %305, 1073676288
  %307 = icmp eq i32 0, %306
  br i1 %307, label %311, label %308

308:                                              ; preds = %304
  %309 = load i32, i32* %15, align 4
  %310 = icmp eq i32 0, %309
  br i1 %310, label %311, label %329

311:                                              ; preds = %308, %304
  %312 = load i32, i32* %5, align 4
  %313 = load i32, i32* @OHCI_QUIRK_INITRESET, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %320, label %316

316:                                              ; preds = %311
  %317 = load i32, i32* @OHCI_QUIRK_INITRESET, align 4
  %318 = load i32, i32* %5, align 4
  %319 = or i32 %318, %317
  store i32 %319, i32* %5, align 4
  br label %161

320:                                              ; preds = %311
  %321 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %322 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %321, i32 0, i32 0
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 0
  %325 = load i32, i32* %13, align 4
  %326 = load i32, i32* %15, align 4
  %327 = call i32 (i32*, i8*, ...) @dev_err(i32* %324, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %325, i32 %326)
  br label %328

328:                                              ; preds = %320
  br label %329

329:                                              ; preds = %328, %308
  %330 = load i32, i32* @OHCI_CTRL_RWC, align 4
  %331 = load i32, i32* %8, align 4
  %332 = and i32 %331, %330
  store i32 %332, i32* %8, align 4
  %333 = load i32, i32* @OHCI_CONTROL_INIT, align 4
  %334 = load i32, i32* @OHCI_CTRL_BLE, align 4
  %335 = or i32 %333, %334
  %336 = or i32 %335, 130
  %337 = load i32, i32* %8, align 4
  %338 = or i32 %337, %336
  store i32 %338, i32* %8, align 4
  %339 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %340 = load i32, i32* %10, align 4
  %341 = load i32, i32* %8, align 4
  %342 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %339, i32 %340, i32 %341)
  store i32 %342, i32* %7, align 4
  %343 = load i32, i32* %7, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %329
  %346 = load i32, i32* %7, align 4
  store i32 %346, i32* %3, align 4
  br label %543

347:                                              ; preds = %329
  %348 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %349 = load i32, i32* %16, align 4
  %350 = load i32, i32* @OHCI_BLF, align 4
  %351 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %348, i32 %349, i32 %350)
  store i32 %351, i32* %7, align 4
  %352 = load i32, i32* %7, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %347
  %355 = load i32, i32* %7, align 4
  store i32 %355, i32* %3, align 4
  br label %543

356:                                              ; preds = %347
  %357 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %358 = load i32, i32* %16, align 4
  %359 = call i32 @ftdi_read_pcimem(%struct.usb_ftdi* %357, i32 %358, i32* %16)
  store i32 %359, i32* %7, align 4
  %360 = load i32, i32* %7, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %356
  %363 = load i32, i32* %7, align 4
  store i32 %363, i32* %3, align 4
  br label %543

364:                                              ; preds = %356
  %365 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %366 = load i32, i32* %10, align 4
  %367 = call i32 @ftdi_read_pcimem(%struct.usb_ftdi* %365, i32 %366, i32* %10)
  store i32 %367, i32* %7, align 4
  %368 = load i32, i32* %7, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %364
  %371 = load i32, i32* %7, align 4
  store i32 %371, i32* %3, align 4
  br label %543

372:                                              ; preds = %364
  %373 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %374 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @roothub, i32 0, i32 2), align 8
  %375 = load i32, i32* @RH_HS_DRWE, align 4
  %376 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %373, i32 %374, i32 %375)
  store i32 %376, i32* %7, align 4
  %377 = load i32, i32* %7, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %372
  %380 = load i32, i32* %7, align 4
  store i32 %380, i32* %3, align 4
  br label %543

381:                                              ; preds = %372
  %382 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %383 = load i32, i32* @intrstatus, align 4
  %384 = load i32, i32* %18, align 4
  %385 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %382, i32 %383, i32 %384)
  store i32 %385, i32* %7, align 4
  %386 = load i32, i32* %7, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %381
  %389 = load i32, i32* %7, align 4
  store i32 %389, i32* %3, align 4
  br label %543

390:                                              ; preds = %381
  %391 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %392 = load i32, i32* @intrdisable, align 4
  %393 = load i32, i32* @OHCI_INTR_MIE, align 4
  %394 = load i32, i32* @OHCI_INTR_OC, align 4
  %395 = or i32 %393, %394
  %396 = load i32, i32* @OHCI_INTR_RHSC, align 4
  %397 = or i32 %395, %396
  %398 = load i32, i32* @OHCI_INTR_FNO, align 4
  %399 = or i32 %397, %398
  %400 = load i32, i32* @OHCI_INTR_UE, align 4
  %401 = or i32 %399, %400
  %402 = load i32, i32* @OHCI_INTR_RD, align 4
  %403 = or i32 %401, %402
  %404 = load i32, i32* @OHCI_INTR_SF, align 4
  %405 = or i32 %403, %404
  %406 = load i32, i32* @OHCI_INTR_WDH, align 4
  %407 = or i32 %405, %406
  %408 = load i32, i32* @OHCI_INTR_SO, align 4
  %409 = or i32 %407, %408
  %410 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %391, i32 %392, i32 %409)
  store i32 %410, i32* %7, align 4
  %411 = load i32, i32* %7, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %415

413:                                              ; preds = %390
  %414 = load i32, i32* %7, align 4
  store i32 %414, i32* %3, align 4
  br label %543

415:                                              ; preds = %390
  %416 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %417 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @roothub, i32 0, i32 0), align 8
  %418 = call i32 @ftdi_read_pcimem(%struct.usb_ftdi* %416, i32 %417, i32* %17)
  store i32 %418, i32* %7, align 4
  %419 = load i32, i32* %7, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %423

421:                                              ; preds = %415
  %422 = load i32, i32* %7, align 4
  store i32 %422, i32* %3, align 4
  br label %543

423:                                              ; preds = %415
  %424 = load i32, i32* @RH_A_PSM, align 4
  %425 = load i32, i32* @RH_A_OCPM, align 4
  %426 = or i32 %424, %425
  %427 = xor i32 %426, -1
  %428 = load i32, i32* %17, align 4
  %429 = and i32 %428, %427
  store i32 %429, i32* %17, align 4
  %430 = load i32, i32* %5, align 4
  %431 = load i32, i32* @OHCI_QUIRK_SUPERIO, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %453

434:                                              ; preds = %423
  %435 = load i32, i32* @RH_A_NOCP, align 4
  %436 = load i32, i32* %17, align 4
  %437 = or i32 %436, %435
  store i32 %437, i32* %17, align 4
  %438 = load i32, i32* @RH_A_POTPGT, align 4
  %439 = load i32, i32* @RH_A_NPS, align 4
  %440 = or i32 %438, %439
  %441 = xor i32 %440, -1
  %442 = load i32, i32* %17, align 4
  %443 = and i32 %442, %441
  store i32 %443, i32* %17, align 4
  %444 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %445 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @roothub, i32 0, i32 0), align 8
  %446 = load i32, i32* %17, align 4
  %447 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %444, i32 %445, i32 %446)
  store i32 %447, i32* %7, align 4
  %448 = load i32, i32* %7, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %452

450:                                              ; preds = %434
  %451 = load i32, i32* %7, align 4
  store i32 %451, i32* %3, align 4
  br label %543

452:                                              ; preds = %434
  br label %475

453:                                              ; preds = %423
  %454 = load i32, i32* %5, align 4
  %455 = load i32, i32* @OHCI_QUIRK_AMD756, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %461, label %458

458:                                              ; preds = %453
  %459 = load i64, i64* @distrust_firmware, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %474

461:                                              ; preds = %458, %453
  %462 = load i32, i32* @RH_A_NPS, align 4
  %463 = load i32, i32* %17, align 4
  %464 = or i32 %463, %462
  store i32 %464, i32* %17, align 4
  %465 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %466 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @roothub, i32 0, i32 0), align 8
  %467 = load i32, i32* %17, align 4
  %468 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %465, i32 %466, i32 %467)
  store i32 %468, i32* %7, align 4
  %469 = load i32, i32* %7, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %473

471:                                              ; preds = %461
  %472 = load i32, i32* %7, align 4
  store i32 %472, i32* %3, align 4
  br label %543

473:                                              ; preds = %461
  br label %474

474:                                              ; preds = %473, %458
  br label %475

475:                                              ; preds = %474, %452
  %476 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %477 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @roothub, i32 0, i32 2), align 8
  %478 = load i32, i32* @RH_HS_LPSC, align 4
  %479 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %476, i32 %477, i32 %478)
  store i32 %479, i32* %7, align 4
  %480 = load i32, i32* %7, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %484

482:                                              ; preds = %475
  %483 = load i32, i32* %7, align 4
  store i32 %483, i32* %3, align 4
  br label %543

484:                                              ; preds = %475
  %485 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %486 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @roothub, i32 0, i32 3), align 4
  %487 = load i32, i32* %17, align 4
  %488 = load i32, i32* @RH_A_NPS, align 4
  %489 = and i32 %487, %488
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %492

491:                                              ; preds = %484
  br label %494

492:                                              ; preds = %484
  %493 = load i32, i32* @RH_B_PPCM, align 4
  br label %494

494:                                              ; preds = %492, %491
  %495 = phi i32 [ 0, %491 ], [ %493, %492 ]
  %496 = call i32 @ftdi_write_pcimem(%struct.usb_ftdi* %485, i32 %486, i32 %495)
  store i32 %496, i32* %7, align 4
  %497 = load i32, i32* %7, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %501

499:                                              ; preds = %494
  %500 = load i32, i32* %7, align 4
  store i32 %500, i32* %3, align 4
  br label %543

501:                                              ; preds = %494
  %502 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %503 = load i32, i32* %10, align 4
  %504 = call i32 @ftdi_read_pcimem(%struct.usb_ftdi* %502, i32 %503, i32* %10)
  store i32 %504, i32* %7, align 4
  %505 = load i32, i32* %7, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %509

507:                                              ; preds = %501
  %508 = load i32, i32* %7, align 4
  store i32 %508, i32* %3, align 4
  br label %543

509:                                              ; preds = %501
  %510 = load i32, i32* %17, align 4
  %511 = ashr i32 %510, 23
  %512 = and i32 %511, 510
  %513 = call i32 @mdelay(i32 %512)
  store i32 0, i32* %21, align 4
  br label %514

514:                                              ; preds = %538, %509
  %515 = load i32, i32* %21, align 4
  %516 = load i32, i32* %9, align 4
  %517 = icmp slt i32 %515, %516
  br i1 %517, label %518, label %541

518:                                              ; preds = %514
  %519 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %520 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @roothub, i32 0, i32 1), align 8
  %521 = load i32, i32* %21, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i32, i32* %520, i64 %522
  %524 = load i32, i32* %523, align 4
  %525 = call i32 @ftdi_read_pcimem(%struct.usb_ftdi* %519, i32 %524, i32* %22)
  store i32 %525, i32* %7, align 4
  %526 = load i32, i32* %7, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %530

528:                                              ; preds = %518
  %529 = load i32, i32* %7, align 4
  store i32 %529, i32* %3, align 4
  br label %543

530:                                              ; preds = %518
  %531 = load i32, i32* %22, align 4
  %532 = and i32 1, %531
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %537

534:                                              ; preds = %530
  %535 = load i32, i32* %6, align 4
  %536 = add nsw i32 %535, 1
  store i32 %536, i32* %6, align 4
  br label %537

537:                                              ; preds = %534, %530
  br label %538

538:                                              ; preds = %537
  %539 = load i32, i32* %21, align 4
  %540 = add nsw i32 %539, 1
  store i32 %540, i32* %21, align 4
  br label %514

541:                                              ; preds = %514
  %542 = load i32, i32* %6, align 4
  store i32 %542, i32* %3, align 4
  br label %543

543:                                              ; preds = %541, %528, %507, %499, %482, %471, %450, %421, %413, %388, %379, %370, %362, %354, %345, %302, %294, %286, %274, %259, %251, %243, %235, %226, %218, %196, %185, %176, %167, %158, %145, %122, %112, %104, %77, %57, %46, %38, %30
  %544 = load i32, i32* %3, align 4
  ret i32 %544
}

declare dso_local i32 @ftdi_write_pcimem(%struct.usb_ftdi*, i32, i32) #1

declare dso_local i32 @ftdi_read_pcimem(%struct.usb_ftdi*, i32, i32*) #1

declare dso_local i32 @FSMP(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
