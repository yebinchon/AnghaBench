; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_print-rtl.c_debug_rtx_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_print-rtl.c_debug_rtx_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_rtx_list(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %21

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 0, %15
  br label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ %16, %14 ], [ %18, %17 ]
  br label %21

21:                                               ; preds = %19, %10
  %22 = phi i32 [ 1, %10 ], [ %20, %19 ]
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = sdiv i32 %26, 2
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %39, %25
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @PREV_INSN(i64 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %42

36:                                               ; preds = %31
  %37 = load i64, i64* %3, align 8
  %38 = call i64 @PREV_INSN(i64 %37)
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %5, align 4
  br label %28

42:                                               ; preds = %35, %28
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %5, align 4
  %45 = load i64, i64* %3, align 8
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %59, %43
  %47 = load i32, i32* %5, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i1 [ false, %46 ], [ %51, %49 ]
  br i1 %53, label %54, label %64

54:                                               ; preds = %52
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @debug_rtx(i64 %55)
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %5, align 4
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @NEXT_INSN(i64 %62)
  store i64 %63, i64* %7, align 8
  br label %46

64:                                               ; preds = %52
  ret void
}

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i32 @debug_rtx(i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @NEXT_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
