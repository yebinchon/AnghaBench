; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_mlmetxrx.c_MLMESendFrame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_mlmetxrx.c_MLMESendFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsoft_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32*, i32, i32, i32, i32 }

@PACKET_FREE_TO_USE = common dso_local global i64 0, align 8
@PACKET_COME_FROM_MLME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MLMESendFrame(%struct.wbsoft_priv* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wbsoft_priv*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wbsoft_priv* %0, %struct.wbsoft_priv** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %6, align 8
  %11 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PACKET_FREE_TO_USE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %6, align 8
  %18 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  store i32 0, i32* %5, align 4
  br label %46

22:                                               ; preds = %4
  %23 = load i64, i64* @PACKET_COME_FROM_MLME, align 8
  %24 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %6, align 8
  %25 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %6, align 8
  %29 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32* %27, i32** %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %6, align 8
  %33 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %6, align 8
  %37 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  store i32 %35, i32* %38, align 8
  %39 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %6, align 8
  %40 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %6, align 8
  %45 = call i32 @Mds_Tx(%struct.wbsoft_priv* %44)
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %22, %16
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @Mds_Tx(%struct.wbsoft_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
