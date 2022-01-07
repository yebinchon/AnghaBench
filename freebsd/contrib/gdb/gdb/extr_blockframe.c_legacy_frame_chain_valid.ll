; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_blockframe.c_legacy_frame_chain_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_blockframe.c_legacy_frame_chain_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }

@DEPRECATED_USE_GENERIC_DUMMY_FRAMES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @legacy_frame_chain_valid(i64 %0, %struct.frame_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.frame_info*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.frame_info* %1, %struct.frame_info** %5, align 8
  %6 = load i64, i64* @DEPRECATED_USE_GENERIC_DUMMY_FRAMES, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %10 = call i32 @get_frame_pc(%struct.frame_info* %9)
  %11 = call i64 @DEPRECATED_PC_IN_CALL_DUMMY(i32 %10, i32 0, i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %45

14:                                               ; preds = %8, %2
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %45

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %21 = call i32 @get_frame_base(%struct.frame_info* %20)
  %22 = call i64 @INNER_THAN(i64 %19, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %45

25:                                               ; preds = %18
  %26 = call i64 (...) @DEPRECATED_FRAME_CHAIN_VALID_P()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %31 = call i32 @DEPRECATED_FRAME_CHAIN_VALID(i64 %29, %struct.frame_info* %30)
  store i32 %31, i32* %3, align 4
  br label %45

32:                                               ; preds = %25
  %33 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %34 = call i32 @get_frame_pc(%struct.frame_info* %33)
  %35 = call i64 @legacy_inside_entry_func(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %45

38:                                               ; preds = %32
  %39 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %40 = call i32 @frame_pc_unwind(%struct.frame_info* %39)
  %41 = call i64 @deprecated_inside_entry_file(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %45

44:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43, %37, %28, %24, %17, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @DEPRECATED_PC_IN_CALL_DUMMY(i32, i32, i32) #1

declare dso_local i32 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i64 @INNER_THAN(i64, i32) #1

declare dso_local i32 @get_frame_base(%struct.frame_info*) #1

declare dso_local i64 @DEPRECATED_FRAME_CHAIN_VALID_P(...) #1

declare dso_local i32 @DEPRECATED_FRAME_CHAIN_VALID(i64, %struct.frame_info*) #1

declare dso_local i64 @legacy_inside_entry_func(i32) #1

declare dso_local i64 @deprecated_inside_entry_file(i32) #1

declare dso_local i32 @frame_pc_unwind(%struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
