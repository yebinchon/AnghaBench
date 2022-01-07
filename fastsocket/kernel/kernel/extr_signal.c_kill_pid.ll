; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_kill_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_kill_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kill_pid(%struct.pid* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pid* %0, %struct.pid** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @__si_special(i32 %8)
  %10 = load %struct.pid*, %struct.pid** %4, align 8
  %11 = call i32 @kill_pid_info(i32 %7, i32 %9, %struct.pid* %10)
  ret i32 %11
}

declare dso_local i32 @kill_pid_info(i32, i32, %struct.pid*) #1

declare dso_local i32 @__si_special(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
