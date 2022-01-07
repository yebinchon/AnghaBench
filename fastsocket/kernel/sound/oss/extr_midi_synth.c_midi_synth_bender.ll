; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midi_synth.c_midi_synth_bender.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_midi_synth.c_midi_synth_bender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@synth_devs = common dso_local global %struct.TYPE_2__** null, align 8
@prev_out_status = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @midi_synth_bender(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @synth_devs, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 %12
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 15
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %3
  br label %83

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 16383
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23
  br label %83

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @leave_sysex(i32 %31)
  %33 = load i32*, i32** @prev_out_status, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 240
  store i32 %38, i32* %8, align 4
  %39 = load i32*, i32** @prev_out_status, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 15
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 208
  br i1 %46, label %51, label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47, %30
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 15
  %55 = or i32 224, %54
  %56 = call i32 @prefix_cmd(i32 %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %83

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, 15
  %63 = or i32 224, %62
  %64 = call i32 @midi_outc(i32 %60, i32 %63)
  br label %73

65:                                               ; preds = %47
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, 127
  %69 = call i32 @prefix_cmd(i32 %66, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  br label %83

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %59
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 127
  %77 = call i32 @midi_outc(i32 %74, i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = ashr i32 %79, 7
  %81 = and i32 %80, 127
  %82 = call i32 @midi_outc(i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %73, %71, %58, %29, %22
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
