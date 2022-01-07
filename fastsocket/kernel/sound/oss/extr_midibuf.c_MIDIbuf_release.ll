; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midibuf.c_MIDIbuf_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midibuf.c_MIDIbuf_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32)*, i32 (i32, i32)* }
%struct.file = type { i32 }

@num_midis = common dso_local global i32 0, align 4
@midi_devs = common dso_local global %struct.TYPE_2__** null, align 8
@OPEN_READ = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@midi_out_buf = common dso_local global i32** null, align 8
@midi_sleeper = common dso_local global i32* null, align 8
@open_devs = common dso_local global i64 0, align 8
@poll_timer = common dso_local global i32 0, align 4
@midi_in_buf = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MIDIbuf_release(i32 %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = ashr i32 %6, 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call i32 @translate_mode(%struct.file* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @num_midis, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @midi_devs, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp eq %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %12, %2
  br label %106

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @OPEN_READ, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %24
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @midi_devs, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 %35(i32 %36, i32 254)
  br label %38

38:                                               ; preds = %52, %28
  %39 = load i32, i32* @current, align 4
  %40 = call i32 @signal_pending(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i32**, i32*** @midi_out_buf, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @DATA_AVAIL(i32* %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %42, %38
  %51 = phi i1 [ false, %38 ], [ %49, %42 ]
  br i1 %51, label %52, label %58

52:                                               ; preds = %50
  %53 = load i32*, i32** @midi_sleeper, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i32 @interruptible_sleep_on(i32* %56)
  br label %38

58:                                               ; preds = %50
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @drain_midi_queue(i32 %59)
  br label %61

61:                                               ; preds = %58, %24
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @midi_devs, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %62, i64 %64
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32 (i32)*, i32 (i32)** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i32 %68(i32 %69)
  %71 = load i64, i64* @open_devs, align 8
  %72 = add nsw i64 %71, -1
  store i64 %72, i64* @open_devs, align 8
  %73 = load i64, i64* @open_devs, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = call i32 @del_timer_sync(i32* @poll_timer)
  br label %77

77:                                               ; preds = %75, %61
  %78 = load i32**, i32*** @midi_in_buf, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @vfree(i32* %82)
  %84 = load i32**, i32*** @midi_out_buf, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @vfree(i32* %88)
  %90 = load i32**, i32*** @midi_in_buf, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  store i32* null, i32** %93, align 8
  %94 = load i32**, i32*** @midi_out_buf, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  store i32* null, i32** %97, align 8
  %98 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @midi_devs, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %98, i64 %100
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @module_put(i32 %104)
  br label %106

106:                                              ; preds = %77, %23
  ret void
}

declare dso_local i32 @translate_mode(%struct.file*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i64 @DATA_AVAIL(i32*) #1

declare dso_local i32 @interruptible_sleep_on(i32*) #1

declare dso_local i32 @drain_midi_queue(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
