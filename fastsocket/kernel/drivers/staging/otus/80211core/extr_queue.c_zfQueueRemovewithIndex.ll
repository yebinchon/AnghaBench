; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_queue.c_zfQueueRemovewithIndex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_queue.c_zfQueueRemovewithIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zsQueue = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfQueueRemovewithIndex(i32* %0, %struct.zsQueue* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.zsQueue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.zsQueue* %1, %struct.zsQueue** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %69, %4
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, 1
  %14 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %15 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %13, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %19 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %22, label %71

22:                                               ; preds = %11
  %23 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %24 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %32 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %30, i32* %37, align 4
  %38 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %39 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %47 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %45, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %22
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %58 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = call i64 @zfCompareDstwithBuf(i32* %56, i32 %64, i32* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  store i32 1, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %55, %22
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %7, align 4
  br label %11

71:                                               ; preds = %11
  %72 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %73 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %77 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %75, %78
  %80 = load %struct.zsQueue*, %struct.zsQueue** %6, align 8
  %81 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %10, align 4
  ret i32 %82
}

declare dso_local i64 @zfCompareDstwithBuf(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
