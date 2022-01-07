; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad1848_tmr_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad1848_tmr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32, i32 }

@audio_devs = common dso_local global %struct.TYPE_6__** null, align 8
@MD_1845 = common dso_local global i64 0, align 8
@MD_1845_SSCAPE = common dso_local global i64 0, align 8
@current_interval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ad1848_tmr_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1848_tmr_start(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @audio_devs, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %9, i64 %11
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %6, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MD_1845, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MD_1845_SSCAPE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %2
  store i64 10050, i64* %7, align 8
  br label %41

33:                                               ; preds = %26
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = call i32 @ad_read(%struct.TYPE_5__* %34, i32 8)
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i64 9920, i64* %7, align 8
  br label %40

39:                                               ; preds = %33
  store i64 9969, i64* %7, align 8
  br label %40

40:                                               ; preds = %39, %38
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i32, i32* %4, align 4
  %43 = mul i32 %42, 1000
  %44 = zext i32 %43 to i64
  %45 = load i64, i64* %7, align 8
  %46 = udiv i64 %45, 2
  %47 = add i64 %44, %46
  %48 = load i64, i64* %7, align 8
  %49 = udiv i64 %47, %48
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ult i64 %50, 100
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i64 100, i64* %8, align 8
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i64, i64* %8, align 8
  %55 = icmp ugt i64 %54, 65535
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i64 65535, i64* %8, align 8
  br label %57

57:                                               ; preds = %56, %53
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = load i64, i64* %8, align 8
  %60 = lshr i64 %59, 8
  %61 = and i64 %60, 255
  %62 = trunc i64 %61 to i32
  %63 = call i32 @ad_write(%struct.TYPE_5__* %58, i32 21, i32 %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = load i64, i64* %8, align 8
  %66 = and i64 %65, 255
  %67 = trunc i64 %66 to i32
  %68 = call i32 @ad_write(%struct.TYPE_5__* %64, i32 20, i32 %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = call i32 @ad_read(%struct.TYPE_5__* %70, i32 16)
  %72 = or i32 %71, 64
  %73 = call i32 @ad_write(%struct.TYPE_5__* %69, i32 16, i32 %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i32 1, i32* %75, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %7, align 8
  %82 = mul i64 %80, %81
  %83 = add i64 %82, 500
  %84 = udiv i64 %83, 1000
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* @current_interval, align 4
  ret i32 %85
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ad_read(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ad_write(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
