; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_s3c_hsotg_irq_enumdone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_s3c_hsotg_irq_enumdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_hsotg = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@S3C_DSTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"EnumDone (DSTS=0x%08x)\0A\00", align 1
@S3C_DSTS_EnumSpd_MASK = common dso_local global i32 0, align 4
@USB_SPEED_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"new device is full-speed\0A\00", align 1
@EP0_MPS_LIMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"new device is high-speed\0A\00", align 1
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@USB_SPEED_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"new device is low-speed\0A\00", align 1
@S3C_HSOTG_EPS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"EP0: DIEPCTL0=0x%08x, DOEPCTL0=0x%08x\0A\00", align 1
@S3C_DIEPCTL0 = common dso_local global i64 0, align 8
@S3C_DOEPCTL0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_hsotg*)* @s3c_hsotg_irq_enumdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_hsotg_irq_enumdone(%struct.s3c_hsotg* %0) #0 {
  %2 = alloca %struct.s3c_hsotg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s3c_hsotg* %0, %struct.s3c_hsotg** %2, align 8
  %7 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %2, align 8
  %8 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @S3C_DSTS, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %13 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %2, align 8
  %14 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @S3C_DSTS_EnumSpd_MASK, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %50 [
    i32 131, label %21
    i32 130, label %21
    i32 129, label %31
    i32 128, label %41
  ]

21:                                               ; preds = %1, %1
  %22 = load i32, i32* @USB_SPEED_FULL, align 4
  %23 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %2, align 8
  %24 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %2, align 8
  %27 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_info(i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EP0_MPS_LIMIT, align 4
  store i32 %30, i32* %4, align 4
  store i32 64, i32* %5, align 4
  br label %50

31:                                               ; preds = %1
  %32 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %2, align 8
  %33 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_info(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @USB_SPEED_HIGH, align 4
  %37 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %2, align 8
  %38 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @EP0_MPS_LIMIT, align 4
  store i32 %40, i32* %4, align 4
  store i32 512, i32* %5, align 4
  br label %50

41:                                               ; preds = %1
  %42 = load i32, i32* @USB_SPEED_LOW, align 4
  %43 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %2, align 8
  %44 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %2, align 8
  %47 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_info(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %1, %41, %31, %21
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %50
  %54 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %2, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @s3c_hsotg_set_ep_maxpacket(%struct.s3c_hsotg* %54, i32 0, i32 %55)
  store i32 1, i32* %6, align 4
  br label %57

57:                                               ; preds = %66, %53
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @S3C_HSOTG_EPS, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %2, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @s3c_hsotg_set_ep_maxpacket(%struct.s3c_hsotg* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %57

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %50
  %71 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %2, align 8
  %72 = call i32 @s3c_hsotg_enqueue_setup(%struct.s3c_hsotg* %71)
  %73 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %2, align 8
  %74 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %2, align 8
  %77 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @S3C_DIEPCTL0, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @readl(i64 %80)
  %82 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %2, align 8
  %83 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @S3C_DOEPCTL0, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @readl(i64 %86)
  %88 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 %87)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @s3c_hsotg_set_ep_maxpacket(%struct.s3c_hsotg*, i32, i32) #1

declare dso_local i32 @s3c_hsotg_enqueue_setup(%struct.s3c_hsotg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
