; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_usba_udc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_usba_udc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_ep = type { i32, i32* }
%struct.usba_udc = type { i32, %struct.TYPE_7__*, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)* }

@INT_STA = common dso_local global i32 0, align 4
@DBG_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"irq, status=%#08x\0A\00", align 1
@USBA_DET_SUSPEND = common dso_local global i32 0, align 4
@INT_CLR = common dso_local global i32 0, align 4
@DBG_BUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Suspend detected\0A\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@USBA_WAKE_UP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Wake Up CPU detected\0A\00", align 1
@USBA_END_OF_RESUME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Resume detected\0A\00", align 1
@DMA_INT = common dso_local global i32 0, align 4
@USBA_NR_ENDPOINTS = common dso_local global i32 0, align 4
@usba_ep = common dso_local global %struct.usba_ep* null, align 8
@EPT_INT = common dso_local global i32 0, align 4
@USBA_END_OF_RESET = common dso_local global i32 0, align 4
@USBA_HIGH_SPEED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"High-speed bus reset detected\0A\00", align 1
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Full-speed bus reset detected\0A\00", align 1
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@usba_ep0_desc = common dso_local global i32 0, align 4
@WAIT_FOR_SETUP = common dso_local global i32 0, align 4
@CFG = common dso_local global i32 0, align 4
@EPT_SIZE = common dso_local global i32 0, align 4
@EP0_EPT_SIZE = common dso_local global i32 0, align 4
@EPT_TYPE = common dso_local global i32 0, align 4
@USBA_EPT_TYPE_CONTROL = common dso_local global i32 0, align 4
@BK_NUMBER = common dso_local global i32 0, align 4
@USBA_BK_NUMBER_ONE = common dso_local global i32 0, align 4
@CTL_ENB = common dso_local global i32 0, align 4
@USBA_EPT_ENABLE = common dso_local global i32 0, align 4
@USBA_RX_SETUP = common dso_local global i32 0, align 4
@INT_ENB = common dso_local global i32 0, align 4
@USBA_EPT_MAPPED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"ODD: EP0 configuration is invalid!\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @usba_udc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usba_udc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usba_udc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usba_ep*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.usba_udc*
  store %struct.usba_udc* %13, %struct.usba_udc** %5, align 8
  %14 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %15 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %18 = load i32, i32* @INT_STA, align 4
  %19 = call i32 @usba_readl(%struct.usba_udc* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @DBG_INT, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i32, i8*, ...) @DBG(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @USBA_DET_SUSPEND, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %69

27:                                               ; preds = %2
  %28 = call i32 @toggle_bias(i32 0)
  %29 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %30 = load i32, i32* @INT_CLR, align 4
  %31 = load i32, i32* @USBA_DET_SUSPEND, align 4
  %32 = call i32 @usba_writel(%struct.usba_udc* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @DBG_BUS, align 4
  %34 = call i32 (i32, i8*, ...) @DBG(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %36 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %27
  %42 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %43 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %42, i32 0, i32 3
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %68

46:                                               ; preds = %41
  %47 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %48 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %50, align 8
  %52 = icmp ne i32 (%struct.TYPE_8__*)* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %55 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %58 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %57, i32 0, i32 3
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %60, align 8
  %62 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %63 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %62, i32 0, i32 2
  %64 = call i32 %61(%struct.TYPE_8__* %63)
  %65 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %66 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %65, i32 0, i32 0
  %67 = call i32 @spin_lock(i32* %66)
  br label %68

68:                                               ; preds = %53, %46, %41, %27
  br label %69

69:                                               ; preds = %68, %2
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @USBA_WAKE_UP, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = call i32 @toggle_bias(i32 1)
  %76 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %77 = load i32, i32* @INT_CLR, align 4
  %78 = load i32, i32* @USBA_WAKE_UP, align 4
  %79 = call i32 @usba_writel(%struct.usba_udc* %76, i32 %77, i32 %78)
  %80 = load i32, i32* @DBG_BUS, align 4
  %81 = call i32 (i32, i8*, ...) @DBG(i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %74, %69
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @USBA_END_OF_RESUME, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %128

87:                                               ; preds = %82
  %88 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %89 = load i32, i32* @INT_CLR, align 4
  %90 = load i32, i32* @USBA_END_OF_RESUME, align 4
  %91 = call i32 @usba_writel(%struct.usba_udc* %88, i32 %89, i32 %90)
  %92 = load i32, i32* @DBG_BUS, align 4
  %93 = call i32 (i32, i8*, ...) @DBG(i32 %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %95 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %127

100:                                              ; preds = %87
  %101 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %102 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %101, i32 0, i32 3
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = icmp ne %struct.TYPE_6__* %103, null
  br i1 %104, label %105, label %127

105:                                              ; preds = %100
  %106 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %107 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %106, i32 0, i32 3
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %109, align 8
  %111 = icmp ne i32 (%struct.TYPE_8__*)* %110, null
  br i1 %111, label %112, label %127

112:                                              ; preds = %105
  %113 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %114 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %113, i32 0, i32 0
  %115 = call i32 @spin_unlock(i32* %114)
  %116 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %117 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %116, i32 0, i32 3
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %119, align 8
  %121 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %122 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %121, i32 0, i32 2
  %123 = call i32 %120(%struct.TYPE_8__* %122)
  %124 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %125 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %124, i32 0, i32 0
  %126 = call i32 @spin_lock(i32* %125)
  br label %127

127:                                              ; preds = %112, %105, %100, %87
  br label %128

128:                                              ; preds = %127, %82
  %129 = load i32, i32* @DMA_INT, align 4
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @USBA_BFEXT(i32 %129, i32 %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %157

134:                                              ; preds = %128
  store i32 1, i32* %9, align 4
  br label %135

135:                                              ; preds = %153, %134
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @USBA_NR_ENDPOINTS, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %156

139:                                              ; preds = %135
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %9, align 4
  %142 = shl i32 1, %141
  %143 = and i32 %140, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %147 = load %struct.usba_ep*, %struct.usba_ep** @usba_ep, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %147, i64 %149
  %151 = call i32 @usba_dma_irq(%struct.usba_udc* %146, %struct.usba_ep* %150)
  br label %152

152:                                              ; preds = %145, %139
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %135

156:                                              ; preds = %135
  br label %157

157:                                              ; preds = %156, %128
  %158 = load i32, i32* @EPT_INT, align 4
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @USBA_BFEXT(i32 %158, i32 %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %201

163:                                              ; preds = %157
  store i32 0, i32* %10, align 4
  br label %164

164:                                              ; preds = %197, %163
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* @USBA_NR_ENDPOINTS, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %200

168:                                              ; preds = %164
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %10, align 4
  %171 = shl i32 1, %170
  %172 = and i32 %169, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %196

174:                                              ; preds = %168
  %175 = load %struct.usba_ep*, %struct.usba_ep** @usba_ep, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %175, i64 %177
  %179 = call i64 @ep_is_control(%struct.usba_ep* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %174
  %182 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %183 = load %struct.usba_ep*, %struct.usba_ep** @usba_ep, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %183, i64 %185
  %187 = call i32 @usba_control_irq(%struct.usba_udc* %182, %struct.usba_ep* %186)
  br label %195

188:                                              ; preds = %174
  %189 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %190 = load %struct.usba_ep*, %struct.usba_ep** @usba_ep, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %190, i64 %192
  %194 = call i32 @usba_ep_irq(%struct.usba_udc* %189, %struct.usba_ep* %193)
  br label %195

195:                                              ; preds = %188, %181
  br label %196

196:                                              ; preds = %195, %168
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %10, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %10, align 4
  br label %164

200:                                              ; preds = %164
  br label %201

201:                                              ; preds = %200, %157
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* @USBA_END_OF_RESET, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %318

206:                                              ; preds = %201
  %207 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %208 = load i32, i32* @INT_CLR, align 4
  %209 = load i32, i32* @USBA_END_OF_RESET, align 4
  %210 = call i32 @usba_writel(%struct.usba_udc* %207, i32 %208, i32 %209)
  %211 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %212 = call i32 @reset_all_endpoints(%struct.usba_udc* %211)
  %213 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %214 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %245

219:                                              ; preds = %206
  %220 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %221 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %220, i32 0, i32 3
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %223, align 8
  %225 = icmp ne i32 (%struct.TYPE_8__*)* %224, null
  br i1 %225, label %226, label %245

226:                                              ; preds = %219
  %227 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %228 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %229 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  store i64 %227, i64* %230, align 8
  %231 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %232 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %231, i32 0, i32 0
  %233 = call i32 @spin_unlock(i32* %232)
  %234 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %235 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %234, i32 0, i32 3
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %237, align 8
  %239 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %240 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %239, i32 0, i32 2
  %241 = call i32 %238(%struct.TYPE_8__* %240)
  %242 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %243 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %242, i32 0, i32 0
  %244 = call i32 @spin_lock(i32* %243)
  br label %245

245:                                              ; preds = %226, %219, %206
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* @USBA_HIGH_SPEED, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %245
  %251 = load i32, i32* @DBG_BUS, align 4
  %252 = call i32 (i32, i8*, ...) @DBG(i32 %251, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %253 = load i64, i64* @USB_SPEED_HIGH, align 8
  %254 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %255 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  store i64 %253, i64* %256, align 8
  br label %264

257:                                              ; preds = %245
  %258 = load i32, i32* @DBG_BUS, align 4
  %259 = call i32 (i32, i8*, ...) @DBG(i32 %258, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %260 = load i64, i64* @USB_SPEED_FULL, align 8
  %261 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %262 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  store i64 %260, i64* %263, align 8
  br label %264

264:                                              ; preds = %257, %250
  %265 = load %struct.usba_ep*, %struct.usba_ep** @usba_ep, align 8
  %266 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %265, i64 0
  store %struct.usba_ep* %266, %struct.usba_ep** %11, align 8
  %267 = load %struct.usba_ep*, %struct.usba_ep** %11, align 8
  %268 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %267, i32 0, i32 1
  store i32* @usba_ep0_desc, i32** %268, align 8
  %269 = load i32, i32* @WAIT_FOR_SETUP, align 4
  %270 = load %struct.usba_ep*, %struct.usba_ep** %11, align 8
  %271 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 8
  %272 = load %struct.usba_ep*, %struct.usba_ep** %11, align 8
  %273 = load i32, i32* @CFG, align 4
  %274 = load i32, i32* @EPT_SIZE, align 4
  %275 = load i32, i32* @EP0_EPT_SIZE, align 4
  %276 = call i32 @USBA_BF(i32 %274, i32 %275)
  %277 = load i32, i32* @EPT_TYPE, align 4
  %278 = load i32, i32* @USBA_EPT_TYPE_CONTROL, align 4
  %279 = call i32 @USBA_BF(i32 %277, i32 %278)
  %280 = or i32 %276, %279
  %281 = load i32, i32* @BK_NUMBER, align 4
  %282 = load i32, i32* @USBA_BK_NUMBER_ONE, align 4
  %283 = call i32 @USBA_BF(i32 %281, i32 %282)
  %284 = or i32 %280, %283
  %285 = call i32 @usba_ep_writel(%struct.usba_ep* %272, i32 %273, i32 %284)
  %286 = load %struct.usba_ep*, %struct.usba_ep** %11, align 8
  %287 = load i32, i32* @CTL_ENB, align 4
  %288 = load i32, i32* @USBA_EPT_ENABLE, align 4
  %289 = load i32, i32* @USBA_RX_SETUP, align 4
  %290 = or i32 %288, %289
  %291 = call i32 @usba_ep_writel(%struct.usba_ep* %286, i32 %287, i32 %290)
  %292 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %293 = load i32, i32* @INT_ENB, align 4
  %294 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %295 = load i32, i32* @INT_ENB, align 4
  %296 = call i32 @usba_readl(%struct.usba_udc* %294, i32 %295)
  %297 = load i32, i32* @EPT_INT, align 4
  %298 = call i32 @USBA_BF(i32 %297, i32 1)
  %299 = or i32 %296, %298
  %300 = load i32, i32* @USBA_DET_SUSPEND, align 4
  %301 = or i32 %299, %300
  %302 = load i32, i32* @USBA_END_OF_RESUME, align 4
  %303 = or i32 %301, %302
  %304 = call i32 @usba_writel(%struct.usba_udc* %292, i32 %293, i32 %303)
  %305 = load %struct.usba_ep*, %struct.usba_ep** %11, align 8
  %306 = load i32, i32* @CFG, align 4
  %307 = call i32 @usba_ep_readl(%struct.usba_ep* %305, i32 %306)
  %308 = load i32, i32* @USBA_EPT_MAPPED, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %317, label %311

311:                                              ; preds = %264
  %312 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %313 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %312, i32 0, i32 1
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 0
  %316 = call i32 @dev_dbg(i32* %315, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %317

317:                                              ; preds = %311, %264
  br label %318

318:                                              ; preds = %317, %201
  %319 = load %struct.usba_udc*, %struct.usba_udc** %5, align 8
  %320 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %319, i32 0, i32 0
  %321 = call i32 @spin_unlock(i32* %320)
  %322 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %322
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @usba_readl(%struct.usba_udc*, i32) #1

declare dso_local i32 @DBG(i32, i8*, ...) #1

declare dso_local i32 @toggle_bias(i32) #1

declare dso_local i32 @usba_writel(%struct.usba_udc*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @USBA_BFEXT(i32, i32) #1

declare dso_local i32 @usba_dma_irq(%struct.usba_udc*, %struct.usba_ep*) #1

declare dso_local i64 @ep_is_control(%struct.usba_ep*) #1

declare dso_local i32 @usba_control_irq(%struct.usba_udc*, %struct.usba_ep*) #1

declare dso_local i32 @usba_ep_irq(%struct.usba_udc*, %struct.usba_ep*) #1

declare dso_local i32 @reset_all_endpoints(%struct.usba_udc*) #1

declare dso_local i32 @usba_ep_writel(%struct.usba_ep*, i32, i32) #1

declare dso_local i32 @USBA_BF(i32, i32) #1

declare dso_local i32 @usba_ep_readl(%struct.usba_ep*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
