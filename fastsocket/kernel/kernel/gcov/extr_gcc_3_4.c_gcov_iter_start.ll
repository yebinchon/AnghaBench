; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_gcc_3_4.c_gcov_iter_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/gcov/extr_gcc_3_4.c_gcov_iter_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_iterator = type { i64, %struct.TYPE_2__*, i32, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@GCOV_COUNTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gcov_iter_start(%struct.gcov_iterator* %0) #0 {
  %2 = alloca %struct.gcov_iterator*, align 8
  %3 = alloca i32, align 4
  store %struct.gcov_iterator* %0, %struct.gcov_iterator** %2, align 8
  %4 = load %struct.gcov_iterator*, %struct.gcov_iterator** %2, align 8
  %5 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %4, i32 0, i32 6
  store i64 0, i64* %5, align 8
  %6 = load %struct.gcov_iterator*, %struct.gcov_iterator** %2, align 8
  %7 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %6, i32 0, i32 5
  store i64 0, i64* %7, align 8
  %8 = load %struct.gcov_iterator*, %struct.gcov_iterator** %2, align 8
  %9 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.gcov_iterator*, %struct.gcov_iterator** %2, align 8
  %11 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.gcov_iterator*, %struct.gcov_iterator** %2, align 8
  %13 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %45, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @GCOV_COUNTERS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %14
  %19 = load %struct.gcov_iterator*, %struct.gcov_iterator** %2, align 8
  %20 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @counter_active(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.gcov_iterator*, %struct.gcov_iterator** %2, align 8
  %28 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.gcov_iterator*, %struct.gcov_iterator** %2, align 8
  %31 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %26, i32* %34, align 8
  %35 = load %struct.gcov_iterator*, %struct.gcov_iterator** %2, align 8
  %36 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load %struct.gcov_iterator*, %struct.gcov_iterator** %2, align 8
  %39 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %40
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %25, %18
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %14

48:                                               ; preds = %14
  ret void
}

declare dso_local i64 @counter_active(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
