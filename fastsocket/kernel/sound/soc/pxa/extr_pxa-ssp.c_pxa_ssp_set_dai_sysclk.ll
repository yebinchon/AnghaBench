; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.ssp_priv* }
%struct.ssp_priv = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ssp_device* }
%struct.ssp_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SSCR0 = common dso_local global i32 0, align 4
@SSCR0_ECS = common dso_local global i32 0, align 4
@SSCR0_NCS = common dso_local global i32 0, align 4
@SSCR0_MOD = common dso_local global i32 0, align 4
@SSCR0_ACS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"pxa_ssp_set_dai_sysclk id: %d, clk_id %d, freq %u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @pxa_ssp_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_ssp_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ssp_priv*, align 8
  %11 = alloca %struct.ssp_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 1
  %16 = load %struct.ssp_priv*, %struct.ssp_priv** %15, align 8
  store %struct.ssp_priv* %16, %struct.ssp_priv** %10, align 8
  %17 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %18 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.ssp_device*, %struct.ssp_device** %19, align 8
  store %struct.ssp_device* %20, %struct.ssp_device** %11, align 8
  %21 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %22 = load i32, i32* @SSCR0, align 4
  %23 = call i32 @ssp_read_reg(%struct.ssp_device* %21, i32 %22)
  %24 = load i32, i32* @SSCR0_ECS, align 4
  %25 = load i32, i32* @SSCR0_NCS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SSCR0_MOD, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SSCR0_ACS, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %23, %31
  store i32 %32, i32* %13, align 4
  %33 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %34 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  switch i32 %43, label %82 [
    i32 129, label %44
    i32 128, label %48
    i32 131, label %58
    i32 130, label %65
    i32 132, label %74
  ]

44:                                               ; preds = %4
  %45 = load i32, i32* @SSCR0_MOD, align 4
  %46 = load i32, i32* %13, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %13, align 4
  br label %85

48:                                               ; preds = %4
  %49 = call i32 (...) @cpu_is_pxa25x()
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %53 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %52, i32 0, i32 0
  store i32 1843200, i32* %53, align 8
  br label %57

54:                                               ; preds = %48
  %55 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %56 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %55, i32 0, i32 0
  store i32 13000000, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %51
  br label %85

58:                                               ; preds = %4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %61 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @SSCR0_ECS, align 4
  %63 = load i32, i32* %13, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %13, align 4
  br label %85

65:                                               ; preds = %4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %68 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @SSCR0_NCS, align 4
  %70 = load i32, i32* @SSCR0_MOD, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %13, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %13, align 4
  br label %85

74:                                               ; preds = %4
  %75 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %76 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %78 = call i32 @ssp_set_scr(%struct.ssp_device* %77, i32 1)
  %79 = load i32, i32* @SSCR0_ACS, align 4
  %80 = load i32, i32* %13, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %13, align 4
  br label %85

82:                                               ; preds = %4
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %117

85:                                               ; preds = %74, %65, %58, %57, %44
  %86 = call i32 (...) @cpu_is_pxa3xx()
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %85
  %89 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %90 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.ssp_device*, %struct.ssp_device** %91, align 8
  %93 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @clk_disable(i32 %94)
  br label %96

96:                                               ; preds = %88, %85
  %97 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %98 = load i32, i32* @SSCR0, align 4
  %99 = call i32 @ssp_read_reg(%struct.ssp_device* %97, i32 %98)
  %100 = load i32, i32* %13, align 4
  %101 = or i32 %99, %100
  store i32 %101, i32* %12, align 4
  %102 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  %103 = load i32, i32* @SSCR0, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @ssp_write_reg(%struct.ssp_device* %102, i32 %103, i32 %104)
  %106 = call i32 (...) @cpu_is_pxa3xx()
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %96
  %109 = load %struct.ssp_priv*, %struct.ssp_priv** %10, align 8
  %110 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.ssp_device*, %struct.ssp_device** %111, align 8
  %113 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @clk_enable(i32 %114)
  br label %116

116:                                              ; preds = %108, %96
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %82
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @cpu_is_pxa25x(...) #1

declare dso_local i32 @ssp_set_scr(%struct.ssp_device*, i32) #1

declare dso_local i32 @cpu_is_pxa3xx(...) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @ssp_write_reg(%struct.ssp_device*, i32, i32) #1

declare dso_local i32 @clk_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
