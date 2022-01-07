; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_ac97_check_modem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_ac97_check_modem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_codec = type { i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32, i64)* }

@AC97_RESET = common dso_local global i32 0, align 4
@AC97_EXTENDED_MODEM_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ac97_codec*)* @ac97_check_modem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ac97_check_modem(%struct.ac97_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ac97_codec*, align 8
  store %struct.ac97_codec* %0, %struct.ac97_codec** %3, align 8
  %4 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %5 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %4, i32 0, i32 0
  %6 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %5, align 8
  %7 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %8 = load i32, i32* @AC97_RESET, align 4
  %9 = call i32 %6(%struct.ac97_codec* %7, i32 %8)
  %10 = and i32 %9, 2
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %15 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %14, i32 0, i32 1
  %16 = load i32 (%struct.ac97_codec*, i32, i64)*, i32 (%struct.ac97_codec*, i32, i64)** %15, align 8
  %17 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %18 = load i32, i32* @AC97_EXTENDED_MODEM_ID, align 4
  %19 = call i32 %16(%struct.ac97_codec* %17, i32 %18, i64 0)
  %20 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %21 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %20, i32 0, i32 0
  %22 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %21, align 8
  %23 = load %struct.ac97_codec*, %struct.ac97_codec** %3, align 8
  %24 = load i32, i32* @AC97_EXTENDED_MODEM_ID, align 4
  %25 = call i32 %22(%struct.ac97_codec* %23, i32 %24)
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %30

29:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28, %12
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
