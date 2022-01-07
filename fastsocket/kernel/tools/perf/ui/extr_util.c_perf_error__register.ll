; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_util.c_perf_error__register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/extr_util.c_perf_error__register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_error_ops = type { i32 }

@perf_eops = common dso_local global %struct.perf_error_ops* null, align 8
@default_eops = common dso_local global %struct.perf_error_ops zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_error__register(%struct.perf_error_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_error_ops*, align 8
  store %struct.perf_error_ops* %0, %struct.perf_error_ops** %3, align 8
  %4 = load %struct.perf_error_ops*, %struct.perf_error_ops** @perf_eops, align 8
  %5 = icmp ne %struct.perf_error_ops* %4, @default_eops
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %9

7:                                                ; preds = %1
  %8 = load %struct.perf_error_ops*, %struct.perf_error_ops** %3, align 8
  store %struct.perf_error_ops* %8, %struct.perf_error_ops** @perf_eops, align 8
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %7, %6
  %10 = load i32, i32* %2, align 4
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
