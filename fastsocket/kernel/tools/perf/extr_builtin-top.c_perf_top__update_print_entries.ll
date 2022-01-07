; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_perf_top__update_print_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-top.c_perf_top__update_print_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_top = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_top*)* @perf_top__update_print_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_top__update_print_entries(%struct.perf_top* %0) #0 {
  %2 = alloca %struct.perf_top*, align 8
  store %struct.perf_top* %0, %struct.perf_top** %2, align 8
  %3 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %4 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 9
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.perf_top*, %struct.perf_top** %2, align 8
  %9 = getelementptr inbounds %struct.perf_top, %struct.perf_top* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 9
  store i32 %11, i32* %9, align 4
  br label %12

12:                                               ; preds = %7, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
