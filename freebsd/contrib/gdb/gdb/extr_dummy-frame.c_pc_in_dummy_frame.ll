; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_pc_in_dummy_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_pc_in_dummy_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_frame = type { i64, i64, %struct.dummy_frame* }

@dummy_frame_stack = common dso_local global %struct.dummy_frame* null, align 8
@DECR_PC_AFTER_BREAK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pc_in_dummy_frame(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.dummy_frame*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.dummy_frame*, %struct.dummy_frame** @dummy_frame_stack, align 8
  store %struct.dummy_frame* %5, %struct.dummy_frame** %4, align 8
  br label %6

6:                                                ; preds = %25, %1
  %7 = load %struct.dummy_frame*, %struct.dummy_frame** %4, align 8
  %8 = icmp ne %struct.dummy_frame* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load i64, i64* %3, align 8
  %11 = load %struct.dummy_frame*, %struct.dummy_frame** %4, align 8
  %12 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %10, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.dummy_frame*, %struct.dummy_frame** %4, align 8
  %18 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DECR_PC_AFTER_BREAK, align 8
  %21 = add nsw i64 %19, %20
  %22 = icmp slt i64 %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %30

24:                                               ; preds = %15, %9
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.dummy_frame*, %struct.dummy_frame** %4, align 8
  %27 = getelementptr inbounds %struct.dummy_frame, %struct.dummy_frame* %26, i32 0, i32 2
  %28 = load %struct.dummy_frame*, %struct.dummy_frame** %27, align 8
  store %struct.dummy_frame* %28, %struct.dummy_frame** %4, align 8
  br label %6

29:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
