; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_adjust_paritybit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_adjust_paritybit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSN_CLASS_32 = common dso_local global i32 0, align 4
@INSN_CLASS_16 = common dso_local global i32 0, align 4
@INSN_CLASS_PCE = common dso_local global i32 0, align 4
@INSN_CLASS_SYN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @adjust_paritybit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adjust_paritybit(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @INSN_CLASS_32, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i64 2147483648, i64* %8, align 8
  store i64 32768, i64* %9, align 8
  br label %34

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @INSN_CLASS_16, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %33

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @INSN_CLASS_PCE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i64 0, i64* %8, align 8
  store i64 32768, i64* %9, align 8
  br label %32

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @INSN_CLASS_SYN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i64 2147483648, i64* %8, align 8
  store i64 32768, i64* %9, align 8
  br label %31

29:                                               ; preds = %24
  %30 = call i32 (...) @abort() #2
  unreachable

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31, %23
  br label %33

33:                                               ; preds = %32, %18
  br label %34

34:                                               ; preds = %33, %13
  %35 = load i64, i64* %3, align 8
  %36 = and i64 %35, 1073709056
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %3, align 8
  %38 = and i64 %37, 32767
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %6, align 8
  %41 = shl i64 %40, 1
  %42 = or i64 %39, %41
  %43 = load i64, i64* %9, align 8
  %44 = or i64 %42, %43
  %45 = load i64, i64* %7, align 8
  %46 = or i64 %44, %45
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  ret i64 %47
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
