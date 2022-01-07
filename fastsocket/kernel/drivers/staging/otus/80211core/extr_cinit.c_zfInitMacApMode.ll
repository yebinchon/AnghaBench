; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cinit.c_zfInitMacApMode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cinit.c_zfInitMacApMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ZM_MODE_AP = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_HAL_80211_MODE_AP = common dso_local global i32 0, align 4
@ZM_MAX_AP_SUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfInitMacApMode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x i32], align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @zmw_get_wlan_dev(i32* %5)
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @ZM_MODE_AP, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sdiv i32 %11, %15
  %17 = call i32 @zfHpEnableBeacon(i32* %7, i32 %8, i32 %16, i32 1, i32 0)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @ZM_HAL_80211_MODE_AP, align 4
  %20 = call i32 @zfHpSetApStaMode(i32* %18, i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 2
  br i1 %25, label %26, label %71

26:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %67, %26
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ZM_MAX_AP_SUPPORT, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %27
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %3, align 4
  %37 = ashr i32 %35, %36
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %31
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %3, align 4
  %59 = shl i32 %58, 8
  %60 = add nsw i32 %57, %59
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %2, align 8
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @zfHpSetMacAddress(i32* %62, i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %40, %31
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %27

70:                                               ; preds = %27
  br label %71

71:                                               ; preds = %70, %1
  %72 = load i32*, i32** %2, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @zfHpSetBasicRateSet(i32* %72, i32 %75, i32 %78)
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @zfUpdateDefaultQosParameter(i32* %80, i32 1)
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfHpEnableBeacon(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @zfHpSetApStaMode(i32*, i32) #1

declare dso_local i32 @zfHpSetMacAddress(i32*, i32*, i32) #1

declare dso_local i32 @zfHpSetBasicRateSet(i32*, i32, i32) #1

declare dso_local i32 @zfUpdateDefaultQosParameter(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
