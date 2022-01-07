; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_CardComputeCrc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_CardComputeCrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CardComputeCrc(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 4294967295, i64* %5, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %48, %2
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %51

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %44, %14
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %20, 8
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = and i64 %23, 2147483648
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 1
  %30 = xor i32 %27, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = shl i64 %32, 1
  store i64 %33, i64* %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = ashr i32 %34, 1
  store i32 %35, i32* %9, align 4
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %22
  %39 = load i64, i64* %5, align 8
  %40 = xor i64 %39, 79764918
  %41 = load i64, i64* %6, align 8
  %42 = or i64 %40, %41
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %38, %22
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %19

47:                                               ; preds = %19
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %7, align 8
  br label %10

51:                                               ; preds = %10
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
