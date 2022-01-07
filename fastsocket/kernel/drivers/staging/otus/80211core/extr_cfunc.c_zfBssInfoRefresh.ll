; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cfunc.c_zfBssInfoRefresh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cfunc.c_zfBssInfoRefresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.zsBssInfo* }
%struct.zsBssInfo = type { i32, i32, %struct.zsBssInfo* }

@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_BSS_INFO_VALID_BIT = common dso_local global i32 0, align 4
@ZM_MS_PER_TICK = common dso_local global i32 0, align 4
@ZM_BSS_CACHE_TIME_IN_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfBssInfoRefresh(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zsBssInfo*, align 8
  %6 = alloca %struct.zsBssInfo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @zmw_get_wlan_dev(i32* %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.zsBssInfo*, %struct.zsBssInfo** %14, align 8
  store %struct.zsBssInfo* %15, %struct.zsBssInfo** %5, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %21

21:                                               ; preds = %85, %2
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %88

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %30 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %29, i32 0, i32 2
  %31 = load %struct.zsBssInfo*, %struct.zsBssInfo** %30, align 8
  store %struct.zsBssInfo* %31, %struct.zsBssInfo** %6, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %34 = call i32 @zfBssInfoRemoveFromList(i32* %32, %struct.zsBssInfo* %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %37 = call i32 @zfBssInfoFree(i32* %35, %struct.zsBssInfo* %36)
  %38 = load %struct.zsBssInfo*, %struct.zsBssInfo** %6, align 8
  store %struct.zsBssInfo* %38, %struct.zsBssInfo** %5, align 8
  br label %84

39:                                               ; preds = %25
  %40 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %41 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ZM_BSS_INFO_VALID_BIT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load i32, i32* @ZM_BSS_INFO_VALID_BIT, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %50 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %54 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %53, i32 0, i32 2
  %55 = load %struct.zsBssInfo*, %struct.zsBssInfo** %54, align 8
  store %struct.zsBssInfo* %55, %struct.zsBssInfo** %5, align 8
  br label %83

56:                                               ; preds = %39
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %61 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  %64 = load i32, i32* @ZM_MS_PER_TICK, align 4
  %65 = sdiv i32 20000, %64
  %66 = icmp sgt i32 %63, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %56
  %68 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %69 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %68, i32 0, i32 2
  %70 = load %struct.zsBssInfo*, %struct.zsBssInfo** %69, align 8
  store %struct.zsBssInfo* %70, %struct.zsBssInfo** %6, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %73 = call i32 @zfBssInfoRemoveFromList(i32* %71, %struct.zsBssInfo* %72)
  %74 = load i32*, i32** %3, align 8
  %75 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %76 = call i32 @zfBssInfoFree(i32* %74, %struct.zsBssInfo* %75)
  %77 = load %struct.zsBssInfo*, %struct.zsBssInfo** %6, align 8
  store %struct.zsBssInfo* %77, %struct.zsBssInfo** %5, align 8
  br label %82

78:                                               ; preds = %56
  %79 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %80 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %79, i32 0, i32 2
  %81 = load %struct.zsBssInfo*, %struct.zsBssInfo** %80, align 8
  store %struct.zsBssInfo* %81, %struct.zsBssInfo** %5, align 8
  br label %82

82:                                               ; preds = %78, %67
  br label %83

83:                                               ; preds = %82, %46
  br label %84

84:                                               ; preds = %83, %28
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %7, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %7, align 8
  br label %21

88:                                               ; preds = %21
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfBssInfoRemoveFromList(i32*, %struct.zsBssInfo*) #1

declare dso_local i32 @zfBssInfoFree(i32*, %struct.zsBssInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
