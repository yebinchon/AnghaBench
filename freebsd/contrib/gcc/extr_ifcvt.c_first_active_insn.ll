; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_first_active_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_first_active_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @first_active_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @first_active_insn(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @BB_HEAD(i32 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @LABEL_P(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @BB_END(i32 %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i64, i64* @NULL_RTX, align 8
  store i64 %16, i64* %2, align 8
  br label %43

17:                                               ; preds = %10
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @NEXT_INSN(i64 %18)
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %17, %1
  br label %21

21:                                               ; preds = %32, %20
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @NOTE_P(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @BB_END(i32 %27)
  %29 = icmp eq i64 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i64, i64* @NULL_RTX, align 8
  store i64 %31, i64* %2, align 8
  br label %43

32:                                               ; preds = %25
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @NEXT_INSN(i64 %33)
  store i64 %34, i64* %4, align 8
  br label %21

35:                                               ; preds = %21
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @JUMP_P(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* @NULL_RTX, align 8
  store i64 %40, i64* %2, align 8
  br label %43

41:                                               ; preds = %35
  %42 = load i64, i64* %4, align 8
  store i64 %42, i64* %2, align 8
  br label %43

43:                                               ; preds = %41, %39, %30, %15
  %44 = load i64, i64* %2, align 8
  ret i64 %44
}

declare dso_local i64 @BB_HEAD(i32) #1

declare dso_local i64 @LABEL_P(i64) #1

declare dso_local i64 @BB_END(i32) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @NOTE_P(i64) #1

declare dso_local i64 @JUMP_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
