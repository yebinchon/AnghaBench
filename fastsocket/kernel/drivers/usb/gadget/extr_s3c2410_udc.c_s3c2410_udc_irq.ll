; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c2410_udc.c_s3c2410_udc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c2410_udc.c_s3c2410_udc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_udc = type { i32, %struct.TYPE_9__*, i8*, %struct.TYPE_8__, %struct.TYPE_7__*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)* }

@S3C2410_UDC_USB_INT_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_EP_INT_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_INDEX_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_PWR_REG = common dso_local global i32 0, align 4
@base_addr = common dso_local global i32 0, align 4
@S3C2410_UDC_INDEX_EP0 = common dso_local global i32 0, align 4
@S3C2410_UDC_IN_CSR1_REG = common dso_local global i32 0, align 4
@DEBUG_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"usbs=%02x, usbds=%02x, pwr=%02x ep0csr=%02x\0A\00", align 1
@S3C2410_UDC_USBINT_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"USB reset csr %x pwr %x\0A\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@S3C2410_UDC_MAXP_REG = common dso_local global i32 0, align 4
@EP0_IDLE = common dso_local global i8* null, align 8
@USB_SPEED_FULL = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@S3C2410_UDC_USBINT_RESUME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"USB resume\0A\00", align 1
@S3C2410_UDC_USBINT_SUSPEND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"USB suspend\0A\00", align 1
@S3C2410_UDC_INT_EP0 = common dso_local global i32 0, align 4
@DEBUG_VERBOSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"USB ep0 irq\0A\00", align 1
@S3C2410_ENDPOINTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"USB ep%d irq\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"irq: %d s3c2410_udc_done.\0A\00", align 1
@IRQ_USBD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s3c2410_udc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410_udc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.s3c2410_udc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.s3c2410_udc*
  store %struct.s3c2410_udc* %16, %struct.s3c2410_udc** %6, align 8
  %17 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %18 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %17, i32 0, i32 0
  %19 = load i64, i64* %13, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %22 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %21, i32 0, i32 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @S3C2410_UDC_USB_INT_REG, align 4
  %27 = call i32 @udc_read(i32 %26)
  %28 = load i32, i32* @S3C2410_UDC_USB_INT_REG, align 4
  %29 = call i32 @udc_write(i32 %27, i32 %28)
  %30 = load i32, i32* @S3C2410_UDC_EP_INT_REG, align 4
  %31 = call i32 @udc_read(i32 %30)
  %32 = load i32, i32* @S3C2410_UDC_EP_INT_REG, align 4
  %33 = call i32 @udc_write(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %25, %2
  %35 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %36 = call i32 @udc_read(i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* @S3C2410_UDC_USB_INT_REG, align 4
  %38 = call i32 @udc_read(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @S3C2410_UDC_EP_INT_REG, align 4
  %40 = call i32 @udc_read(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @S3C2410_UDC_PWR_REG, align 4
  %42 = call i32 @udc_read(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* @base_addr, align 4
  %44 = load i32, i32* @S3C2410_UDC_INDEX_EP0, align 4
  %45 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %46 = call i32 @udc_writeb(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* @S3C2410_UDC_IN_CSR1_REG, align 4
  %48 = call i32 @udc_read(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @DEBUG_NORMAL, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 (i32, i8*, ...) @dprintk(i32 %49, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @S3C2410_UDC_USBINT_RESET, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %101

59:                                               ; preds = %34
  %60 = load i32, i32* @DEBUG_NORMAL, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i32, i8*, ...) @dprintk(i32 %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %65 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %66 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i64 %64, i64* %67, align 8
  %68 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %69 = call i32 @udc_write(i32 0, i32 %68)
  %70 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %71 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 2047
  %78 = ashr i32 %77, 3
  %79 = load i32, i32* @S3C2410_UDC_MAXP_REG, align 4
  %80 = call i32 @udc_write(i32 %78, i32 %79)
  %81 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %82 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %81, i32 0, i32 5
  store i64 0, i64* %82, align 8
  %83 = load i8*, i8** @EP0_IDLE, align 8
  %84 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %85 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load i64, i64* @USB_SPEED_FULL, align 8
  %87 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %88 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store i64 %86, i64* %89, align 8
  %90 = load i32, i32* @S3C2410_UDC_USBINT_RESET, align 4
  %91 = load i32, i32* @S3C2410_UDC_USB_INT_REG, align 4
  %92 = call i32 @udc_write(i32 %90, i32 %91)
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %95 = call i32 @udc_write(i32 %93, i32 %94)
  %96 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %97 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %96, i32 0, i32 0
  %98 = load i64, i64* %13, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %100, i32* %3, align 4
  br label %237

101:                                              ; preds = %34
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @S3C2410_UDC_USBINT_RESUME, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %140

106:                                              ; preds = %101
  %107 = load i32, i32* @DEBUG_NORMAL, align 4
  %108 = call i32 (i32, i8*, ...) @dprintk(i32 %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* @S3C2410_UDC_USBINT_RESUME, align 4
  %110 = load i32, i32* @S3C2410_UDC_USB_INT_REG, align 4
  %111 = call i32 @udc_write(i32 %109, i32 %110)
  %112 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %113 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %139

118:                                              ; preds = %106
  %119 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %120 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %119, i32 0, i32 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = icmp ne %struct.TYPE_7__* %121, null
  br i1 %122, label %123, label %139

123:                                              ; preds = %118
  %124 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %125 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %124, i32 0, i32 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %127, align 8
  %129 = icmp ne i32 (%struct.TYPE_8__*)* %128, null
  br i1 %129, label %130, label %139

130:                                              ; preds = %123
  %131 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %132 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %131, i32 0, i32 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %134, align 8
  %136 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %137 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %136, i32 0, i32 3
  %138 = call i32 %135(%struct.TYPE_8__* %137)
  br label %139

139:                                              ; preds = %130, %123, %118, %106
  br label %140

140:                                              ; preds = %139, %101
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @S3C2410_UDC_USBINT_SUSPEND, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %182

145:                                              ; preds = %140
  %146 = load i32, i32* @DEBUG_NORMAL, align 4
  %147 = call i32 (i32, i8*, ...) @dprintk(i32 %146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %148 = load i32, i32* @S3C2410_UDC_USBINT_SUSPEND, align 4
  %149 = load i32, i32* @S3C2410_UDC_USB_INT_REG, align 4
  %150 = call i32 @udc_write(i32 %148, i32 %149)
  %151 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %152 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %178

157:                                              ; preds = %145
  %158 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %159 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %158, i32 0, i32 4
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = icmp ne %struct.TYPE_7__* %160, null
  br i1 %161, label %162, label %178

162:                                              ; preds = %157
  %163 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %164 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %163, i32 0, i32 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %166, align 8
  %168 = icmp ne i32 (%struct.TYPE_8__*)* %167, null
  br i1 %168, label %169, label %178

169:                                              ; preds = %162
  %170 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %171 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %170, i32 0, i32 4
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %173, align 8
  %175 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %176 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %175, i32 0, i32 3
  %177 = call i32 %174(%struct.TYPE_8__* %176)
  br label %178

178:                                              ; preds = %169, %162, %157, %145
  %179 = load i8*, i8** @EP0_IDLE, align 8
  %180 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %181 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %180, i32 0, i32 2
  store i8* %179, i8** %181, align 8
  br label %182

182:                                              ; preds = %178, %140
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @S3C2410_UDC_INT_EP0, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %182
  %188 = load i32, i32* @DEBUG_VERBOSE, align 4
  %189 = call i32 (i32, i8*, ...) @dprintk(i32 %188, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %190 = load i32, i32* @S3C2410_UDC_INT_EP0, align 4
  %191 = load i32, i32* @S3C2410_UDC_EP_INT_REG, align 4
  %192 = call i32 @udc_write(i32 %190, i32 %191)
  %193 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %194 = call i32 @s3c2410_udc_handle_ep0(%struct.s3c2410_udc* %193)
  br label %195

195:                                              ; preds = %187, %182
  store i32 1, i32* %11, align 4
  br label %196

196:                                              ; preds = %222, %195
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* @S3C2410_ENDPOINTS, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %225

200:                                              ; preds = %196
  %201 = load i32, i32* %11, align 4
  %202 = shl i32 1, %201
  store i32 %202, i32* %14, align 4
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %14, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %221

207:                                              ; preds = %200
  %208 = load i32, i32* @DEBUG_VERBOSE, align 4
  %209 = load i32, i32* %11, align 4
  %210 = call i32 (i32, i8*, ...) @dprintk(i32 %208, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* @S3C2410_UDC_EP_INT_REG, align 4
  %213 = call i32 @udc_write(i32 %211, i32 %212)
  %214 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %215 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %214, i32 0, i32 1
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i64 %218
  %220 = call i32 @s3c2410_udc_handle_ep(%struct.TYPE_9__* %219)
  br label %221

221:                                              ; preds = %207, %200
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %11, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %11, align 4
  br label %196

225:                                              ; preds = %196
  %226 = load i32, i32* @DEBUG_VERBOSE, align 4
  %227 = load i32, i32* @IRQ_USBD, align 4
  %228 = call i32 (i32, i8*, ...) @dprintk(i32 %226, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %231 = call i32 @udc_write(i32 %229, i32 %230)
  %232 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %233 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %232, i32 0, i32 0
  %234 = load i64, i64* %13, align 8
  %235 = call i32 @spin_unlock_irqrestore(i32* %233, i64 %234)
  %236 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %236, i32* %3, align 4
  br label %237

237:                                              ; preds = %225, %59
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @udc_write(i32, i32) #1

declare dso_local i32 @udc_read(i32) #1

declare dso_local i32 @udc_writeb(i32, i32, i32) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @s3c2410_udc_handle_ep0(%struct.s3c2410_udc*) #1

declare dso_local i32 @s3c2410_udc_handle_ep(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
