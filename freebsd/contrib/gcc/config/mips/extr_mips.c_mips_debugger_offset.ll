; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_debugger_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_debugger_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }

@const0_rtx = common dso_local global i64 0, align 8
@stack_pointer_rtx = common dso_local global i64 0, align 8
@frame_pointer_rtx = common dso_local global i64 0, align 8
@hard_frame_pointer_rtx = common dso_local global i64 0, align 8
@cfun = common dso_local global %struct.TYPE_6__* null, align 8
@frame_pointer_needed = common dso_local global i64 0, align 8
@TARGET_MIPS16 = common dso_local global i64 0, align 8
@arg_pointer_rtx = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mips_debugger_offset(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @const0_rtx, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @eliminate_constant_term(i64 %9, i64* %5)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @INTVAL(i64 %14)
  store i64 %15, i64* %4, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @stack_pointer_rtx, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @frame_pointer_rtx, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @hard_frame_pointer_rtx, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %24, %20, %16
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = call i32 (...) @get_frame_size()
  %38 = call i64 @compute_frame_size(i32 %37)
  br label %46

39:                                               ; preds = %28
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  br label %46

46:                                               ; preds = %39, %36
  %47 = phi i64 [ %38, %36 ], [ %45, %39 ]
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* @frame_pointer_needed, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i64, i64* @TARGET_MIPS16, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cfun, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub nsw i64 %60, %59
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %53, %50, %46
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* %7, align 8
  %65 = sub nsw i64 %63, %64
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %62, %24
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

declare dso_local i64 @eliminate_constant_term(i64, i64*) #1

declare dso_local i64 @INTVAL(i64) #1

declare dso_local i64 @compute_frame_size(i32) #1

declare dso_local i32 @get_frame_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
