; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_state_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i64, %struct.rfcomm_dev* }
%struct.rfcomm_dev = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"dlc %p dev %p err %d\00", align 1
@BT_CLOSED = common dso_local global i64 0, align 8
@RFCOMM_RELEASE_ONHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfcomm_dlc*, i32)* @rfcomm_dev_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_dev_state_change(%struct.rfcomm_dlc* %0, i32 %1) #0 {
  %3 = alloca %struct.rfcomm_dlc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfcomm_dev*, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %7 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %6, i32 0, i32 1
  %8 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %7, align 8
  store %struct.rfcomm_dev* %8, %struct.rfcomm_dev** %5, align 8
  %9 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %10 = icmp ne %struct.rfcomm_dev* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %64

12:                                               ; preds = %2
  %13 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %14 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %13, %struct.rfcomm_dev* %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %19 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %21 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %20, i32 0, i32 4
  %22 = call i32 @wake_up_interruptible(i32* %21)
  %23 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %24 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BT_CLOSED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %12
  %29 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %30 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @RFCOMM_RELEASE_ONHUP, align 4
  %35 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %36 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %35, i32 0, i32 3
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %33
  %40 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %41 = call i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc* %40)
  %42 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %43 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32* @rfcomm_dev_get(i32 %44)
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %49 = call i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc* %48)
  br label %64

50:                                               ; preds = %39
  %51 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %52 = call i32 @rfcomm_dev_del(%struct.rfcomm_dev* %51)
  %53 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %54 = call i32 @rfcomm_dev_put(%struct.rfcomm_dev* %53)
  %55 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %56 = call i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc* %55)
  br label %57

57:                                               ; preds = %50, %33
  br label %63

58:                                               ; preds = %28
  %59 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %5, align 8
  %60 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @tty_hangup(i32 %61)
  br label %63

63:                                               ; preds = %58, %57
  br label %64

64:                                               ; preds = %11, %47, %63, %12
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, %struct.rfcomm_dev*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc*) #1

declare dso_local i32* @rfcomm_dev_get(i32) #1

declare dso_local i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dev_del(%struct.rfcomm_dev*) #1

declare dso_local i32 @rfcomm_dev_put(%struct.rfcomm_dev*) #1

declare dso_local i32 @tty_hangup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
