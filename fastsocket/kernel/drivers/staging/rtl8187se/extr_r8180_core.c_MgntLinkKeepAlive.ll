; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_MgntLinkKeepAlive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8180_core.c_MgntLinkKeepAlive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8180_priv = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@IEEE80211_LINKED = common dso_local global i64 0, align 8
@KEEP_ALIVE_INTERVAL = common dso_local global i32 0, align 4
@CHECK_FOR_HANG_PERIOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8180_priv*)* @MgntLinkKeepAlive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MgntLinkKeepAlive(%struct.r8180_priv* %0) #0 {
  %2 = alloca %struct.r8180_priv*, align 8
  store %struct.r8180_priv* %0, %struct.r8180_priv** %2, align 8
  %3 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %4 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %84

8:                                                ; preds = %1
  %9 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %10 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IEEE80211_LINKED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %84

16:                                               ; preds = %8
  %17 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %18 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %41, label %21

21:                                               ; preds = %16
  %22 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %23 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %27 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %21
  %31 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %32 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %36 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %34, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %30, %16
  %42 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %43 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %48 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @KEEP_ALIVE_INTERVAL, align 4
  %52 = load i32, i32* @CHECK_FOR_HANG_PERIOD, align 4
  %53 = sdiv i32 %51, %52
  %54 = sub nsw i32 %53, 1
  %55 = icmp sge i32 %50, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %41
  %57 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %58 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  store i32 0, i32* %59, align 8
  %60 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %61 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i32 @ieee80211_sta_ps_send_null_frame(%struct.TYPE_4__* %62, i32 0)
  br label %64

64:                                               ; preds = %56, %41
  br label %69

65:                                               ; preds = %30, %21
  %66 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %67 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %64
  %70 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %71 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %74 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  %76 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %77 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.r8180_priv*, %struct.r8180_priv** %2, align 8
  %82 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i64 %80, i64* %83, align 8
  br label %84

84:                                               ; preds = %7, %69, %8
  ret void
}

declare dso_local i32 @ieee80211_sta_ps_send_null_frame(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
