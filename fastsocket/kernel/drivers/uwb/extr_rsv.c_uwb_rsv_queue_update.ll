; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_queue_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_rsv.c_uwb_rsv_queue_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32, i32 }

@UWB_MAS_LENGTH_US = common dso_local global i64 0, align 8
@UWB_MAS_PER_ZONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uwb_rsv_queue_update(%struct.uwb_rc* %0) #0 {
  %2 = alloca %struct.uwb_rc*, align 8
  %3 = alloca i64, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %2, align 8
  %4 = load i64, i64* @UWB_MAS_LENGTH_US, align 8
  %5 = load i64, i64* @UWB_MAS_PER_ZONE, align 8
  %6 = mul i64 %4, %5
  store i64 %6, i64* %3, align 8
  %7 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %8 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %11 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %10, i32 0, i32 0
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @usecs_to_jiffies(i64 %12)
  %14 = call i32 @queue_delayed_work(i32 %9, i32* %11, i32 %13)
  ret void
}

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
