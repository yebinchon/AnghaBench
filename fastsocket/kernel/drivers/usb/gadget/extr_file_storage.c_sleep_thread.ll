; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_sleep_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_sleep_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { i64 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*)* @sleep_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sleep_thread(%struct.fsg_dev* %0) #0 {
  %2 = alloca %struct.fsg_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.fsg_dev* %0, %struct.fsg_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %20, %1
  %5 = call i32 (...) @try_to_freeze()
  %6 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %7 = call i32 @set_current_state(i32 %6)
  %8 = load i32, i32* @current, align 4
  %9 = call i64 @signal_pending(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = load i32, i32* @EINTR, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %4
  %15 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %16 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %22

20:                                               ; preds = %14
  %21 = call i32 (...) @schedule()
  br label %4

22:                                               ; preds = %19, %11
  %23 = load i32, i32* @TASK_RUNNING, align 4
  %24 = call i32 @__set_current_state(i32 %23)
  %25 = load %struct.fsg_dev*, %struct.fsg_dev** %2, align 8
  %26 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
