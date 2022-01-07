; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_devstate_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_omap_udc.c_devstate_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_udc = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__*, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)*, %struct.TYPE_6__, i32 (%struct.TYPE_8__*)* }
%struct.TYPE_6__ = type { i32 }

@UDC_DEVSTAT = common dso_local global i32 0, align 4
@UDC_USB_RESET = common dso_local global i32 0, align 4
@UDC_ATT = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"connect\0A\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"disconnect, gadget %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"RESET=1\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"USB reset done, gadget %s\0A\00", align 1
@UDC_DS_CHG_IE = common dso_local global i32 0, align 4
@UDC_EP0_IE = common dso_local global i32 0, align 4
@UDC_IRQ_EN = common dso_local global i32 0, align 4
@UDC_SUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"suspend\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"resume\0A\00", align 1
@OTG_FLAGS = common dso_local global i32 0, align 4
@UDC_CFG = common dso_local global i32 0, align 4
@UDC_DEF = common dso_local global i32 0, align 4
@UDC_ADD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"devstat %03x, ignore change %03x\0A\00", align 1
@UDC_DS_CHG = common dso_local global i32 0, align 4
@UDC_IRQ_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_udc*, i32)* @devstate_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devstate_irq(%struct.omap_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_udc* %0, %struct.omap_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @UDC_DEVSTAT, align 4
  %8 = call i32 @omap_readw(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %11 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = xor i32 %9, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %16 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @UDC_USB_RESET, align 4
  %19 = load i32, i32* @UDC_ATT, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %139

23:                                               ; preds = %2
  %24 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %25 = call i32 @udc_quiesce(%struct.omap_udc* %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @UDC_ATT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %104

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @UDC_ATT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load i64, i64* @USB_SPEED_FULL, align 8
  %37 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %38 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = call i32 (i8*, ...) @VDBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %42 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %35
  %46 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %47 = call i32 @pullup_enable(%struct.omap_udc* %46)
  br label %48

48:                                               ; preds = %45, %35
  br label %99

49:                                               ; preds = %30
  %50 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %51 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %98

56:                                               ; preds = %49
  %57 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %58 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %59 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %62 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  %66 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %67 = call i32 @pullup_disable(%struct.omap_udc* %66)
  br label %68

68:                                               ; preds = %65, %56
  %69 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %70 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %69, i32 0, i32 3
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %77 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %76, i32 0, i32 3
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %79, align 8
  %81 = icmp ne i32 (%struct.TYPE_8__*)* %80, null
  br i1 %81, label %82, label %97

82:                                               ; preds = %68
  %83 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %84 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %83, i32 0, i32 1
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %87 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %86, i32 0, i32 3
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  %90 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %89, align 8
  %91 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %92 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %91, i32 0, i32 2
  %93 = call i32 %90(%struct.TYPE_8__* %92)
  %94 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %95 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %94, i32 0, i32 1
  %96 = call i32 @spin_lock(i32* %95)
  br label %97

97:                                               ; preds = %82, %68
  br label %98

98:                                               ; preds = %97, %49
  br label %99

99:                                               ; preds = %98, %48
  %100 = load i32, i32* @UDC_ATT, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %99, %23
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @UDC_USB_RESET, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %138

109:                                              ; preds = %104
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @UDC_USB_RESET, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i32 (i8*, ...) @VDBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %133

116:                                              ; preds = %109
  %117 = load i64, i64* @USB_SPEED_FULL, align 8
  %118 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %119 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store i64 %117, i64* %120, align 8
  %121 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %122 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %121, i32 0, i32 3
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @INFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @UDC_DS_CHG_IE, align 4
  %129 = load i32, i32* @UDC_EP0_IE, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @UDC_IRQ_EN, align 4
  %132 = call i32 @omap_writew(i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %116, %114
  %134 = load i32, i32* @UDC_USB_RESET, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %6, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %133, %104
  br label %139

139:                                              ; preds = %138, %2
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @UDC_SUS, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %246

144:                                              ; preds = %139
  %145 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %146 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %241

151:                                              ; preds = %144
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @UDC_SUS, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %199

156:                                              ; preds = %151
  %157 = call i32 (i8*, ...) @VDBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %158 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %159 = call i32 @update_otg(%struct.omap_udc* %158)
  %160 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %161 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @USB_SPEED_FULL, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %188

166:                                              ; preds = %156
  %167 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %168 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %167, i32 0, i32 3
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %170, align 8
  %172 = icmp ne i32 (%struct.TYPE_8__*)* %171, null
  br i1 %172, label %173, label %188

173:                                              ; preds = %166
  %174 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %175 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %174, i32 0, i32 1
  %176 = call i32 @spin_unlock(i32* %175)
  %177 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %178 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %177, i32 0, i32 3
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %180, align 8
  %182 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %183 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %182, i32 0, i32 2
  %184 = call i32 %181(%struct.TYPE_8__* %183)
  %185 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %186 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %185, i32 0, i32 1
  %187 = call i32 @spin_lock(i32* %186)
  br label %188

188:                                              ; preds = %173, %166, %156
  %189 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %190 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %195 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @otg_set_suspend(i64 %196, i32 1)
  br label %198

198:                                              ; preds = %193, %188
  br label %240

199:                                              ; preds = %151
  %200 = call i32 (i8*, ...) @VDBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %201 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %202 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %199
  %206 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %207 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @otg_set_suspend(i64 %208, i32 0)
  br label %210

210:                                              ; preds = %205, %199
  %211 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %212 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @USB_SPEED_FULL, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %239

217:                                              ; preds = %210
  %218 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %219 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %218, i32 0, i32 3
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %221, align 8
  %223 = icmp ne i32 (%struct.TYPE_8__*)* %222, null
  br i1 %223, label %224, label %239

224:                                              ; preds = %217
  %225 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %226 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %225, i32 0, i32 1
  %227 = call i32 @spin_unlock(i32* %226)
  %228 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %229 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %228, i32 0, i32 3
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %231, align 8
  %233 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %234 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %233, i32 0, i32 2
  %235 = call i32 %232(%struct.TYPE_8__* %234)
  %236 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %237 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %236, i32 0, i32 1
  %238 = call i32 @spin_lock(i32* %237)
  br label %239

239:                                              ; preds = %224, %217, %210
  br label %240

240:                                              ; preds = %239, %198
  br label %241

241:                                              ; preds = %240, %144
  %242 = load i32, i32* @UDC_SUS, align 4
  %243 = xor i32 %242, -1
  %244 = load i32, i32* %6, align 4
  %245 = and i32 %244, %243
  store i32 %245, i32* %6, align 4
  br label %246

246:                                              ; preds = %241, %139
  %247 = call i32 (...) @cpu_is_omap15xx()
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %261, label %249

249:                                              ; preds = %246
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* @OTG_FLAGS, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %249
  %255 = load %struct.omap_udc*, %struct.omap_udc** %3, align 8
  %256 = call i32 @update_otg(%struct.omap_udc* %255)
  %257 = load i32, i32* @OTG_FLAGS, align 4
  %258 = xor i32 %257, -1
  %259 = load i32, i32* %6, align 4
  %260 = and i32 %259, %258
  store i32 %260, i32* %6, align 4
  br label %261

261:                                              ; preds = %254, %249, %246
  %262 = load i32, i32* @UDC_CFG, align 4
  %263 = load i32, i32* @UDC_DEF, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* @UDC_ADD, align 4
  %266 = or i32 %264, %265
  %267 = xor i32 %266, -1
  %268 = load i32, i32* %6, align 4
  %269 = and i32 %268, %267
  store i32 %269, i32* %6, align 4
  %270 = load i32, i32* %6, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %261
  %273 = load i32, i32* %5, align 4
  %274 = load i32, i32* %6, align 4
  %275 = call i32 (i8*, ...) @VDBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %273, i32 %274)
  br label %276

276:                                              ; preds = %272, %261
  %277 = load i32, i32* @UDC_DS_CHG, align 4
  %278 = load i32, i32* @UDC_IRQ_SRC, align 4
  %279 = call i32 @omap_writew(i32 %277, i32 %278)
  ret void
}

declare dso_local i32 @omap_readw(i32) #1

declare dso_local i32 @udc_quiesce(%struct.omap_udc*) #1

declare dso_local i32 @VDBG(i8*, ...) #1

declare dso_local i32 @pullup_enable(%struct.omap_udc*) #1

declare dso_local i32 @pullup_disable(%struct.omap_udc*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @INFO(i8*, i32) #1

declare dso_local i32 @omap_writew(i32, i32) #1

declare dso_local i32 @update_otg(%struct.omap_udc*) #1

declare dso_local i32 @otg_set_suspend(i64, i32) #1

declare dso_local i32 @cpu_is_omap15xx(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
