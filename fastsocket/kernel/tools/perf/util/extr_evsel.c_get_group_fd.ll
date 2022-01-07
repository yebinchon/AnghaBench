; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_get_group_fd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_evsel.c_get_group_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evsel = type { i32, %struct.perf_evsel* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_evsel*, i32, i32)* @get_group_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_group_fd(%struct.perf_evsel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_evsel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_evsel*, align 8
  %9 = alloca i32, align 4
  store %struct.perf_evsel* %0, %struct.perf_evsel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %11 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %10, i32 0, i32 1
  %12 = load %struct.perf_evsel*, %struct.perf_evsel** %11, align 8
  store %struct.perf_evsel* %12, %struct.perf_evsel** %8, align 8
  %13 = load %struct.perf_evsel*, %struct.perf_evsel** %5, align 8
  %14 = call i32 @perf_evsel__is_group_member(%struct.perf_evsel* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %34

17:                                               ; preds = %3
  %18 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %19 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @FD(%struct.perf_evsel* %25, i32 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, -1
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %17, %16
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @perf_evsel__is_group_member(%struct.perf_evsel*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @FD(%struct.perf_evsel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
