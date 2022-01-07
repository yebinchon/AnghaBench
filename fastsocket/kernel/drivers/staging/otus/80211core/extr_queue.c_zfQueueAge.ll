; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_queue.c_zfQueueAge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_queue.c_zfQueueAge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zsQueue = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@ZM_MS_PER_TICK = common dso_local global i32 0, align 4
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Age frame in queue!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfQueueAge(i32* %0, %struct.zsQueue* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.zsQueue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.zsQueue* %1, %struct.zsQueue** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call i32 (...) @zmw_declare_for_critical_section()
  br label %12

12:                                               ; preds = %4, %73
  store i32* null, i32** %9, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @zmw_enter_critical_section(i32* %13)
  %15 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %16 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %19 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %12
  %23 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %24 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %27 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* @ZM_MS_PER_TICK, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %22
  %40 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %41 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %44 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %9, align 8
  %49 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %50 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 1
  %53 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %54 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = and i64 %52, %56
  %58 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %59 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %39, %22
  br label %61

61:                                               ; preds = %60, %12
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @zmw_leave_critical_section(i32* %62)
  %64 = load i32*, i32** %9, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @ZM_LV_0, align 4
  %68 = call i32 @zm_msg0_mm(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @zfwBufFree(i32* %69, i32* %70, i32 0)
  br label %73

72:                                               ; preds = %61
  br label %74

73:                                               ; preds = %66
  br label %12

74:                                               ; preds = %72
  ret void
}

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

declare dso_local i32 @zfwBufFree(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
