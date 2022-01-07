; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_get_fetch_size_function.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_kprobe.c_get_fetch_size_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_type = type { i32** }

@fetch_type_table = common dso_local global %struct.fetch_type* null, align 8
@FETCH_TYPE_STRING = common dso_local global i64 0, align 8
@FETCH_MTD_END = common dso_local global i32 0, align 4
@FETCH_TYPE_STRSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.fetch_type*, i32*)* @get_fetch_size_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_fetch_size_function(%struct.fetch_type* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.fetch_type*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.fetch_type* %0, %struct.fetch_type** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.fetch_type*, %struct.fetch_type** %4, align 8
  %8 = load %struct.fetch_type*, %struct.fetch_type** @fetch_type_table, align 8
  %9 = load i64, i64* @FETCH_TYPE_STRING, align 8
  %10 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %8, i64 %9
  %11 = icmp ne %struct.fetch_type* %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %44

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %39, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @FETCH_MTD_END, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load %struct.fetch_type*, %struct.fetch_type** %4, align 8
  %20 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp eq i32* %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load %struct.fetch_type*, %struct.fetch_type** @fetch_type_table, align 8
  %30 = load i64, i64* @FETCH_TYPE_STRSIZE, align 8
  %31 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %29, i64 %30
  %32 = getelementptr inbounds %struct.fetch_type, %struct.fetch_type* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %3, align 8
  br label %44

38:                                               ; preds = %18
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %14

42:                                               ; preds = %14
  %43 = call i32 @WARN_ON(i32 1)
  store i32* null, i32** %3, align 8
  br label %44

44:                                               ; preds = %42, %28, %12
  %45 = load i32*, i32** %3, align 8
  ret i32* %45
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
