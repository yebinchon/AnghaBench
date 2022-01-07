; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midi_synth.c_midi_synth_controller.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midi_synth.c_midi_synth_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@synth_devs = common dso_local global %struct.TYPE_2__** null, align 8
@prev_out_status = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @midi_synth_controller(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @synth_devs, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 127
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %4
  br label %82

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %29, 15
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25
  br label %82

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @leave_sysex(i32 %33)
  %35 = load i32*, i32** @prev_out_status, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 240
  store i32 %40, i32* %11, align 4
  %41 = load i32*, i32** @prev_out_status, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 15
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 176
  br i1 %48, label %53, label %49

49:                                               ; preds = %32
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49, %32
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 15
  %57 = or i32 176, %56
  %58 = call i32 @prefix_cmd(i32 %54, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  br label %82

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 15
  %65 = or i32 176, %64
  %66 = call i32 @midi_outc(i32 %62, i32 %65)
  br label %74

67:                                               ; preds = %49
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @prefix_cmd(i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %82

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %61
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @midi_outc(i32 %75, i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, 127
  %81 = call i32 @midi_outc(i32 %78, i32 %80)
  br label %82

82:                                               ; preds = %74, %72, %60, %31, %24
  ret void
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
