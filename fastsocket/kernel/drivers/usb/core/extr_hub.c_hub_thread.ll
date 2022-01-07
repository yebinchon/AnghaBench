; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@khubd_wait = common dso_local global i32 0, align 4
@hub_event_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: khubd exiting\0A\00", align 1
@usbcore_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @hub_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (...) @set_freezable()
  br label %4

4:                                                ; preds = %23, %1
  %5 = call i32 (...) @hub_events()
  %6 = load i32, i32* @khubd_wait, align 4
  %7 = call i32 @list_empty(i32* @hub_event_list)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = call i64 (...) @kthread_should_stop()
  %11 = icmp ne i64 %10, 0
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi i1 [ true, %4 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @wait_event_freezable(i32 %6, i32 %14)
  br label %16

16:                                               ; preds = %12
  %17 = call i64 (...) @kthread_should_stop()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = call i32 @list_empty(i32* @hub_event_list)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ true, %16 ], [ %22, %19 ]
  br i1 %24, label %4, label %25

25:                                               ; preds = %23
  %26 = load i32, i32* @usbcore_name, align 4
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %26)
  ret i32 0
}

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @hub_events(...) #1

declare dso_local i32 @wait_event_freezable(i32, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
