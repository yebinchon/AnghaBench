; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_frame_type_from_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_frame_type_from_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEPRECATED_USE_GENERIC_DUMMY_FRAMES = common dso_local global i64 0, align 8
@DUMMY_FRAME = common dso_local global i32 0, align 4
@SIGTRAMP_FRAME = common dso_local global i32 0, align 4
@NORMAL_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @frame_type_from_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frame_type_from_pc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @DEPRECATED_USE_GENERIC_DUMMY_FRAMES, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @DEPRECATED_PC_IN_CALL_DUMMY(i32 %8, i32 0, i32 0)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i32, i32* @DUMMY_FRAME, align 4
  store i32 %12, i32* %2, align 4
  br label %24

13:                                               ; preds = %7, %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @find_pc_partial_function(i32 %14, i8** %4, i32* null, i32* null)
  %16 = load i32, i32* %3, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @PC_IN_SIGTRAMP(i32 %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @SIGTRAMP_FRAME, align 4
  store i32 %21, i32* %2, align 4
  br label %24

22:                                               ; preds = %13
  %23 = load i32, i32* @NORMAL_FRAME, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %20, %11
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @DEPRECATED_PC_IN_CALL_DUMMY(i32, i32, i32) #1

declare dso_local i32 @find_pc_partial_function(i32, i8**, i32*, i32*) #1

declare dso_local i64 @PC_IN_SIGTRAMP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
