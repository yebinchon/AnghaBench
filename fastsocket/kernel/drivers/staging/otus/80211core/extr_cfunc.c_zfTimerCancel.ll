; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cfunc.c_zfTimerCancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cfunc.c_zfTimerCancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.zsTimerEntry*, %struct.zsTimerEntry* }
%struct.zsTimerEntry = type { i64, %struct.zsTimerEntry*, %struct.zsTimerEntry* }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_MAX_TIMER_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfTimerCancel(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.zsTimerEntry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @zmw_get_wlan_dev(i32* %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %12, align 8
  store %struct.zsTimerEntry* %13, %struct.zsTimerEntry** %5, align 8
  %14 = load i64, i64* @ZM_MAX_TIMER_COUNT, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %14, %18
  store i64 %19, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %109, %2
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %112

24:                                               ; preds = %20
  %25 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %5, align 8
  %26 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %104

30:                                               ; preds = %24
  %31 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %5, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %34, align 8
  %36 = icmp eq %struct.zsTimerEntry* %31, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %30
  %38 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %5, align 8
  %39 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %38, i32 0, i32 1
  %40 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %39, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store %struct.zsTimerEntry* %40, %struct.zsTimerEntry** %43, align 8
  %44 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %5, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %47, align 8
  %49 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %48, i32 0, i32 1
  store %struct.zsTimerEntry* %44, %struct.zsTimerEntry** %49, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %52, align 8
  %54 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %5, align 8
  %55 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %54, i32 0, i32 2
  store %struct.zsTimerEntry* %53, %struct.zsTimerEntry** %55, align 8
  %56 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %5, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store %struct.zsTimerEntry* %56, %struct.zsTimerEntry** %59, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %62, align 8
  store %struct.zsTimerEntry* %63, %struct.zsTimerEntry** %5, align 8
  br label %98

64:                                               ; preds = %30
  %65 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %5, align 8
  %66 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %65, i32 0, i32 1
  %67 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %66, align 8
  %68 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %5, align 8
  %69 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %68, i32 0, i32 2
  %70 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %69, align 8
  %71 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %70, i32 0, i32 1
  store %struct.zsTimerEntry* %67, %struct.zsTimerEntry** %71, align 8
  %72 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %5, align 8
  %73 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %72, i32 0, i32 2
  %74 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %73, align 8
  %75 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %5, align 8
  %76 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %75, i32 0, i32 1
  %77 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %76, align 8
  %78 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %77, i32 0, i32 2
  store %struct.zsTimerEntry* %74, %struct.zsTimerEntry** %78, align 8
  %79 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %5, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %82, align 8
  %84 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %83, i32 0, i32 1
  store %struct.zsTimerEntry* %79, %struct.zsTimerEntry** %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %87, align 8
  %89 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %5, align 8
  %90 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %89, i32 0, i32 2
  store %struct.zsTimerEntry* %88, %struct.zsTimerEntry** %90, align 8
  %91 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %5, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store %struct.zsTimerEntry* %91, %struct.zsTimerEntry** %94, align 8
  %95 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %5, align 8
  %96 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %95, i32 0, i32 1
  %97 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %96, align 8
  store %struct.zsTimerEntry* %97, %struct.zsTimerEntry** %5, align 8
  br label %98

98:                                               ; preds = %64, %37
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %101, align 8
  br label %108

104:                                              ; preds = %24
  %105 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %5, align 8
  %106 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %105, i32 0, i32 1
  %107 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %106, align 8
  store %struct.zsTimerEntry* %107, %struct.zsTimerEntry** %5, align 8
  br label %108

108:                                              ; preds = %104, %98
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %6, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %6, align 8
  br label %20

112:                                              ; preds = %20
  ret i64 0
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
