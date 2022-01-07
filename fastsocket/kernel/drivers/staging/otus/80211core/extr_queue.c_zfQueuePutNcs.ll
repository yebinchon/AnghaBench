; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_queue.c_zfQueuePutNcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_queue.c_zfQueuePutNcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zsQueue = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@ZM_ERR_QUEUE_FULL = common dso_local global i32 0, align 4
@ZM_LV_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"zfQueuePutNcs()\00", align 1
@ZM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfQueuePutNcs(i32* %0, %struct.zsQueue* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.zsQueue*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.zsQueue* %1, %struct.zsQueue** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @ZM_ERR_QUEUE_FULL, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @ZM_LV_1, align 4
  %12 = call i32 @zm_msg0_mm(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %14 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  %17 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %18 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %16, %19
  %21 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %22 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %28 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %31 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32* %26, i32** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %38 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %41 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %36, i32* %45, align 8
  %46 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %47 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  %50 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %51 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %49, %52
  %54 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %55 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @ZM_SUCCESS, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %25, %4
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
