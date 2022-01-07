; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c___hci_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c___hci_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s start\00", align 1
@HCI_REQ_PEND = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s end: err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, void (%struct.hci_dev*, i64)*, i64, i32)* @__hci_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hci_request(%struct.hci_dev* %0, void (%struct.hci_dev*, i64)* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca void (%struct.hci_dev*, i64)*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store void (%struct.hci_dev*, i64)* %1, void (%struct.hci_dev*, i64)** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @wait, align 4
  %12 = load i32, i32* @current, align 4
  %13 = call i32 @DECLARE_WAITQUEUE(i32 %11, i32 %12)
  store i32 0, i32* %10, align 4
  %14 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @HCI_REQ_PEND, align 4
  %19 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %20 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %22 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %21, i32 0, i32 3
  %23 = call i32 @add_wait_queue(i32* %22, i32* @wait)
  %24 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %25 = call i32 @set_current_state(i32 %24)
  %26 = load void (%struct.hci_dev*, i64)*, void (%struct.hci_dev*, i64)** %7, align 8
  %27 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %28 = load i64, i64* %8, align 8
  call void %26(%struct.hci_dev* %27, i64 %28)
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @schedule_timeout(i32 %29)
  %31 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %32 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %31, i32 0, i32 3
  %33 = call i32 @remove_wait_queue(i32* %32, i32* @wait)
  %34 = load i32, i32* @current, align 4
  %35 = call i64 @signal_pending(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load i32, i32* @EINTR, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %69

40:                                               ; preds = %4
  %41 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %55 [
    i32 128, label %44
    i32 129, label %50
  ]

44:                                               ; preds = %40
  %45 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %46 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bt_err(i32 %47)
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %58

50:                                               ; preds = %40
  %51 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %52 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %58

55:                                               ; preds = %40
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %55, %50, %44
  %59 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %60 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %62 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  %63 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %64 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %58, %37
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @bt_err(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
