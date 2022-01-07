; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midibuf.c_midi_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midibuf.c_midi_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32, i32)* }
%struct.TYPE_7__ = type { i32*, i64, i32 }
%struct.TYPE_6__ = type { i64 }

@lock = common dso_local global i32 0, align 4
@open_devs = common dso_local global i64 0, align 8
@num_midis = common dso_local global i32 0, align 4
@midi_devs = common dso_local global %struct.TYPE_8__** null, align 8
@midi_out_buf = common dso_local global %struct.TYPE_7__** null, align 8
@MAX_QUEUE_SIZE = common dso_local global i32 0, align 4
@midi_sleeper = common dso_local global i32* null, align 8
@jiffies = common dso_local global i64 0, align 8
@poll_timer = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @midi_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @midi_poll(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @lock, i64 %7)
  %9 = load i64, i64* @open_devs, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %122

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %115, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @num_midis, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %118

16:                                               ; preds = %12
  %17 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @midi_devs, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %17, i64 %19
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %114

23:                                               ; preds = %16
  %24 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @midi_out_buf, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %24, i64 %26
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %114

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %73, %30
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @midi_out_buf, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %32, i64 %34
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = call i32 @DATA_AVAIL(%struct.TYPE_7__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %99

39:                                               ; preds = %31
  %40 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @midi_out_buf, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %40, i64 %42
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @midi_out_buf, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %47, i64 %49
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %46, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i64, i64* %3, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* @lock, i64 %56)
  %58 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @midi_devs, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %58, i64 %60
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32 (i32, i32)*, i32 (i32, i32)** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 %64(i32 %65, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @spin_lock_irqsave(i32* @lock, i64 %68)
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %39
  br label %99

73:                                               ; preds = %39
  %74 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @midi_out_buf, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %74, i64 %76
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  %82 = load i32, i32* @MAX_QUEUE_SIZE, align 4
  %83 = sext i32 %82 to i64
  %84 = urem i64 %81, %83
  %85 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @midi_out_buf, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %85, i64 %87
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i64 %84, i64* %90, align 8
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @midi_out_buf, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %91, i64 %93
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %96, align 8
  br label %31

99:                                               ; preds = %72, %31
  %100 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @midi_out_buf, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %100, i64 %102
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = call i32 @DATA_AVAIL(%struct.TYPE_7__* %104)
  %106 = icmp slt i32 %105, 100
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load i32*, i32** @midi_sleeper, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = call i32 @wake_up(i32* %111)
  br label %113

113:                                              ; preds = %107, %99
  br label %114

114:                                              ; preds = %113, %23, %16
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  br label %12

118:                                              ; preds = %12
  %119 = load i64, i64* @jiffies, align 8
  %120 = add nsw i64 1, %119
  store i64 %120, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @poll_timer, i32 0, i32 0), align 8
  %121 = call i32 @add_timer(%struct.TYPE_6__* @poll_timer)
  br label %122

122:                                              ; preds = %118, %1
  %123 = load i64, i64* %3, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* @lock, i64 %123)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DATA_AVAIL(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
