; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c2410_udc.c_s3c2410_udc_ep_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c2410_udc.c_s3c2410_udc_ep_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32* }
%struct.s3c2410_ep = type { i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@DEBUG_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s not enabled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ep_disable: %s\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@S3C2410_UDC_EP_INT_EN_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%s disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*)* @s3c2410_udc_ep_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410_udc_ep_disable(%struct.usb_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.s3c2410_ep*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  %7 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %8 = call %struct.s3c2410_ep* @to_s3c2410_ep(%struct.usb_ep* %7)
  store %struct.s3c2410_ep* %8, %struct.s3c2410_ep** %4, align 8
  %9 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %10 = icmp ne %struct.usb_ep* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %13 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @DEBUG_NORMAL, align 4
  %18 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %19 = icmp ne %struct.usb_ep* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %22 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  br label %26

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %20
  %27 = phi i32* [ %24, %20 ], [ null, %25 ]
  %28 = call i32 @dprintk(i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %68

31:                                               ; preds = %11
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @local_irq_save(i64 %32)
  %34 = load i32, i32* @DEBUG_NORMAL, align 4
  %35 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %36 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @dprintk(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %37)
  %39 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %40 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %42 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %44 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %47 = load i32, i32* @ESHUTDOWN, align 4
  %48 = sub nsw i32 0, %47
  %49 = call i32 @s3c2410_udc_nuke(i32 %45, %struct.s3c2410_ep* %46, i32 %48)
  %50 = load i32, i32* @S3C2410_UDC_EP_INT_EN_REG, align 4
  %51 = call i32 @udc_read(i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %4, align 8
  %54 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 1, %55
  %57 = xor i32 %56, -1
  %58 = and i32 %52, %57
  %59 = load i32, i32* @S3C2410_UDC_EP_INT_EN_REG, align 4
  %60 = call i32 @udc_write(i32 %58, i32 %59)
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @local_irq_restore(i64 %61)
  %63 = load i32, i32* @DEBUG_NORMAL, align 4
  %64 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %65 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @dprintk(i32 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %31, %26
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.s3c2410_ep* @to_s3c2410_ep(%struct.usb_ep*) #1

declare dso_local i32 @dprintk(i32, i8*, i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @s3c2410_udc_nuke(i32, %struct.s3c2410_ep*, i32) #1

declare dso_local i32 @udc_read(i32) #1

declare dso_local i32 @udc_write(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
