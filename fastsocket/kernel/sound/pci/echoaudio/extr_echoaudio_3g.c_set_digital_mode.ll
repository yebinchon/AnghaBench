; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_3g.c_set_digital_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echoaudio_3g.c_set_digital_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i32, i32, i32, i32*, i32*, i32** }

@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DIGITAL_MODE_ADAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_digital_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_digital_mode(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %11 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @snd_BUG_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %120

18:                                               ; preds = %2
  %19 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %20 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @snd_BUG_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %120

33:                                               ; preds = %18
  %34 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %35 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %6, align 4
  %37 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @dsp_set_digital_mode(%struct.echoaudio* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %118

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %118

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @DIGITAL_MODE_ADAT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @DIGITAL_MODE_ADAT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %118

54:                                               ; preds = %50, %46
  %55 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %56 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %55, i32 0, i32 3
  %57 = call i32 @spin_lock_irq(i32* %56)
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %89, %54
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %61 = call i32 @num_busses_out(%struct.echoaudio* %60)
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %92

63:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %85, %63
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %67 = call i32 @num_busses_in(%struct.echoaudio* %66)
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %64
  %70 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %74 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %73, i32 0, i32 6
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @set_monitor_gain(%struct.echoaudio* %70, i32 %71, i32 %72, i32 %83)
  br label %85

85:                                               ; preds = %69
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %64

88:                                               ; preds = %64
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %58

92:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %109, %92
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %96 = call i32 @num_busses_out(%struct.echoaudio* %95)
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %112

98:                                               ; preds = %93
  %99 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %102 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @set_output_gain(%struct.echoaudio* %99, i32 %100, i32 %107)
  br label %109

109:                                              ; preds = %98
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %93

112:                                              ; preds = %93
  %113 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %114 = call i32 @update_output_line_level(%struct.echoaudio* %113)
  %115 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %116 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %115, i32 0, i32 3
  %117 = call i32 @spin_unlock_irq(i32* %116)
  br label %118

118:                                              ; preds = %112, %50, %42, %33
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %30, %15
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @dsp_set_digital_mode(%struct.echoaudio*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @num_busses_out(%struct.echoaudio*) #1

declare dso_local i32 @num_busses_in(%struct.echoaudio*) #1

declare dso_local i32 @set_monitor_gain(%struct.echoaudio*, i32, i32, i32) #1

declare dso_local i32 @set_output_gain(%struct.echoaudio*, i32, i32) #1

declare dso_local i32 @update_output_line_level(%struct.echoaudio*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
