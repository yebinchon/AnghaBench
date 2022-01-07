; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_ps3fb.c_ps3fbd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_ps3fb.c_ps3fbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.fb_info = type { i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ps3fb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ps3fbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3fbd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fb_info*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.fb_info*
  store %struct.fb_info* %5, %struct.fb_info** %3, align 8
  %6 = call i32 (...) @set_freezable()
  br label %7

7:                                                ; preds = %22, %1
  %8 = call i32 (...) @kthread_should_stop()
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = call i32 (...) @try_to_freeze()
  %13 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %14 = call i32 @set_current_state(i32 %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps3fb, i32 0, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps3fb, i32 0, i32 0), align 8
  %18 = call i32 (...) @acquire_console_sem()
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = call i32 @ps3fb_sync(%struct.fb_info* %19, i32 0)
  %21 = call i32 (...) @release_console_sem()
  br label %22

22:                                               ; preds = %17, %11
  %23 = call i32 (...) @schedule()
  br label %7

24:                                               ; preds = %7
  ret i32 0
}

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @acquire_console_sem(...) #1

declare dso_local i32 @ps3fb_sync(%struct.fb_info*, i32) #1

declare dso_local i32 @release_console_sem(...) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
