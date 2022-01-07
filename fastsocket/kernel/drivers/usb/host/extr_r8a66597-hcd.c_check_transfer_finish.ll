; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_check_transfer_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_check_transfer_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597_td = type { i64, i64, i64 }
%struct.urb = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8a66597_td*, %struct.urb*)* @check_transfer_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_transfer_finish(%struct.r8a66597_td* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r8a66597_td*, align 8
  %5 = alloca %struct.urb*, align 8
  store %struct.r8a66597_td* %0, %struct.r8a66597_td** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %6 = load %struct.urb*, %struct.urb** %5, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @usb_pipeisoc(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.urb*, %struct.urb** %5, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %16 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %41

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.urb*, %struct.urb** %5, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.urb*, %struct.urb** %5, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %24, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %21
  %30 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %31 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %36 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29, %21
  store i32 1, i32* %3, align 4
  br label %41

40:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %39, %19
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @usb_pipeisoc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
