; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_free_cpu_topo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_header.c_free_cpu_topo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_topo = type { i64, i64, %struct.cpu_topo**, %struct.cpu_topo** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_topo*)* @free_cpu_topo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_cpu_topo(%struct.cpu_topo* %0) #0 {
  %2 = alloca %struct.cpu_topo*, align 8
  %3 = alloca i64, align 8
  store %struct.cpu_topo* %0, %struct.cpu_topo** %2, align 8
  %4 = load %struct.cpu_topo*, %struct.cpu_topo** %2, align 8
  %5 = icmp ne %struct.cpu_topo* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %46

7:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %22, %7
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.cpu_topo*, %struct.cpu_topo** %2, align 8
  %11 = getelementptr inbounds %struct.cpu_topo, %struct.cpu_topo* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load %struct.cpu_topo*, %struct.cpu_topo** %2, align 8
  %16 = getelementptr inbounds %struct.cpu_topo, %struct.cpu_topo* %15, i32 0, i32 3
  %17 = load %struct.cpu_topo**, %struct.cpu_topo*** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.cpu_topo*, %struct.cpu_topo** %17, i64 %18
  %20 = load %struct.cpu_topo*, %struct.cpu_topo** %19, align 8
  %21 = call i32 @free(%struct.cpu_topo* %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %3, align 8
  br label %8

25:                                               ; preds = %8
  store i64 0, i64* %3, align 8
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.cpu_topo*, %struct.cpu_topo** %2, align 8
  %29 = getelementptr inbounds %struct.cpu_topo, %struct.cpu_topo* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.cpu_topo*, %struct.cpu_topo** %2, align 8
  %34 = getelementptr inbounds %struct.cpu_topo, %struct.cpu_topo* %33, i32 0, i32 2
  %35 = load %struct.cpu_topo**, %struct.cpu_topo*** %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds %struct.cpu_topo*, %struct.cpu_topo** %35, i64 %36
  %38 = load %struct.cpu_topo*, %struct.cpu_topo** %37, align 8
  %39 = call i32 @free(%struct.cpu_topo* %38)
  br label %40

40:                                               ; preds = %32
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %3, align 8
  br label %26

43:                                               ; preds = %26
  %44 = load %struct.cpu_topo*, %struct.cpu_topo** %2, align 8
  %45 = call i32 @free(%struct.cpu_topo* %44)
  br label %46

46:                                               ; preds = %43, %6
  ret void
}

declare dso_local i32 @free(%struct.cpu_topo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
