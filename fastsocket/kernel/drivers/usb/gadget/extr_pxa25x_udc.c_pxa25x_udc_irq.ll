; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_pxa25x_udc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa25x_udc.c_pxa25x_udc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa25x_udc = type { %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)* }

@UDCCR = common dso_local global i32 0, align 4
@UDCCR_SUSIR = common dso_local global i32 0, align 4
@DBG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"USB suspend%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"+disconnect\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@UDCCR_RESIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"USB resume\0A\00", align 1
@UDCCR_RSTIR = common dso_local global i32 0, align 4
@UDCCR_UDA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"USB reset start\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"USB reset end\0A\00", align 1
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@USIR0 = common dso_local global i32 0, align 4
@UICR0 = common dso_local global i32 0, align 4
@USIR1 = common dso_local global i32 0, align 4
@UICR1 = common dso_local global i32 0, align 4
@DBG_VERY_NOISY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"irq %02x.%02x\0A\00", align 1
@USIR0_IR0 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pxa25x_udc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa25x_udc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pxa25x_udc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.pxa25x_udc*
  store %struct.pxa25x_udc* %13, %struct.pxa25x_udc** %5, align 8
  %14 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %15 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  br label %19

19:                                               ; preds = %237, %2
  %20 = load i32, i32* @UDCCR, align 4
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @UDCCR_SUSIR, align 4
  %23 = and i32 %21, %22
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %75

26:                                               ; preds = %19
  %27 = load i32, i32* @UDCCR_SUSIR, align 4
  %28 = call i32 @udc_ack_int_UDCCR(i32 %27)
  store i32 1, i32* %6, align 4
  %29 = load i32, i32* @DBG_VERBOSE, align 4
  %30 = call i64 (...) @is_vbus_present()
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 (i32, i8*, ...) @DBG(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = call i64 (...) @is_vbus_present()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %26
  %38 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %39 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %40 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %39, i32 0, i32 3
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = call i32 @stop_activity(%struct.pxa25x_udc* %38, %struct.TYPE_7__* %41)
  br label %72

43:                                               ; preds = %26
  %44 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %45 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %43
  %51 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %52 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %51, i32 0, i32 3
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = icmp ne %struct.TYPE_7__* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %57 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %56, i32 0, i32 3
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %59, align 8
  %61 = icmp ne i32 (%struct.TYPE_6__*)* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %64 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %63, i32 0, i32 3
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %66, align 8
  %68 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %69 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %68, i32 0, i32 2
  %70 = call i32 %67(%struct.TYPE_6__* %69)
  br label %71

71:                                               ; preds = %62, %55, %50, %43
  br label %72

72:                                               ; preds = %71, %37
  %73 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %74 = call i32 @ep0_idle(%struct.pxa25x_udc* %73)
  br label %75

75:                                               ; preds = %72, %19
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @UDCCR_RESIR, align 4
  %78 = and i32 %76, %77
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %117

81:                                               ; preds = %75
  %82 = load i32, i32* @UDCCR_RESIR, align 4
  %83 = call i32 @udc_ack_int_UDCCR(i32 %82)
  store i32 1, i32* %6, align 4
  %84 = load i32, i32* @DBG_VERBOSE, align 4
  %85 = call i32 (i32, i8*, ...) @DBG(i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %87 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %81
  %93 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %94 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %93, i32 0, i32 3
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = icmp ne %struct.TYPE_7__* %95, null
  br i1 %96, label %97, label %116

97:                                               ; preds = %92
  %98 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %99 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %98, i32 0, i32 3
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %101, align 8
  %103 = icmp ne i32 (%struct.TYPE_6__*)* %102, null
  br i1 %103, label %104, label %116

104:                                              ; preds = %97
  %105 = call i64 (...) @is_vbus_present()
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %109 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %108, i32 0, i32 3
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %111, align 8
  %113 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %114 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %113, i32 0, i32 2
  %115 = call i32 %112(%struct.TYPE_6__* %114)
  br label %116

116:                                              ; preds = %107, %104, %97, %92, %81
  br label %117

117:                                              ; preds = %116, %75
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @UDCCR_RSTIR, align 4
  %120 = and i32 %118, %119
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %149

123:                                              ; preds = %117
  %124 = load i32, i32* @UDCCR_RSTIR, align 4
  %125 = call i32 @udc_ack_int_UDCCR(i32 %124)
  store i32 1, i32* %6, align 4
  %126 = load i32, i32* @UDCCR, align 4
  %127 = load i32, i32* @UDCCR_UDA, align 4
  %128 = and i32 %126, %127
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %123
  %131 = load i32, i32* @DBG_VERBOSE, align 4
  %132 = call i32 (i32, i8*, ...) @DBG(i32 %131, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %133 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %134 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %135 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %134, i32 0, i32 3
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = call i32 @stop_activity(%struct.pxa25x_udc* %133, %struct.TYPE_7__* %136)
  br label %148

138:                                              ; preds = %123
  %139 = load i32, i32* @DBG_VERBOSE, align 4
  %140 = call i32 (i32, i8*, ...) @DBG(i32 %139, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %141 = load i64, i64* @USB_SPEED_FULL, align 8
  %142 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %143 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store i64 %141, i64* %144, align 8
  %145 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %146 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %145, i32 0, i32 1
  %147 = call i32 @memset(%struct.TYPE_8__* %146, i32 0, i32 4)
  br label %148

148:                                              ; preds = %138, %130
  br label %236

149:                                              ; preds = %117
  %150 = load i32, i32* @USIR0, align 4
  %151 = load i32, i32* @UICR0, align 4
  %152 = xor i32 %151, -1
  %153 = and i32 %150, %152
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* @USIR1, align 4
  %155 = load i32, i32* @UICR1, align 4
  %156 = xor i32 %155, -1
  %157 = and i32 %154, %156
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %149
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  br label %164

164:                                              ; preds = %160, %149
  %165 = phi i1 [ false, %149 ], [ %163, %160 ]
  %166 = zext i1 %165 to i32
  %167 = call i64 @unlikely(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %237

170:                                              ; preds = %164
  %171 = load i32, i32* @DBG_VERY_NOISY, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %8, align 4
  %174 = call i32 (i32, i8*, ...) @DBG(i32 %171, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %172, i32 %173)
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @USIR0_IR0, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %170
  %180 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %181 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %180, i32 0, i32 0
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  %187 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %188 = call i32 @handle_ep0(%struct.pxa25x_udc* %187)
  store i32 1, i32* %6, align 4
  br label %189

189:                                              ; preds = %179, %170
  store i32 0, i32* %10, align 4
  br label %190

190:                                              ; preds = %232, %189
  %191 = load i32, i32* %10, align 4
  %192 = icmp slt i32 %191, 8
  br i1 %192, label %193, label %235

193:                                              ; preds = %190
  %194 = load i32, i32* %10, align 4
  %195 = shl i32 1, %194
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %214

198:                                              ; preds = %193
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %11, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %198
  %204 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %205 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %204, i32 0, i32 0
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %205, align 8
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i64 %208
  %210 = call i32 @handle_ep(%struct.TYPE_9__* %209)
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @USIR0, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* @USIR0, align 4
  store i32 1, i32* %6, align 4
  br label %214

214:                                              ; preds = %203, %198, %193
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* %11, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %214
  %220 = load %struct.pxa25x_udc*, %struct.pxa25x_udc** %5, align 8
  %221 = getelementptr inbounds %struct.pxa25x_udc, %struct.pxa25x_udc* %220, i32 0, i32 0
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %223, 8
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i64 %225
  %227 = call i32 @handle_ep(%struct.TYPE_9__* %226)
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* @USIR1, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* @USIR1, align 4
  store i32 1, i32* %6, align 4
  br label %231

231:                                              ; preds = %219, %214
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %10, align 4
  br label %190

235:                                              ; preds = %190
  br label %236

236:                                              ; preds = %235, %148
  br label %237

237:                                              ; preds = %236, %169
  %238 = load i32, i32* %6, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %19, label %240

240:                                              ; preds = %237
  %241 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %241
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @udc_ack_int_UDCCR(i32) #1

declare dso_local i32 @DBG(i32, i8*, ...) #1

declare dso_local i64 @is_vbus_present(...) #1

declare dso_local i32 @stop_activity(%struct.pxa25x_udc*, %struct.TYPE_7__*) #1

declare dso_local i32 @ep0_idle(%struct.pxa25x_udc*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @handle_ep0(%struct.pxa25x_udc*) #1

declare dso_local i32 @handle_ep(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
