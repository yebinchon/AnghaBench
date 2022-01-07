; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_waveartist.c_waveartist_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@num_audiodevs = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@audio_devs = common dso_local global %struct.TYPE_6__** null, align 8
@waveartist_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@OPEN_READ = common dso_local global i32 0, align 4
@OPEN_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @waveartist_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waveartist_open(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @num_audiodevs, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %86

18:                                               ; preds = %11
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @audio_devs, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %19, i64 %21
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %6, align 8
  %27 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @audio_devs, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %27, i64 %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_lock_irqsave(i32* @waveartist_lock, i64 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %18
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41, %18
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* @waveartist_lock, i64 %49)
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %86

53:                                               ; preds = %41
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @waveartist_trigger(i32 %64, i32 0)
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @OPEN_READ, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %53
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %53
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @OPEN_WRITE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* @waveartist_lock, i64 %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %83, %48, %15
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @waveartist_trigger(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
