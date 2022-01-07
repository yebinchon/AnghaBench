; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_setup_mode2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_setup_mode2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@num_synths = common dso_local global i32 0, align 4
@max_synthdev = common dso_local global i32 0, align 4
@num_midis = common dso_local global i32 0, align 4
@midi_devs = common dso_local global %struct.TYPE_6__** null, align 8
@synth_devs = common dso_local global %struct.TYPE_5__** null, align 8
@max_mididev = common dso_local global i64 0, align 8
@SEQ_2 = common dso_local global i32 0, align 4
@seq_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_mode2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_mode2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @num_synths, align 4
  store i32 %3, i32* @max_synthdev, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %38, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @num_midis, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %41

8:                                                ; preds = %4
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @midi_devs, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %9, i64 %11
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %8
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @midi_devs, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %16, i64 %18
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %15
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @midi_devs, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @synth_devs, align 8
  %33 = load i32, i32* @max_synthdev, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @max_synthdev, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %32, i64 %35
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %36, align 8
  br label %37

37:                                               ; preds = %24, %15, %8
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %4

41:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %114, %41
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* @max_synthdev, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %117

46:                                               ; preds = %42
  %47 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @synth_devs, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %47, i64 %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @synth_devs, align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %53, i64 %55
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %110, %46
  %60 = load i32, i32* %2, align 4
  %61 = icmp slt i32 %60, 16
  br i1 %61, label %62, label %113

62:                                               ; preds = %59
  %63 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @synth_devs, align 8
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %63, i64 %65
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* %1, align 4
  %75 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @synth_devs, align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %75, i64 %77
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @reset_controllers(i32 %74, i32 %86, i32 0)
  %88 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @synth_devs, align 8
  %89 = load i32, i32* %1, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %88, i64 %90
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %2, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 128, i32* %98, align 8
  %99 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @synth_devs, align 8
  %100 = load i32, i32* %1, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %99, i64 %101
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i32, i32* %2, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 200, i32* %109, align 4
  br label %110

110:                                              ; preds = %62
  %111 = load i32, i32* %2, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %2, align 4
  br label %59

113:                                              ; preds = %59
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %1, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %1, align 4
  br label %42

117:                                              ; preds = %42
  store i64 0, i64* @max_mididev, align 8
  %118 = load i32, i32* @SEQ_2, align 4
  store i32 %118, i32* @seq_mode, align 4
  ret void
}

declare dso_local i32 @reset_controllers(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
