; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_endpoint_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_endpoint_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_host_endpoint = type { i32 }
%struct.c67x00_hcd = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"error: urb list not empty\0A\00", align 1
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c67x00_endpoint_disable(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.c67x00_hcd*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %8 = call %struct.c67x00_hcd* @hcd_to_c67x00_hcd(%struct.usb_hcd* %7)
  store %struct.c67x00_hcd* %8, %struct.c67x00_hcd** %5, align 8
  %9 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %10 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %9, i32 0, i32 0
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %5, align 8
  %15 = call i32 @c67x00_hcd_dev(%struct.c67x00_hcd* %14)
  %16 = call i32 @dev_warn(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %5, align 8
  %19 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  br label %22

22:                                               ; preds = %26, %17
  %23 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %24 = call i64 @c67x00_ep_data_free(%struct.usb_host_endpoint* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %5, align 8
  %28 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %5, align 8
  %32 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @INIT_COMPLETION(i32 %33)
  %35 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %5, align 8
  %36 = call i32 @c67x00_sched_kick(%struct.c67x00_hcd* %35)
  %37 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %5, align 8
  %38 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %37, i32 0, i32 1
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 1, %39
  %41 = call i32 @wait_for_completion_timeout(i32* %38, i32 %40)
  %42 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %5, align 8
  %43 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %42, i32 0, i32 0
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  br label %22

46:                                               ; preds = %22
  %47 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %5, align 8
  %48 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %47, i32 0, i32 0
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  ret void
}

declare dso_local %struct.c67x00_hcd* @hcd_to_c67x00_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @c67x00_hcd_dev(%struct.c67x00_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @c67x00_ep_data_free(%struct.usb_host_endpoint*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @INIT_COMPLETION(i32) #1

declare dso_local i32 @c67x00_sched_kick(%struct.c67x00_hcd*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
