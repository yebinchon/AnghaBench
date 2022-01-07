; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov-io.c_gcov_read_summary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcov-io.c_gcov_read_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_summary = type { %struct.gcov_ctr_summary*, i8* }
%struct.gcov_ctr_summary = type { i8*, i8*, i8*, i8*, i8* }

@GCOV_COUNTERS_SUMMABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gcov_read_summary(%struct.gcov_summary* %0) #0 {
  %2 = alloca %struct.gcov_summary*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gcov_ctr_summary*, align 8
  store %struct.gcov_summary* %0, %struct.gcov_summary** %2, align 8
  %5 = call i8* (...) @gcov_read_unsigned()
  %6 = load %struct.gcov_summary*, %struct.gcov_summary** %2, align 8
  %7 = getelementptr inbounds %struct.gcov_summary, %struct.gcov_summary* %6, i32 0, i32 1
  store i8* %5, i8** %7, align 8
  %8 = load %struct.gcov_summary*, %struct.gcov_summary** %2, align 8
  %9 = getelementptr inbounds %struct.gcov_summary, %struct.gcov_summary* %8, i32 0, i32 0
  %10 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** %9, align 8
  store %struct.gcov_ctr_summary* %10, %struct.gcov_ctr_summary** %4, align 8
  %11 = load i32, i32* @GCOV_COUNTERS_SUMMABLE, align 4
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %32, %1
  %13 = load i32, i32* %3, align 4
  %14 = add i32 %13, -1
  store i32 %14, i32* %3, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = call i8* (...) @gcov_read_unsigned()
  %18 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** %4, align 8
  %19 = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = call i8* (...) @gcov_read_unsigned()
  %21 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** %4, align 8
  %22 = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = call i8* (...) @gcov_read_counter()
  %24 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** %4, align 8
  %25 = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = call i8* (...) @gcov_read_counter()
  %27 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** %4, align 8
  %28 = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = call i8* (...) @gcov_read_counter()
  %30 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** %4, align 8
  %31 = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %16
  %33 = load %struct.gcov_ctr_summary*, %struct.gcov_ctr_summary** %4, align 8
  %34 = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %33, i32 1
  store %struct.gcov_ctr_summary* %34, %struct.gcov_ctr_summary** %4, align 8
  br label %12

35:                                               ; preds = %12
  ret void
}

declare dso_local i8* @gcov_read_unsigned(...) #1

declare dso_local i8* @gcov_read_counter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
