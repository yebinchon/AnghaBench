; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8961.c_wm8961_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm8961.c_wm8961_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@WM8961_ANTI_POP = common dso_local global i32 0, align 4
@WM8961_BUFIOEN = common dso_local global i32 0, align 4
@WM8961_BUFDCOPEN = common dso_local global i32 0, align 4
@WM8961_PWR_MGMT_1 = common dso_local global i32 0, align 4
@WM8961_VMIDSEL_MASK = common dso_local global i32 0, align 4
@WM8961_VMIDSEL_SHIFT = common dso_local global i32 0, align 4
@WM8961_VREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*, i32)* @wm8961_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8961_set_bias_level(%struct.snd_soc_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %87 [
    i32 130, label %7
    i32 129, label %8
    i32 128, label %44
    i32 131, label %86
  ]

7:                                                ; preds = %2
  br label %87

8:                                                ; preds = %2
  %9 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 128
  br i1 %12, label %13, label %43

13:                                               ; preds = %8
  %14 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %15 = load i32, i32* @WM8961_ANTI_POP, align 4
  %16 = call i32 @snd_soc_read(%struct.snd_soc_codec* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @WM8961_BUFIOEN, align 4
  %18 = load i32, i32* @WM8961_BUFDCOPEN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %23 = load i32, i32* @WM8961_ANTI_POP, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @snd_soc_write(%struct.snd_soc_codec* %22, i32 %23, i32 %24)
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %27 = load i32, i32* @WM8961_PWR_MGMT_1, align 4
  %28 = call i32 @snd_soc_read(%struct.snd_soc_codec* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @WM8961_VMIDSEL_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @WM8961_VMIDSEL_SHIFT, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* @WM8961_VREF, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %40 = load i32, i32* @WM8961_PWR_MGMT_1, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @snd_soc_write(%struct.snd_soc_codec* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %13, %8
  br label %87

44:                                               ; preds = %2
  %45 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %46 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 129
  br i1 %48, label %49, label %85

49:                                               ; preds = %44
  %50 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %51 = load i32, i32* @WM8961_PWR_MGMT_1, align 4
  %52 = call i32 @snd_soc_read(%struct.snd_soc_codec* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @WM8961_VREF, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %58 = load i32, i32* @WM8961_PWR_MGMT_1, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @snd_soc_write(%struct.snd_soc_codec* %57, i32 %58, i32 %59)
  %61 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %62 = load i32, i32* @WM8961_ANTI_POP, align 4
  %63 = call i32 @snd_soc_read(%struct.snd_soc_codec* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @WM8961_BUFIOEN, align 4
  %65 = load i32, i32* @WM8961_BUFDCOPEN, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %71 = load i32, i32* @WM8961_ANTI_POP, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @snd_soc_write(%struct.snd_soc_codec* %70, i32 %71, i32 %72)
  %74 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %75 = load i32, i32* @WM8961_PWR_MGMT_1, align 4
  %76 = call i32 @snd_soc_read(%struct.snd_soc_codec* %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @WM8961_VMIDSEL_MASK, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %82 = load i32, i32* @WM8961_PWR_MGMT_1, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @snd_soc_write(%struct.snd_soc_codec* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %49, %44
  br label %87

86:                                               ; preds = %2
  br label %87

87:                                               ; preds = %2, %86, %85, %43, %7
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %90 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  ret i32 0
}

declare dso_local i32 @snd_soc_read(%struct.snd_soc_codec*, i32) #1

declare dso_local i32 @snd_soc_write(%struct.snd_soc_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
