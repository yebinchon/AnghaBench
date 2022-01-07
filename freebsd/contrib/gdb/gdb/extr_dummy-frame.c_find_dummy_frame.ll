; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_find_dummy_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_find_dummy_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_frame = type { i64, i64, i64, i64, i64, %struct.dummy_frame* }

@dummy_frame_stack = common dso_local global %struct.dummy_frame* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dummy_frame* (i64, i64)* @find_dummy_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dummy_frame* @find_dummy_frame(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.dummy_frame*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dummy_frame*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.dummy_frame*, %struct.dummy_frame** @dummy_frame_stack, align 8
  store %struct.dummy_frame* %7, %struct.dummy_frame** %6, align 8
  br label %8

8:                                                ; preds = %53, %2
  %9 = load %struct.dummy_frame*, %struct.dummy_frame** %6, align 8
  %10 = icmp ne %struct.dummy_frame* %9, null
  br i1 %10, label %11, label %57

11:                                               ; preds = %8
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.dummy_frame*, %struct.dummy_frame** %6, align 8
  %14 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.dummy_frame*, %struct.dummy_frame** %6, align 8
  %20 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %11
  br label %53

24:                                               ; preds = %17
  %25 = load %struct.dummy_frame*, %struct.dummy_frame** %6, align 8
  %26 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.dummy_frame*, %struct.dummy_frame** %6, align 8
  %32 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %53

36:                                               ; preds = %29
  br label %51

37:                                               ; preds = %24
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.dummy_frame*, %struct.dummy_frame** %6, align 8
  %40 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.dummy_frame*, %struct.dummy_frame** %6, align 8
  %46 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %53

50:                                               ; preds = %43, %37
  br label %51

51:                                               ; preds = %50, %36
  %52 = load %struct.dummy_frame*, %struct.dummy_frame** %6, align 8
  store %struct.dummy_frame* %52, %struct.dummy_frame** %3, align 8
  br label %58

53:                                               ; preds = %49, %35, %23
  %54 = load %struct.dummy_frame*, %struct.dummy_frame** %6, align 8
  %55 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %54, i32 0, i32 5
  %56 = load %struct.dummy_frame*, %struct.dummy_frame** %55, align 8
  store %struct.dummy_frame* %56, %struct.dummy_frame** %6, align 8
  br label %8

57:                                               ; preds = %8
  store %struct.dummy_frame* null, %struct.dummy_frame** %3, align 8
  br label %58

58:                                               ; preds = %57, %51
  %59 = load %struct.dummy_frame*, %struct.dummy_frame** %3, align 8
  ret %struct.dummy_frame* %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
