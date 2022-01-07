; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_timer.c_irlmp_start_idle_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_timer.c_irlmp_start_idle_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lap_cb = type { i32 }

@irlmp_idle_timer_expired = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irlmp_start_idle_timer(%struct.lap_cb* %0, i32 %1) #0 {
  %3 = alloca %struct.lap_cb*, align 8
  %4 = alloca i32, align 4
  store %struct.lap_cb* %0, %struct.lap_cb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.lap_cb*, %struct.lap_cb** %3, align 8
  %6 = getelementptr inbounds %struct.lap_cb, %struct.lap_cb* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.lap_cb*, %struct.lap_cb** %3, align 8
  %9 = bitcast %struct.lap_cb* %8 to i8*
  %10 = load i32, i32* @irlmp_idle_timer_expired, align 4
  %11 = call i32 @irda_start_timer(i32* %6, i32 %7, i8* %9, i32 %10)
  ret void
}

declare dso_local i32 @irda_start_timer(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
