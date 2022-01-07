; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_start_wait_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_cxacru.c_cxacru_start_wait_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32 }
%struct.completion = type { i32 }
%struct.timer_list = type { i64, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@CMD_TIMEOUT = common dso_local global i32 0, align 4
@cxacru_timeout_kill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*, %struct.completion*, i32*)* @cxacru_start_wait_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxacru_start_wait_urb(%struct.urb* %0, %struct.completion* %1, i32* %2) #0 {
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.completion*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.timer_list, align 8
  store %struct.urb* %0, %struct.urb** %4, align 8
  store %struct.completion* %1, %struct.completion** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = call i32 @init_timer(%struct.timer_list* %7)
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i32, i32* @CMD_TIMEOUT, align 4
  %11 = call i64 @msecs_to_jiffies(i32 %10)
  %12 = add nsw i64 %9, %11
  %13 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %7, i32 0, i32 2
  store i64 %12, i64* %13, align 8
  %14 = load %struct.urb*, %struct.urb** %4, align 8
  %15 = ptrtoint %struct.urb* %14 to i64
  %16 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %7, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = load i32, i32* @cxacru_timeout_kill, align 4
  %18 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %7, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = call i32 @add_timer(%struct.timer_list* %7)
  %20 = load %struct.completion*, %struct.completion** %5, align 8
  %21 = call i32 @wait_for_completion(%struct.completion* %20)
  %22 = call i32 @del_timer_sync(%struct.timer_list* %7)
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load %struct.urb*, %struct.urb** %4, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %3
  %31 = load %struct.urb*, %struct.urb** %4, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  ret i32 %33
}

declare dso_local i32 @init_timer(%struct.timer_list*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.timer_list*) #1

declare dso_local i32 @wait_for_completion(%struct.completion*) #1

declare dso_local i32 @del_timer_sync(%struct.timer_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
