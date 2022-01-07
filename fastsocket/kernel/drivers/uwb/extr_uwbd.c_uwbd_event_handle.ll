; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_uwbd.c_uwbd_event_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_uwbd.c_uwbd_event_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_event = type { i32, %struct.TYPE_3__, %struct.uwb_rc* }
%struct.TYPE_3__ = type { i32 }
%struct.uwb_rc = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"UWBD: invalid event type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_event*)* @uwbd_event_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwbd_event_handle(%struct.uwb_event* %0) #0 {
  %2 = alloca %struct.uwb_event*, align 8
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca i32, align 4
  store %struct.uwb_event* %0, %struct.uwb_event** %2, align 8
  %5 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %6 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %5, i32 0, i32 2
  %7 = load %struct.uwb_rc*, %struct.uwb_rc** %6, align 8
  store %struct.uwb_rc* %7, %struct.uwb_rc** %3, align 8
  %8 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %9 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %1
  %13 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %14 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %31 [
    i32 128, label %16
    i32 129, label %28
  ]

16:                                               ; preds = %12
  %17 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %18 = call i32 @uwbd_event_handle_urc(%struct.uwb_event* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %23 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @kfree(i32 %25)
  br label %27

27:                                               ; preds = %21, %16
  br label %39

28:                                               ; preds = %12
  %29 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %30 = call i32 @uwbd_event_handle_message(%struct.uwb_event* %29)
  br label %39

31:                                               ; preds = %12
  %32 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %33 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.uwb_event*, %struct.uwb_event** %2, align 8
  %36 = getelementptr inbounds %struct.uwb_event, %struct.uwb_event* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %31, %28, %27
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %42 = call i32 @__uwb_rc_put(%struct.uwb_rc* %41)
  ret void
}

declare dso_local i32 @uwbd_event_handle_urc(%struct.uwb_event*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @uwbd_event_handle_message(%struct.uwb_event*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @__uwb_rc_put(%struct.uwb_rc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
