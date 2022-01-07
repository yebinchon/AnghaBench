; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cfunc.c_zfBssInfoReorderList.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cfunc.c_zfBssInfoReorderList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.zsBssInfo*, %struct.zsBssInfo* }
%struct.zsBssInfo = type { i64, %struct.zsBssInfo* }

@wd = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfBssInfoReorderList(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.zsBssInfo*, align 8
  %4 = alloca %struct.zsBssInfo*, align 8
  %5 = alloca %struct.zsBssInfo*, align 8
  %6 = alloca %struct.zsBssInfo*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store %struct.zsBssInfo* null, %struct.zsBssInfo** %3, align 8
  store %struct.zsBssInfo* null, %struct.zsBssInfo** %4, align 8
  store %struct.zsBssInfo* null, %struct.zsBssInfo** %5, align 8
  store %struct.zsBssInfo* null, %struct.zsBssInfo** %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @zmw_get_wlan_dev(i32* %8)
  %10 = call i32 (...) @zmw_declare_for_critical_section()
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @zmw_enter_critical_section(i32* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %108

19:                                               ; preds = %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.zsBssInfo*, %struct.zsBssInfo** %23, align 8
  store %struct.zsBssInfo* %24, %struct.zsBssInfo** %4, align 8
  %25 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store %struct.zsBssInfo* %25, %struct.zsBssInfo** %29, align 8
  %30 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %31 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %30, i32 0, i32 1
  %32 = load %struct.zsBssInfo*, %struct.zsBssInfo** %31, align 8
  store %struct.zsBssInfo* %32, %struct.zsBssInfo** %3, align 8
  %33 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %34 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %33, i32 0, i32 1
  store %struct.zsBssInfo* null, %struct.zsBssInfo** %34, align 8
  br label %35

35:                                               ; preds = %100, %19
  %36 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %37 = icmp ne %struct.zsBssInfo* %36, null
  br i1 %37, label %38, label %107

38:                                               ; preds = %35
  store i64 0, i64* %7, align 8
  br label %39

39:                                               ; preds = %38, %97
  %40 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %41 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %44 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %42, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %39
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store %struct.zsBssInfo* %51, %struct.zsBssInfo** %55, align 8
  %56 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %57 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %56, i32 0, i32 1
  %58 = load %struct.zsBssInfo*, %struct.zsBssInfo** %57, align 8
  store %struct.zsBssInfo* %58, %struct.zsBssInfo** %5, align 8
  %59 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %60 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %61 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %60, i32 0, i32 1
  store %struct.zsBssInfo* %59, %struct.zsBssInfo** %61, align 8
  br label %100

62:                                               ; preds = %47
  %63 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %64 = load %struct.zsBssInfo*, %struct.zsBssInfo** %6, align 8
  %65 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %64, i32 0, i32 1
  store %struct.zsBssInfo* %63, %struct.zsBssInfo** %65, align 8
  %66 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %67 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %66, i32 0, i32 1
  %68 = load %struct.zsBssInfo*, %struct.zsBssInfo** %67, align 8
  store %struct.zsBssInfo* %68, %struct.zsBssInfo** %5, align 8
  %69 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %70 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %71 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %70, i32 0, i32 1
  store %struct.zsBssInfo* %69, %struct.zsBssInfo** %71, align 8
  br label %100

72:                                               ; preds = %39
  %73 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %74 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %73, i32 0, i32 1
  %75 = load %struct.zsBssInfo*, %struct.zsBssInfo** %74, align 8
  %76 = icmp ne %struct.zsBssInfo* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  store %struct.zsBssInfo* %78, %struct.zsBssInfo** %6, align 8
  %79 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %80 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %79, i32 0, i32 1
  %81 = load %struct.zsBssInfo*, %struct.zsBssInfo** %80, align 8
  store %struct.zsBssInfo* %81, %struct.zsBssInfo** %4, align 8
  br label %96

82:                                               ; preds = %72
  %83 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %84 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  %85 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %84, i32 0, i32 1
  store %struct.zsBssInfo* %83, %struct.zsBssInfo** %85, align 8
  %86 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %87 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %86, i32 0, i32 1
  %88 = load %struct.zsBssInfo*, %struct.zsBssInfo** %87, align 8
  store %struct.zsBssInfo* %88, %struct.zsBssInfo** %5, align 8
  %89 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  store %struct.zsBssInfo* %89, %struct.zsBssInfo** %93, align 8
  %94 = load %struct.zsBssInfo*, %struct.zsBssInfo** %3, align 8
  %95 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %94, i32 0, i32 1
  store %struct.zsBssInfo* null, %struct.zsBssInfo** %95, align 8
  br label %100

96:                                               ; preds = %77
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %7, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %7, align 8
  br label %39

100:                                              ; preds = %82, %62, %50
  %101 = load %struct.zsBssInfo*, %struct.zsBssInfo** %5, align 8
  store %struct.zsBssInfo* %101, %struct.zsBssInfo** %3, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load %struct.zsBssInfo*, %struct.zsBssInfo** %105, align 8
  store %struct.zsBssInfo* %106, %struct.zsBssInfo** %4, align 8
  br label %35

107:                                              ; preds = %35
  br label %108

108:                                              ; preds = %107, %1
  %109 = load i32*, i32** %2, align 8
  %110 = call i32 @zmw_leave_critical_section(i32* %109)
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
