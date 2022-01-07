; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-s3c2410.c_s3c2410_hcd_oc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-s3c2410.c_s3c2410_hcd_oc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_hcd_info = type { %struct.usb_hcd*, %struct.s3c2410_hcd_port* }
%struct.usb_hcd = type { i32 }
%struct.s3c2410_hcd_port = type { i32, i32, i32 }

@S3C_HCDFLG_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c2410_hcd_info*, i32)* @s3c2410_hcd_oc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_hcd_oc(%struct.s3c2410_hcd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c2410_hcd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3c2410_hcd_port*, align 8
  %6 = alloca %struct.usb_hcd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.s3c2410_hcd_info* %0, %struct.s3c2410_hcd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %3, align 8
  %10 = icmp eq %struct.s3c2410_hcd_info* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %56

12:                                               ; preds = %2
  %13 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %3, align 8
  %14 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %13, i32 0, i32 1
  %15 = load %struct.s3c2410_hcd_port*, %struct.s3c2410_hcd_port** %14, align 8
  %16 = getelementptr inbounds %struct.s3c2410_hcd_port, %struct.s3c2410_hcd_port* %15, i64 0
  store %struct.s3c2410_hcd_port* %16, %struct.s3c2410_hcd_port** %5, align 8
  %17 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %3, align 8
  %18 = getelementptr inbounds %struct.s3c2410_hcd_info, %struct.s3c2410_hcd_info* %17, i32 0, i32 0
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %18, align 8
  store %struct.usb_hcd* %19, %struct.usb_hcd** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @local_irq_save(i64 %20)
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %48, %12
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %53

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %8, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.s3c2410_hcd_port*, %struct.s3c2410_hcd_port** %5, align 8
  %33 = getelementptr inbounds %struct.s3c2410_hcd_port, %struct.s3c2410_hcd_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @S3C_HCDFLG_USED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.s3c2410_hcd_port*, %struct.s3c2410_hcd_port** %5, align 8
  %40 = getelementptr inbounds %struct.s3c2410_hcd_port, %struct.s3c2410_hcd_port* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.s3c2410_hcd_port*, %struct.s3c2410_hcd_port** %5, align 8
  %42 = getelementptr inbounds %struct.s3c2410_hcd_port, %struct.s3c2410_hcd_port* %41, i32 0, i32 2
  store i32 1, i32* %42, align 4
  %43 = load %struct.s3c2410_hcd_info*, %struct.s3c2410_hcd_info** %3, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @s3c2410_usb_set_power(%struct.s3c2410_hcd_info* %43, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %38, %31, %25
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.s3c2410_hcd_port*, %struct.s3c2410_hcd_port** %5, align 8
  %50 = getelementptr inbounds %struct.s3c2410_hcd_port, %struct.s3c2410_hcd_port* %49, i32 1
  store %struct.s3c2410_hcd_port* %50, %struct.s3c2410_hcd_port** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %22

53:                                               ; preds = %22
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @local_irq_restore(i64 %54)
  br label %56

56:                                               ; preds = %53, %11
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @s3c2410_usb_set_power(%struct.s3c2410_hcd_info*, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
