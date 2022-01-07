; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cfunc.c_zfTimerCheckAndHandle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cfunc.c_zfTimerCheckAndHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.zsTimerEntry*, %struct.zsTimerEntry* }
%struct.zsTimerEntry = type { i64, %struct.zsTimerEntry*, %struct.zsTimerEntry*, i32 }

@ZM_MAX_TIMER_COUNT = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfTimerCheckAndHandle(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.zsTimerEntry*, align 8
  %5 = alloca %struct.zsTimerEntry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.zsTimerEntry* null, %struct.zsTimerEntry** %5, align 8
  %12 = load i32, i32* @ZM_MAX_TIMER_COUNT, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @zmw_get_wlan_dev(i32* %16)
  %18 = call i32 (...) @zmw_declare_for_critical_section()
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %118

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @zmw_enter_critical_section(i32* %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %29, align 8
  store %struct.zsTimerEntry* %30, %struct.zsTimerEntry** %4, align 8
  %31 = load i32, i32* @ZM_MAX_TIMER_COUNT, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %31, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %10, align 8
  store i64 0, i64* %8, align 8
  br label %38

38:                                               ; preds = %71, %24
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %38
  %43 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %4, align 8
  %44 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %42
  %51 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %4, align 8
  %52 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  %58 = icmp slt i64 %57, 1000000000
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %74

60:                                               ; preds = %50, %42
  %61 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %4, align 8
  %62 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %9, align 8
  %66 = getelementptr inbounds i32, i32* %15, i64 %64
  store i32 %63, i32* %66, align 4
  %67 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %4, align 8
  store %struct.zsTimerEntry* %67, %struct.zsTimerEntry** %5, align 8
  %68 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %4, align 8
  %69 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %68, i32 0, i32 2
  %70 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %69, align 8
  store %struct.zsTimerEntry* %70, %struct.zsTimerEntry** %4, align 8
  br label %71

71:                                               ; preds = %60
  %72 = load i64, i64* %8, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %8, align 8
  br label %38

74:                                               ; preds = %59, %38
  %75 = load i64, i64* %9, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %112

77:                                               ; preds = %74
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %80, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %84, align 8
  %86 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %85, i32 0, i32 2
  store %struct.zsTimerEntry* %81, %struct.zsTimerEntry** %86, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %89, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %93, align 8
  %95 = getelementptr inbounds %struct.zsTimerEntry, %struct.zsTimerEntry* %94, i32 0, i32 1
  store %struct.zsTimerEntry* %90, %struct.zsTimerEntry** %95, align 8
  %96 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %4, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  store %struct.zsTimerEntry* %96, %struct.zsTimerEntry** %99, align 8
  %100 = load %struct.zsTimerEntry*, %struct.zsTimerEntry** %5, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store %struct.zsTimerEntry* %100, %struct.zsTimerEntry** %103, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %104
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 8
  br label %112

112:                                              ; preds = %77, %74
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @zmw_leave_critical_section(i32* %113)
  %115 = load i32*, i32** %3, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @zfProcessEvent(i32* %115, i32* %15, i64 %116)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %118

118:                                              ; preds = %112, %23
  %119 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zmw_get_wlan_dev(i32*) #2

declare dso_local i32 @zmw_declare_for_critical_section(...) #2

declare dso_local i32 @zmw_enter_critical_section(i32*) #2

declare dso_local i32 @zmw_leave_critical_section(i32*) #2

declare dso_local i32 @zfProcessEvent(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
