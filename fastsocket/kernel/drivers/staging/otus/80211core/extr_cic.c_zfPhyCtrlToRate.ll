; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cic.c_zfPhyCtrlToRate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cic.c_zfPhyCtrlToRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zcOfdmPhyCrtlToRate = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfPhyCtrlToRate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 3
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = ashr i32 %9, 18
  %11 = and i32 %10, 63
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 31
  %14 = and i32 %13, 1
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = icmp sle i32 %18, 3
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %6, align 8
  br label %64

23:                                               ; preds = %17, %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp sge i32 %27, 8
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp sle i32 %30, 15
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i64*, i64** @zcOfdmPhyCrtlToRate, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  br label %63

39:                                               ; preds = %29, %26, %23
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = icmp sle i32 %43, 15
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, 12
  store i64 %48, i64* %6, align 8
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 7
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, 12
  %58 = add nsw i64 %57, 2
  store i64 %58, i64* %6, align 8
  br label %60

59:                                               ; preds = %51
  store i64 30, i64* %6, align 8
  br label %60

60:                                               ; preds = %59, %54
  br label %61

61:                                               ; preds = %60, %45
  br label %62

62:                                               ; preds = %61, %42, %39
  br label %63

63:                                               ; preds = %62, %32
  br label %64

64:                                               ; preds = %63, %20
  %65 = load i64, i64* %6, align 8
  ret i64 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
