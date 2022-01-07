; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_timer.c_lapb_start_t2timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_timer.c_lapb_start_t2timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i64, i32* }

@lapb_t2timer_expiry = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapb_start_t2timer(%struct.lapb_cb* %0) #0 {
  %2 = alloca %struct.lapb_cb*, align 8
  store %struct.lapb_cb* %0, %struct.lapb_cb** %2, align 8
  %3 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %4 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %3, i32 0, i32 0
  %5 = call i32 @del_timer(%struct.TYPE_3__* %4)
  %6 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %7 = ptrtoint %struct.lapb_cb* %6 to i64
  %8 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %9 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  %11 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %12 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32* @lapb_t2timer_expiry, i32** %13, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %16 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %20 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i64 %18, i64* %21, align 8
  %22 = load %struct.lapb_cb*, %struct.lapb_cb** %2, align 8
  %23 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %22, i32 0, i32 0
  %24 = call i32 @add_timer(%struct.TYPE_3__* %23)
  ret void
}

declare dso_local i32 @del_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
