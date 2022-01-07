; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_previous_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_previous_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEQUENCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @previous_insn(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @PREV_INSN(i64 %6)
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %5
  %11 = load i64, i64* %2, align 8
  %12 = call i64 @NONJUMP_INSN_P(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @PATTERN(i64 %15)
  %17 = call i64 @GET_CODE(i32 %16)
  %18 = load i64, i64* @SEQUENCE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @PATTERN(i64 %21)
  %23 = load i64, i64* %2, align 8
  %24 = call i32 @PATTERN(i64 %23)
  %25 = call i64 @XVECLEN(i32 %24, i32 0)
  %26 = sub nsw i64 %25, 1
  %27 = call i64 @XVECEXP(i32 %22, i32 0, i64 %26)
  store i64 %27, i64* %2, align 8
  br label %28

28:                                               ; preds = %20, %14, %10, %5
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i64, i64* %2, align 8
  ret i64 %30
}

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @NONJUMP_INSN_P(i64) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @XVECEXP(i32, i32, i64) #1

declare dso_local i64 @XVECLEN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
