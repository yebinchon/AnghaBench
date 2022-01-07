; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echo3g_dsp.c_set_phantom_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_echo3g_dsp.c_set_phantom_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i8, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@E3G_PHANTOM_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i8)* @set_phantom_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_phantom_power(%struct.echoaudio* %0, i8 signext %1) #0 {
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %7 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le32_to_cpu(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i8, i8* %4, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @E3G_PHANTOM_POWER, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @E3G_PHANTOM_POWER, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %14
  %24 = load i8, i8* %4, align 1
  %25 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %26 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %25, i32 0, i32 0
  store i8 %24, i8* %26, align 8
  %27 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %30 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = call i32 @write_control_reg(%struct.echoaudio* %27, i32 %28, i32 %34, i32 0)
  ret i32 %35
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @write_control_reg(%struct.echoaudio*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
