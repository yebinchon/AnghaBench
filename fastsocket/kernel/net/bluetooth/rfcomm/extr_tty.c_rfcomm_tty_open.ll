; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.rfcomm_dev* }
%struct.rfcomm_dev = type { i32, %struct.rfcomm_dlc*, i32, i32, i32, i32, i32, i32, %struct.tty_struct*, i32 }
%struct.rfcomm_dlc = type { i64 }
%struct.file = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"tty %p id %d\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"dev %p dst %s channel %d opened %d\00", align 1
@RFCOMM_TTY_ATTACHED = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@BT_CLOSED = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@DPM_ORDER_DEV_AFTER_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @rfcomm_tty_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_tty_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.rfcomm_dev*, align 8
  %7 = alloca %struct.rfcomm_dlc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load i32, i32* @wait, align 4
  %11 = load i32, i32* @current, align 4
  %12 = call i32 @DECLARE_WAITQUEUE(i32 %10, i32 %11)
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.tty_struct* %16, i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.rfcomm_dev* @rfcomm_dev_get(i32 %19)
  store %struct.rfcomm_dev* %20, %struct.rfcomm_dev** %6, align 8
  %21 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %22 = icmp ne %struct.rfcomm_dev* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %131

26:                                               ; preds = %2
  %27 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %28 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %29 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %28, i32 0, i32 5
  %30 = call i32 @batostr(i32* %29)
  %31 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %32 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %35 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %34, i32 0, i32 9
  %36 = call i32 @atomic_read(i32* %35)
  %37 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.rfcomm_dev* %27, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %39 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %38, i32 0, i32 9
  %40 = call i32 @atomic_inc_return(i32* %39)
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %131

43:                                               ; preds = %26
  %44 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %45 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %44, i32 0, i32 1
  %46 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %45, align 8
  store %struct.rfcomm_dlc* %46, %struct.rfcomm_dlc** %7, align 8
  %47 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %7, align 8
  %48 = call i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc* %47)
  %49 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %50 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %51 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %50, i32 0, i32 1
  store %struct.rfcomm_dev* %49, %struct.rfcomm_dev** %51, align 8
  %52 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %53 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %54 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %53, i32 0, i32 8
  store %struct.tty_struct* %52, %struct.tty_struct** %54, align 8
  %55 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %7, align 8
  %56 = call i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc* %55)
  %57 = load i32, i32* @RFCOMM_TTY_ATTACHED, align 4
  %58 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %59 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %58, i32 0, i32 7
  %60 = call i32 @set_bit(i32 %57, i32* %59)
  %61 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %7, align 8
  %62 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %63 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %62, i32 0, i32 6
  %64 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %65 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %64, i32 0, i32 5
  %66 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %67 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @rfcomm_dlc_open(%struct.rfcomm_dlc* %61, i32* %63, i32* %65, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %43
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %131

74:                                               ; preds = %43
  %75 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %76 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %75, i32 0, i32 3
  %77 = call i32 @add_wait_queue(i32* %76, i32* @wait)
  br label %78

78:                                               ; preds = %74, %105
  %79 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %80 = call i32 @set_current_state(i32 %79)
  %81 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %7, align 8
  %82 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @BT_CLOSED, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %88 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %107

91:                                               ; preds = %78
  %92 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %7, align 8
  %93 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @BT_CONNECTED, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %107

98:                                               ; preds = %91
  %99 = load i32, i32* @current, align 4
  %100 = call i64 @signal_pending(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* @EINTR, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %8, align 4
  br label %107

105:                                              ; preds = %98
  %106 = call i32 (...) @schedule()
  br label %78

107:                                              ; preds = %102, %97, %86
  %108 = load i32, i32* @TASK_RUNNING, align 4
  %109 = call i32 @set_current_state(i32 %108)
  %110 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %111 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %110, i32 0, i32 3
  %112 = call i32 @remove_wait_queue(i32* %111, i32* @wait)
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %117 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %120 = call i32 @rfcomm_get_device(%struct.rfcomm_dev* %119)
  %121 = load i32, i32* @DPM_ORDER_DEV_AFTER_PARENT, align 4
  %122 = call i32 @device_move(i32 %118, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %115, %107
  %124 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %125 = call i32 @rfcomm_tty_copy_pending(%struct.rfcomm_dev* %124)
  %126 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %127 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %126, i32 0, i32 1
  %128 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %127, align 8
  %129 = call i32 @rfcomm_dlc_unthrottle(%struct.rfcomm_dlc* %128)
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %123, %72, %42, %23
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local %struct.rfcomm_dev* @rfcomm_dev_get(i32) #1

declare dso_local i32 @batostr(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rfcomm_dlc_open(%struct.rfcomm_dlc*, i32*, i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @device_move(i32, i32, i32) #1

declare dso_local i32 @rfcomm_get_device(%struct.rfcomm_dev*) #1

declare dso_local i32 @rfcomm_tty_copy_pending(%struct.rfcomm_dev*) #1

declare dso_local i32 @rfcomm_dlc_unthrottle(%struct.rfcomm_dlc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
