; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-inject.c_dso__read_build_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-inject.c_dso__read_build_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*)* @dso__read_build_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dso__read_build_id(%struct.dso* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dso*, align 8
  store %struct.dso* %0, %struct.dso** %3, align 8
  %4 = load %struct.dso*, %struct.dso** %3, align 8
  %5 = getelementptr inbounds %struct.dso, %struct.dso* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.dso*, %struct.dso** %3, align 8
  %11 = getelementptr inbounds %struct.dso, %struct.dso* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dso*, %struct.dso** %3, align 8
  %14 = getelementptr inbounds %struct.dso, %struct.dso* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @filename__read_build_id(i32 %12, i32 %15, i32 4)
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = load %struct.dso*, %struct.dso** %3, align 8
  %20 = getelementptr inbounds %struct.dso, %struct.dso* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  store i32 0, i32* %2, align 4
  br label %22

21:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %18, %8
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @filename__read_build_id(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
