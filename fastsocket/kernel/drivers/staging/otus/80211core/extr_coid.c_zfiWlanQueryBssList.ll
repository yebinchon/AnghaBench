; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_coid.c_zfiWlanQueryBssList.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_coid.c_zfiWlanQueryBssList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.zsBssInfo* }
%struct.zsBssInfo = type { %struct.zsBssInfo* }
%struct.zsBssList = type { i32, %struct.zsBssInfo* }

@wd = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfiWlanQueryBssList(i32* %0, %struct.zsBssList* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.zsBssList*, align 8
  %5 = alloca %struct.zsBssInfo*, align 8
  %6 = alloca %struct.zsBssInfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.zsBssList* %1, %struct.zsBssList** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @zmw_get_wlan_dev(i32* %10)
  %12 = call i32 (...) @zmw_declare_for_critical_section()
  %13 = load %struct.zsBssList*, %struct.zsBssList** %4, align 8
  %14 = bitcast %struct.zsBssList* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 16
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = bitcast i32* %17 to %struct.zsBssInfo*
  %19 = load %struct.zsBssList*, %struct.zsBssList** %4, align 8
  %20 = getelementptr inbounds %struct.zsBssList, %struct.zsBssList* %19, i32 0, i32 1
  store %struct.zsBssInfo* %18, %struct.zsBssInfo** %20, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @zmw_enter_critical_section(i32* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.zsBssInfo*, %struct.zsBssInfo** %26, align 8
  store %struct.zsBssInfo* %27, %struct.zsBssInfo** %5, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = bitcast i32* %28 to %struct.zsBssInfo*
  store %struct.zsBssInfo* %29, %struct.zsBssInfo** %6, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.zsBssList*, %struct.zsBssList** %4, align 8
  %36 = getelementptr inbounds %struct.zsBssList, %struct.zsBssList* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %77, %2
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %80

45:                                               ; preds = %37
  %46 = load %struct.zsBssInfo*, %struct.zsBssInfo** %6, align 8
  %47 = bitcast %struct.zsBssInfo* %46 to i32*
  %48 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %49 = bitcast %struct.zsBssInfo* %48 to i32*
  %50 = call i32 @zfMemoryCopy(i32* %47, i32* %49, i32 8)
  %51 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %52 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %51, i32 0, i32 0
  %53 = load %struct.zsBssInfo*, %struct.zsBssInfo** %52, align 8
  %54 = icmp ne %struct.zsBssInfo* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %45
  %56 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  %57 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %56, i32 0, i32 0
  %58 = load %struct.zsBssInfo*, %struct.zsBssInfo** %57, align 8
  store %struct.zsBssInfo* %58, %struct.zsBssInfo** %5, align 8
  %59 = load %struct.zsBssInfo*, %struct.zsBssInfo** %6, align 8
  %60 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %59, i64 1
  %61 = load %struct.zsBssInfo*, %struct.zsBssInfo** %6, align 8
  %62 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %61, i32 0, i32 0
  store %struct.zsBssInfo* %60, %struct.zsBssInfo** %62, align 8
  %63 = load %struct.zsBssInfo*, %struct.zsBssInfo** %6, align 8
  %64 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %63, i32 1
  store %struct.zsBssInfo* %64, %struct.zsBssInfo** %6, align 8
  br label %76

65:                                               ; preds = %45
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  %73 = icmp eq i32 %66, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @zm_assert(i32 %74)
  br label %76

76:                                               ; preds = %65, %55
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %37

80:                                               ; preds = %37
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @zmw_leave_critical_section(i32* %81)
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @zfScanMgrScanAck(i32* %83)
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zfMemoryCopy(i32*, i32*, i32) #1

declare dso_local i32 @zm_assert(i32) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfScanMgrScanAck(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
