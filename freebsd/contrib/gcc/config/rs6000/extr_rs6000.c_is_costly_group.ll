; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_is_costly_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_is_costly_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64)* @is_costly_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_costly_group(i64* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = call i32 (...) @rs6000_issue_rate()
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %56, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %13
  %18 = load i64*, i64** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %56

26:                                               ; preds = %17
  %27 = load i64, i64* %10, align 8
  %28 = call i64 @INSN_DEPEND(i64 %27)
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %52, %26
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @XEXP(i64 %33, i32 0)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @insn_cost(i64 %39, i64 %40, i64 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @rs6000_is_costly_dependence(i64 %43, i64 %44, i64 %45, i32 %46, i32 0)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %60

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %32
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %7, align 8
  %54 = call i64 @XEXP(i64 %53, i32 1)
  store i64 %54, i64* %7, align 8
  br label %29

55:                                               ; preds = %29
  br label %56

56:                                               ; preds = %55, %25
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %13

59:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @rs6000_issue_rate(...) #1

declare dso_local i64 @INSN_DEPEND(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @insn_cost(i64, i64, i64) #1

declare dso_local i64 @rs6000_is_costly_dependence(i64, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
