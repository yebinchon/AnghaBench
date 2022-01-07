; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_get_curr_tx_free_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_get_curr_tx_free_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8180_priv = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [4 x i8] c"BUG\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_curr_tx_free_desc(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r8180_priv*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %10)
  store %struct.r8180_priv* %11, %struct.r8180_priv** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %55 [
    i32 130, label %13
    i32 132, label %20
    i32 133, label %27
    i32 129, label %34
    i32 128, label %41
    i32 131, label %48
  ]

13:                                               ; preds = %2
  %14 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %15 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %14, i32 0, i32 12
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  %17 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %18 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %17, i32 0, i32 11
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  br label %56

20:                                               ; preds = %2
  %21 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %22 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %21, i32 0, i32 10
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %8, align 8
  %24 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %25 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %24, i32 0, i32 9
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %7, align 8
  br label %56

27:                                               ; preds = %2
  %28 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %29 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %28, i32 0, i32 8
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  %31 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %32 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %7, align 8
  br label %56

34:                                               ; preds = %2
  %35 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %36 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %8, align 8
  %38 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %39 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %7, align 8
  br label %56

41:                                               ; preds = %2
  %42 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %43 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %8, align 8
  %45 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %46 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %7, align 8
  br label %56

48:                                               ; preds = %2
  %49 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %50 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %8, align 8
  %52 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %53 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %7, align 8
  br label %56

55:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %93

56:                                               ; preds = %48, %41, %34, %27, %20, %13
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ule i32* %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %62 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = ptrtoint i32* %65 to i64
  %68 = ptrtoint i32* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 4
  %71 = sdiv i64 %70, 8
  %72 = sub nsw i64 %64, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  br label %83

74:                                               ; preds = %56
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = ptrtoint i32* %75 to i64
  %78 = ptrtoint i32* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 4
  %81 = sdiv i64 %80, 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %74, %60
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.r8180_priv*, %struct.r8180_priv** %6, align 8
  %86 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sgt i32 %84, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = call i32 @DMESG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %83
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %55
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @DMESG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
