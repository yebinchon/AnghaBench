; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_cheap_bb_rtx_cost_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_cheap_bb_rtx_cost_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @cheap_bb_rtx_cost_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cheap_bb_rtx_cost_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @BB_HEAD(i32 %9)
  store i64 %10, i64* %7, align 8
  br label %11

11:                                               ; preds = %2, %43
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @NONJUMP_INSN_P(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @PATTERN(i64 %16)
  %18 = call i32 @insn_rtx_cost(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %47

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %47

30:                                               ; preds = %22
  br label %37

31:                                               ; preds = %11
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @CALL_P(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %47

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @BB_END(i32 %39)
  %41 = icmp eq i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %46

43:                                               ; preds = %37
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @NEXT_INSN(i64 %44)
  store i64 %45, i64* %7, align 8
  br label %11

46:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %35, %29, %21
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @BB_HEAD(i32) #1

declare dso_local i64 @NONJUMP_INSN_P(i64) #1

declare dso_local i32 @insn_rtx_cost(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i64 @BB_END(i32) #1

declare dso_local i64 @NEXT_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
