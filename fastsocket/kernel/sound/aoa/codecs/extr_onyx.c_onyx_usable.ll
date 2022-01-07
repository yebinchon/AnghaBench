; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_onyx.c_onyx_usable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_onyx.c_onyx_usable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codec_info_item = type { %struct.onyx* }
%struct.onyx = type { i32 }
%struct.transfer_info = type { i32 }

@ONYX_REG_DIG_INFO4 = common dso_local global i32 0, align 4
@ONYX_SPDIF_ENABLE = common dso_local global i32 0, align 4
@ONYX_REG_DAC_CONTROL = common dso_local global i32 0, align 4
@ONYX_MUTE_RIGHT = common dso_local global i32 0, align 4
@ONYX_MUTE_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.codec_info_item*, %struct.transfer_info*, %struct.transfer_info*)* @onyx_usable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onyx_usable(%struct.codec_info_item* %0, %struct.transfer_info* %1, %struct.transfer_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.codec_info_item*, align 8
  %6 = alloca %struct.transfer_info*, align 8
  %7 = alloca %struct.transfer_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.onyx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.codec_info_item* %0, %struct.codec_info_item** %5, align 8
  store %struct.transfer_info* %1, %struct.transfer_info** %6, align 8
  store %struct.transfer_info* %2, %struct.transfer_info** %7, align 8
  %12 = load %struct.codec_info_item*, %struct.codec_info_item** %5, align 8
  %13 = getelementptr inbounds %struct.codec_info_item, %struct.codec_info_item* %12, i32 0, i32 0
  %14 = load %struct.onyx*, %struct.onyx** %13, align 8
  store %struct.onyx* %14, %struct.onyx** %9, align 8
  %15 = load %struct.onyx*, %struct.onyx** %9, align 8
  %16 = getelementptr inbounds %struct.onyx, %struct.onyx* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.onyx*, %struct.onyx** %9, align 8
  %19 = load i32, i32* @ONYX_REG_DIG_INFO4, align 4
  %20 = call i32 @onyx_read_register(%struct.onyx* %18, i32 %19, i32* %8)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ONYX_SPDIF_ENABLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load %struct.onyx*, %struct.onyx** %9, align 8
  %29 = load i32, i32* @ONYX_REG_DAC_CONTROL, align 4
  %30 = call i32 @onyx_read_register(%struct.onyx* %28, i32 %29, i32* %8)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ONYX_MUTE_RIGHT, align 4
  %33 = load i32, i32* @ONYX_MUTE_LEFT, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = load i32, i32* @ONYX_MUTE_RIGHT, align 4
  %37 = load i32, i32* @ONYX_MUTE_LEFT, align 4
  %38 = or i32 %36, %37
  %39 = icmp ne i32 %35, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load %struct.onyx*, %struct.onyx** %9, align 8
  %42 = getelementptr inbounds %struct.onyx, %struct.onyx* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.transfer_info*, %struct.transfer_info** %6, align 8
  %45 = getelementptr inbounds %struct.transfer_info, %struct.transfer_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %52 [
    i32 0, label %47
    i32 1, label %48
    i32 2, label %50
  ]

47:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %53

48:                                               ; preds = %3
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %53

50:                                               ; preds = %3
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %50, %48, %47
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @onyx_read_register(%struct.onyx*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
