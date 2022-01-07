; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_legacy_frame_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_legacy_frame_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdbarch = type { i32 }

@DEPRECATED_FP_REGNUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @legacy_frame_p(%struct.gdbarch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gdbarch*, align 8
  store %struct.gdbarch* %0, %struct.gdbarch** %3, align 8
  %4 = call i64 (...) @DEPRECATED_INIT_FRAME_PC_P()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = call i64 (...) @DEPRECATED_INIT_FRAME_PC_FIRST_P()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = call i64 (...) @DEPRECATED_INIT_EXTRA_FRAME_INFO_P()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = call i64 (...) @DEPRECATED_FRAME_CHAIN_P()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %9, %6, %1
  store i32 1, i32* %2, align 4
  br label %29

16:                                               ; preds = %12
  %17 = load %struct.gdbarch*, %struct.gdbarch** %3, align 8
  %18 = call i64 @gdbarch_unwind_dummy_id_p(%struct.gdbarch* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %29

21:                                               ; preds = %16
  %22 = call i64 (...) @DEPRECATED_TARGET_READ_FP_P()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* @DEPRECATED_FP_REGNUM, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  store i32 1, i32* %2, align 4
  br label %29

28:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27, %20, %15
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @DEPRECATED_INIT_FRAME_PC_P(...) #1

declare dso_local i64 @DEPRECATED_INIT_FRAME_PC_FIRST_P(...) #1

declare dso_local i64 @DEPRECATED_INIT_EXTRA_FRAME_INFO_P(...) #1

declare dso_local i64 @DEPRECATED_FRAME_CHAIN_P(...) #1

declare dso_local i64 @gdbarch_unwind_dummy_id_p(%struct.gdbarch*) #1

declare dso_local i64 @DEPRECATED_TARGET_READ_FP_P(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
