; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_dm.c_IncludedInSupportedRates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_dm.c_IncludedInSupportedRates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8180_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64*, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IncludedInSupportedRates(%struct.r8180_priv* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r8180_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca i64, align 8
  store %struct.r8180_priv* %0, %struct.r8180_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 127, i64* %8, align 8
  store i16 0, i16* %10, align 2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %8, align 8
  %14 = and i64 %12, %13
  store i64 %14, i64* %11, align 8
  %15 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %16 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %22 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %47, %2
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %33 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = and i64 %40, %41
  %43 = load i64, i64* %11, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  store i16 1, i16* %10, align 2
  br label %77

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %27

50:                                               ; preds = %27
  store i64 0, i64* %9, align 8
  br label %51

51:                                               ; preds = %71, %50
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = load %struct.r8180_priv*, %struct.r8180_priv** %4, align 8
  %57 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = and i64 %64, %65
  %67 = load i64, i64* %11, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  store i16 1, i16* %10, align 2
  br label %77

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %9, align 8
  br label %51

74:                                               ; preds = %51
  %75 = load i16, i16* %10, align 2
  %76 = zext i16 %75 to i32
  store i32 %76, i32* %3, align 4
  br label %80

77:                                               ; preds = %69, %45
  %78 = load i16, i16* %10, align 2
  %79 = zext i16 %78 to i32
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
