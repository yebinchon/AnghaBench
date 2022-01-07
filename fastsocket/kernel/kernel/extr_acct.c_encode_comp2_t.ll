; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_acct.c_encode_comp2_t.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_acct.c_encode_comp2_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXFRACT2 = common dso_local global i32 0, align 4
@MAXEXP2 = common dso_local global i32 0, align 4
@MANTSIZE2 = common dso_local global i32 0, align 4
@EXPSIZE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @encode_comp2_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @encode_comp2_t(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MAXFRACT2, align 4
  %8 = ashr i32 %7, 1
  %9 = icmp sgt i32 %6, %8
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %15, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @MAXFRACT2, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %11

22:                                               ; preds = %11
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @MAXFRACT2, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %25, %22
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @MAXEXP2, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* @MANTSIZE2, align 4
  %41 = load i32, i32* @EXPSIZE2, align 4
  %42 = add nsw i32 %40, %41
  %43 = sub nsw i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = shl i64 1, %44
  %46 = sub i64 %45, 1
  store i64 %46, i64* %2, align 8
  br label %58

47:                                               ; preds = %35
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @MAXFRACT2, align 4
  %50 = ashr i32 %49, 1
  %51 = and i32 %48, %50
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @MANTSIZE2, align 4
  %54 = sub nsw i32 %53, 1
  %55 = shl i32 %52, %54
  %56 = or i32 %51, %55
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %2, align 8
  br label %58

58:                                               ; preds = %47, %39
  %59 = load i64, i64* %2, align 8
  ret i64 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
