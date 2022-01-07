; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_acct.c_encode_comp_t.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_acct.c_encode_comp_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXFRACT = common dso_local global i64 0, align 8
@EXPSIZE = common dso_local global i32 0, align 4
@MANTSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @encode_comp_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_comp_t(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %9, %1
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @MAXFRACT, align 8
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load i64, i64* %2, align 8
  %11 = load i32, i32* @EXPSIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = shl i32 1, %12
  %14 = sext i32 %13 to i64
  %15 = and i64 %10, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @EXPSIZE, align 4
  %18 = load i64, i64* %2, align 8
  %19 = zext i32 %17 to i64
  %20 = lshr i64 %18, %19
  store i64 %20, i64* %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5

23:                                               ; preds = %5
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i64, i64* %2, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %2, align 8
  %29 = load i64, i64* @MAXFRACT, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* @EXPSIZE, align 4
  %33 = load i64, i64* %2, align 8
  %34 = zext i32 %32 to i64
  %35 = lshr i64 %33, %34
  store i64 %35, i64* %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %26, %23
  %39 = load i32, i32* @MANTSIZE, align 4
  %40 = load i32, i32* %3, align 4
  %41 = shl i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load i64, i64* %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
