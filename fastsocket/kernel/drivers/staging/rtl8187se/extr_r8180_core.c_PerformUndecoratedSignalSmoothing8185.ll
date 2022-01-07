; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_PerformUndecoratedSignalSmoothing8185.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_PerformUndecoratedSignalSmoothing8185.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8180_priv = type { i32, i32, i32, i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PerformUndecoratedSignalSmoothing8185(%struct.r8180_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.r8180_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.r8180_priv* %0, %struct.r8180_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %7 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %9 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %14 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 5
  %17 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %18 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %19, 10
  %21 = add nsw i32 %16, %20
  %22 = sdiv i32 %21, 6
  %23 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %24 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %32

25:                                               ; preds = %2
  %26 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %27 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %28, 10
  %30 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %31 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %25, %12
  %33 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %34 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 50
  %37 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %38 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %39, 11
  %41 = add nsw i32 %36, %40
  %42 = sdiv i32 %41, 60
  %43 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %44 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %32
  %48 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %49 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %52 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %51, i32 0, i32 5
  store i64 %50, i64* %52, align 8
  br label %56

53:                                               ; preds = %32
  %54 = load %struct.r8180_priv*, %struct.r8180_priv** %3, align 8
  %55 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %47
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
