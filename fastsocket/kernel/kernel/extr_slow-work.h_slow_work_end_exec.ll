; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_slow-work.h_slow_work_end_exec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_slow-work.h_slow_work_end_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slow_work = type { i32 }

@slow_work_execs = common dso_local global i32** null, align 8
@slow_work_execs_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.slow_work*)* @slow_work_end_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slow_work_end_exec(i32 %0, %struct.slow_work* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.slow_work*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.slow_work* %1, %struct.slow_work** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
