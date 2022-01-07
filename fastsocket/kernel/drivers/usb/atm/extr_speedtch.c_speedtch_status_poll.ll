; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_speedtch.c_speedtch_status_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_speedtch.c_speedtch_status_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.speedtch_instance_data = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MAX_POLL_DELAY = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Too many failures - disabling line status polling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @speedtch_status_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @speedtch_status_poll(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.speedtch_instance_data*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.speedtch_instance_data*
  store %struct.speedtch_instance_data* %6, %struct.speedtch_instance_data** %3, align 8
  %7 = load %struct.speedtch_instance_data*, %struct.speedtch_instance_data** %3, align 8
  %8 = getelementptr inbounds %struct.speedtch_instance_data, %struct.speedtch_instance_data* %7, i32 0, i32 2
  %9 = call i32 @schedule_delayed_work(%struct.TYPE_2__* %8, i32 0)
  %10 = load %struct.speedtch_instance_data*, %struct.speedtch_instance_data** %3, align 8
  %11 = getelementptr inbounds %struct.speedtch_instance_data, %struct.speedtch_instance_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAX_POLL_DELAY, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.speedtch_instance_data*, %struct.speedtch_instance_data** %3, align 8
  %17 = getelementptr inbounds %struct.speedtch_instance_data, %struct.speedtch_instance_data* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* @jiffies, align 8
  %20 = load %struct.speedtch_instance_data*, %struct.speedtch_instance_data** %3, align 8
  %21 = getelementptr inbounds %struct.speedtch_instance_data, %struct.speedtch_instance_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @msecs_to_jiffies(i64 %22)
  %24 = add nsw i64 %19, %23
  %25 = call i32 @mod_timer(i32* %18, i64 %24)
  br label %31

26:                                               ; preds = %1
  %27 = load %struct.speedtch_instance_data*, %struct.speedtch_instance_data** %3, align 8
  %28 = getelementptr inbounds %struct.speedtch_instance_data, %struct.speedtch_instance_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @atm_warn(i32 %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %15
  ret void
}

declare dso_local i32 @schedule_delayed_work(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @atm_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
