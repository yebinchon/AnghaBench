; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_eapd_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_eapd_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_codec = type { {}*, i32 (%struct.ac97_codec*, i32, i32)* }

@AC97_POWER_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ac97_codec*, i32)* @eapd_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eapd_control(%struct.ac97_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.ac97_codec*, align 8
  %4 = alloca i32, align 4
  store %struct.ac97_codec* %0, %struct.ac97_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %9 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %8, i32 0, i32 1
  %10 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %9, align 8
  %11 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %12 = load i32, i32* @AC97_POWER_CONTROL, align 4
  %13 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %14 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.ac97_codec*, i32)**
  %16 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %15, align 8
  %17 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %18 = load i32, i32* @AC97_POWER_CONTROL, align 4
  %19 = call i32 %16(%struct.ac97_codec* %17, i32 %18)
  %20 = or i32 %19, 32768
  %21 = call i32 %10(%struct.ac97_codec* %11, i32 %12, i32 %20)
  br label %37

22:                                               ; preds = %2
  %23 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %24 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %23, i32 0, i32 1
  %25 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %24, align 8
  %26 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %27 = load i32, i32* @AC97_POWER_CONTROL, align 4
  %28 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %29 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.ac97_codec*, i32)**
  %31 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %30, align 8
  %32 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %33 = load i32, i32* @AC97_POWER_CONTROL, align 4
  %34 = call i32 %31(%struct.ac97_codec* %32, i32 %33)
  %35 = and i32 %34, -32769
  %36 = call i32 %25(%struct.ac97_codec* %26, i32 %27, i32 %35)
  br label %37

37:                                               ; preds = %22, %7
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
