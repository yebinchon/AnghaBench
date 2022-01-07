; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_print-rtl.c_debug_rtx_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_print-rtl.c_debug_rtx_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug_rtx_count = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"insn uid %d not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @debug_rtx_find(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %16, %2
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @INSN_UID(i64 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %11, %12
  br label %14

14:                                               ; preds = %9, %6
  %15 = phi i1 [ false, %6 ], [ %13, %9 ]
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @NEXT_INSN(i64 %17)
  store i64 %18, i64* %4, align 8
  br label %6

19:                                               ; preds = %14
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* @debug_rtx_count, align 4
  %25 = call i32 @debug_rtx_list(i64 %23, i32 %24)
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %3, align 8
  br label %31

27:                                               ; preds = %19
  %28 = load i32, i32* @stderr, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i64 0, i64* %3, align 8
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

declare dso_local i32 @INSN_UID(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @debug_rtx_list(i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
