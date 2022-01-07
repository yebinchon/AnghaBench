; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_ams-delta.c_ams_delta_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_ams-delta.c_ams_delta_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { i32 }

@AMS_DELTA_LATCH2_MODEM_NRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*, i32)* @ams_delta_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_delta_set_bias_level(%struct.snd_soc_card* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_codec*, align 8
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %7 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %6, i32 0, i32 0
  %8 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %7, align 8
  store %struct.snd_soc_codec* %8, %struct.snd_soc_codec** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %29 [
    i32 130, label %10
    i32 129, label %10
    i32 128, label %10
    i32 131, label %20
  ]

10:                                               ; preds = %2, %2, %2
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 131
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* @AMS_DELTA_LATCH2_MODEM_NRESET, align 4
  %17 = load i32, i32* @AMS_DELTA_LATCH2_MODEM_NRESET, align 4
  %18 = call i32 @ams_delta_latch2_write(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %10
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %22 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 131
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @AMS_DELTA_LATCH2_MODEM_NRESET, align 4
  %27 = call i32 @ams_delta_latch2_write(i32 %26, i32 0)
  br label %28

28:                                               ; preds = %25, %20
  br label %29

29:                                               ; preds = %28, %2, %19
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %32 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  ret i32 0
}

declare dso_local i32 @ams_delta_latch2_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
