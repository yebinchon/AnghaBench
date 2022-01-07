; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_ts_bm.c_subpattern.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_ts_bm.c_subpattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32, i32)* @subpattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subpattern(i64* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %12, %13
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %16, %17
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %57, %4
  %21 = load i64*, i64** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %9, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %5, align 8
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %10, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %26, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %20
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, i32* %11, align 4
  br label %58

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i64*, i64** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %48, %54
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %11, align 4
  br label %58

57:                                               ; preds = %38
  br label %20

58:                                               ; preds = %42, %37, %20
  %59 = load i32, i32* %11, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
