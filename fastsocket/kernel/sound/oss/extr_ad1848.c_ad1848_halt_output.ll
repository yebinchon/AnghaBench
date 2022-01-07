; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad1848_halt_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad1848_halt_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@audio_devs = common dso_local global %struct.TYPE_10__** null, align 8
@isa_dma_bridge_buggy = common dso_local global i32 0, align 4
@PCM_ENABLE_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ad1848_halt_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad1848_halt_output(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @audio_devs, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %6, i64 %8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %3, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = call i32 @ad_read(%struct.TYPE_9__* %14, i32 9)
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %95

19:                                               ; preds = %1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = call i32 @ad_mute(%struct.TYPE_9__* %24)
  %26 = load i32, i32* @isa_dma_bridge_buggy, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %19
  %29 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @audio_devs, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %29, i64 %31
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @disable_dma(i32 %37)
  br label %39

39:                                               ; preds = %28, %19
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %50, %39
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 100000
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = call i32 @ad_read(%struct.TYPE_9__* %44, i32 11)
  %46 = and i32 %45, 16
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %53

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %40

53:                                               ; preds = %48, %40
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = call i32 @ad_read(%struct.TYPE_9__* %55, i32 9)
  %57 = and i32 %56, -2
  %58 = call i32 @ad_write(%struct.TYPE_9__* %54, i32 9, i32 %57)
  %59 = load i32, i32* @isa_dma_bridge_buggy, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %53
  %62 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @audio_devs, align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %62, i64 %64
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @enable_dma(i32 %70)
  br label %72

72:                                               ; preds = %61, %53
  %73 = load i32, i32* @PCM_ENABLE_OUTPUT, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = call i32 @io_Status(%struct.TYPE_9__* %79)
  %81 = call i32 @outb(i32 0, i32 %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = call i32 @io_Status(%struct.TYPE_9__* %82)
  %84 = call i32 @outb(i32 0, i32 %83)
  %85 = load i32, i32* @PCM_ENABLE_OUTPUT, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  br label %95

95:                                               ; preds = %72, %18
  ret void
}

declare dso_local i32 @ad_read(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ad_mute(%struct.TYPE_9__*) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @ad_write(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @enable_dma(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @io_Status(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
