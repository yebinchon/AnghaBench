; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_ep_from_windex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_ep_from_windex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_hsotg_ep = type { i32 }
%struct.s3c_hsotg = type { %struct.s3c_hsotg_ep* }

@USB_DIR_IN = common dso_local global i32 0, align 4
@S3C_HSOTG_EPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s3c_hsotg_ep* (%struct.s3c_hsotg*, i32)* @ep_from_windex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s3c_hsotg_ep* @ep_from_windex(%struct.s3c_hsotg* %0, i32 %1) #0 {
  %3 = alloca %struct.s3c_hsotg_ep*, align 8
  %4 = alloca %struct.s3c_hsotg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s3c_hsotg_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s3c_hsotg* %0, %struct.s3c_hsotg** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %4, align 8
  %10 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %9, i32 0, i32 0
  %11 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 127
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %11, i64 %14
  store %struct.s3c_hsotg_ep* %15, %struct.s3c_hsotg_ep** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @USB_DIR_IN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 127
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 256
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store %struct.s3c_hsotg_ep* null, %struct.s3c_hsotg_ep** %3, align 8
  br label %44

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @S3C_HSOTG_EPS, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store %struct.s3c_hsotg_ep* null, %struct.s3c_hsotg_ep** %3, align 8
  br label %44

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %6, align 8
  %37 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store %struct.s3c_hsotg_ep* null, %struct.s3c_hsotg_ep** %3, align 8
  br label %44

42:                                               ; preds = %35, %32
  %43 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %6, align 8
  store %struct.s3c_hsotg_ep* %43, %struct.s3c_hsotg_ep** %3, align 8
  br label %44

44:                                               ; preds = %42, %41, %31, %26
  %45 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %3, align 8
  ret %struct.s3c_hsotg_ep* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
