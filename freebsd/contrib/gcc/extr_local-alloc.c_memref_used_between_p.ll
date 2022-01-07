; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_memref_used_between_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_memref_used_between_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @memref_used_between_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memref_used_between_p(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @NEXT_INSN(i64 %9)
  store i64 %10, i64* %8, align 8
  br label %11

11:                                               ; preds = %42, %3
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @NEXT_INSN(i64 %13)
  %15 = icmp ne i64 %12, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %11
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @INSN_P(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %42

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @PATTERN(i64 %23)
  %25 = call i64 @memref_referenced_p(i64 %22, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %46

28:                                               ; preds = %21
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @CALL_P(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @CONST_OR_PURE_CALL_P(i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @pure_call_p(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %32
  store i32 1, i32* %4, align 4
  br label %46

41:                                               ; preds = %36, %28
  br label %42

42:                                               ; preds = %41, %20
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @NEXT_INSN(i64 %43)
  store i64 %44, i64* %8, align 8
  br label %11

45:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %40, %27
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @INSN_P(i64) #1

declare dso_local i64 @memref_referenced_p(i64, i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i32 @CONST_OR_PURE_CALL_P(i64) #1

declare dso_local i64 @pure_call_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
