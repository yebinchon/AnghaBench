; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cfunc.c_zfBssInfoFree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cfunc.c_zfBssInfoFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, %struct.zsBssInfo** }
%struct.zsBssInfo = type { i64, i64, i64 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_MAX_BSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfBssInfoFree(i32* %0, %struct.zsBssInfo* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.zsBssInfo*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.zsBssInfo* %1, %struct.zsBssInfo** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @zmw_get_wlan_dev(i32* %5)
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load %struct.zsBssInfo**, %struct.zsBssInfo*** %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.zsBssInfo*, %struct.zsBssInfo** %10, i64 %14
  %16 = load %struct.zsBssInfo*, %struct.zsBssInfo** %15, align 8
  %17 = icmp eq %struct.zsBssInfo* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @zm_assert(i32 %18)
  %20 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %21 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %23 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %25 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load %struct.zsBssInfo**, %struct.zsBssInfo*** %29, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.zsBssInfo*, %struct.zsBssInfo** %30, i64 %34
  store %struct.zsBssInfo* %26, %struct.zsBssInfo** %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  %41 = load i32, i32* @ZM_MAX_BSS, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = and i64 %40, %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zm_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
