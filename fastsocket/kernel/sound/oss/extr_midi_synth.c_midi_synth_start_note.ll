; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midi_synth.c_midi_synth_start_note.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midi_synth.c_midi_synth_start_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@synth_devs = common dso_local global %struct.TYPE_2__** null, align 8
@prev_out_status = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midi_synth_start_note(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @synth_devs, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 127
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %4
  store i32 0, i32* %5, align 4
  br label %96

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp sgt i32 %30, 15
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26
  store i32 0, i32* %5, align 4
  br label %96

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %38, 127
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 127, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @leave_sysex(i32 %42)
  %44 = load i32*, i32** @prev_out_status, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 240
  store i32 %49, i32* %11, align 4
  %50 = load i32*, i32** @prev_out_status, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 15
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %41
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 144
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @prefix_cmd(i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %96

68:                                               ; preds = %62
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @midi_outc(i32 %69, i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @midi_outc(i32 %72, i32 %73)
  br label %95

75:                                               ; preds = %59, %41
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, 15
  %79 = or i32 144, %78
  %80 = call i32 @prefix_cmd(i32 %76, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %96

83:                                               ; preds = %75
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, 15
  %87 = or i32 144, %86
  %88 = call i32 @midi_outc(i32 %84, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @midi_outc(i32 %89, i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @midi_outc(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %83, %68
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %82, %67, %32, %25
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @leave_sysex(i32) #1

declare dso_local i32 @prefix_cmd(i32, i32) #1

declare dso_local i32 @midi_outc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
