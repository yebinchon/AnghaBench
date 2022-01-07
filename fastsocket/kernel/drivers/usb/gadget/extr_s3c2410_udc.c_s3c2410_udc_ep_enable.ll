; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c2410_udc.c_s3c2410_udc_ep_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c2410_udc.c_s3c2410_udc_ep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i64, i32 }
%struct.usb_endpoint_descriptor = type { i64, i32, i32 }
%struct.s3c2410_udc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.s3c2410_ep = type { i32, i32, i64, %struct.usb_endpoint_descriptor*, %struct.s3c2410_udc* }

@ep0name = common dso_local global i64 0, align 8
@USB_DT_ENDPOINT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@S3C2410_UDC_INDEX_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_MAXP_REG = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@S3C2410_UDC_ICSR1_FFLUSH = common dso_local global i32 0, align 4
@S3C2410_UDC_ICSR1_CLRDT = common dso_local global i32 0, align 4
@S3C2410_UDC_ICSR2_MODEIN = common dso_local global i32 0, align 4
@S3C2410_UDC_ICSR2_DMAIEN = common dso_local global i32 0, align 4
@S3C2410_UDC_IN_CSR1_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_IN_CSR2_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_OCSR1_FFLUSH = common dso_local global i32 0, align 4
@S3C2410_UDC_OCSR1_CLRDT = common dso_local global i32 0, align 4
@S3C2410_UDC_OCSR2_DMAIEN = common dso_local global i32 0, align 4
@S3C2410_UDC_OUT_CSR1_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_OUT_CSR2_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_EP_INT_EN_REG = common dso_local global i32 0, align 4
@DEBUG_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"enable %s(%d) ep%x%s-blk max %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_endpoint_descriptor*)* @s3c2410_udc_ep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410_udc_ep_enable(%struct.usb_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.s3c2410_udc*, align 8
  %7 = alloca %struct.s3c2410_ep*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  %14 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %15 = call %struct.s3c2410_ep* @to_s3c2410_ep(%struct.usb_ep* %14)
  store %struct.s3c2410_ep* %15, %struct.s3c2410_ep** %7, align 8
  %16 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %17 = icmp ne %struct.usb_ep* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %20 = icmp ne %struct.usb_endpoint_descriptor* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %23 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %22, i32 0, i32 3
  %24 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %23, align 8
  %25 = icmp ne %struct.usb_endpoint_descriptor* %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %21
  %27 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %28 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ep0name, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %34 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @USB_DT_ENDPOINT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %26, %21, %18, %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %194

41:                                               ; preds = %32
  %42 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %43 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %42, i32 0, i32 4
  %44 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %43, align 8
  store %struct.s3c2410_udc* %44, %struct.s3c2410_udc** %6, align 8
  %45 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %46 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load %struct.s3c2410_udc*, %struct.s3c2410_udc** %6, align 8
  %51 = getelementptr inbounds %struct.s3c2410_udc, %struct.s3c2410_udc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49, %41
  %57 = load i32, i32* @ESHUTDOWN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %194

59:                                               ; preds = %49
  %60 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %61 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16_to_cpu(i32 %62)
  %64 = and i32 %63, 8191
  store i32 %64, i32* %8, align 4
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @local_irq_save(i64 %65)
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 2047
  %69 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %70 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %72 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %73 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %72, i32 0, i32 3
  store %struct.usb_endpoint_descriptor* %71, %struct.usb_endpoint_descriptor** %73, align 8
  %74 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %75 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %77 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %80 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %82 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %85 = call i32 @udc_write(i32 %83, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = ashr i32 %86, 3
  %88 = load i32, i32* @S3C2410_UDC_MAXP_REG, align 4
  %89 = call i32 @udc_write(i32 %87, i32 %88)
  %90 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %91 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @USB_DIR_IN, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %59
  %97 = load i32, i32* @S3C2410_UDC_ICSR1_FFLUSH, align 4
  %98 = load i32, i32* @S3C2410_UDC_ICSR1_CLRDT, align 4
  %99 = or i32 %97, %98
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* @S3C2410_UDC_ICSR2_MODEIN, align 4
  %101 = load i32, i32* @S3C2410_UDC_ICSR2_DMAIEN, align 4
  %102 = or i32 %100, %101
  store i32 %102, i32* %12, align 4
  %103 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %104 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %107 = call i32 @udc_write(i32 %105, i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @S3C2410_UDC_IN_CSR1_REG, align 4
  %110 = call i32 @udc_write(i32 %108, i32 %109)
  %111 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %112 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %115 = call i32 @udc_write(i32 %113, i32 %114)
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @S3C2410_UDC_IN_CSR2_REG, align 4
  %118 = call i32 @udc_write(i32 %116, i32 %117)
  br label %158

119:                                              ; preds = %59
  %120 = load i32, i32* @S3C2410_UDC_ICSR1_CLRDT, align 4
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* @S3C2410_UDC_ICSR2_DMAIEN, align 4
  store i32 %121, i32* %12, align 4
  %122 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %123 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %126 = call i32 @udc_write(i32 %124, i32 %125)
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @S3C2410_UDC_IN_CSR1_REG, align 4
  %129 = call i32 @udc_write(i32 %127, i32 %128)
  %130 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %131 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %134 = call i32 @udc_write(i32 %132, i32 %133)
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @S3C2410_UDC_IN_CSR2_REG, align 4
  %137 = call i32 @udc_write(i32 %135, i32 %136)
  %138 = load i32, i32* @S3C2410_UDC_OCSR1_FFLUSH, align 4
  %139 = load i32, i32* @S3C2410_UDC_OCSR1_CLRDT, align 4
  %140 = or i32 %138, %139
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* @S3C2410_UDC_OCSR2_DMAIEN, align 4
  store i32 %141, i32* %12, align 4
  %142 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %143 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %146 = call i32 @udc_write(i32 %144, i32 %145)
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @S3C2410_UDC_OUT_CSR1_REG, align 4
  %149 = call i32 @udc_write(i32 %147, i32 %148)
  %150 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %151 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %154 = call i32 @udc_write(i32 %152, i32 %153)
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @S3C2410_UDC_OUT_CSR2_REG, align 4
  %157 = call i32 @udc_write(i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %119, %96
  %159 = load i32, i32* @S3C2410_UDC_EP_INT_EN_REG, align 4
  %160 = call i32 @udc_read(i32 %159)
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %163 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 1, %164
  %166 = or i32 %161, %165
  %167 = load i32, i32* @S3C2410_UDC_EP_INT_EN_REG, align 4
  %168 = call i32 @udc_write(i32 %166, i32 %167)
  %169 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %170 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* @DEBUG_NORMAL, align 4
  %173 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %174 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %7, align 8
  %177 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %181 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @USB_DIR_IN, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @dprintk(i32 %172, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %175, i32 %178, i32 %179, i8* %187, i32 %188)
  %190 = load i64, i64* %10, align 8
  %191 = call i32 @local_irq_restore(i64 %190)
  %192 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %193 = call i32 @s3c2410_udc_set_halt(%struct.usb_ep* %192, i32 0)
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %158, %56, %38
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local %struct.s3c2410_ep* @to_s3c2410_ep(%struct.usb_ep*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @udc_write(i32, i32) #1

declare dso_local i32 @udc_read(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i64, i32, i32, i8*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @s3c2410_udc_set_halt(%struct.usb_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
