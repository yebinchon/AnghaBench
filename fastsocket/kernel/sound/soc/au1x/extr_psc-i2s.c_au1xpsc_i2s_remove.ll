; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/au1x/extr_psc-i2s.c_au1xpsc_i2s_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32 }
%struct.platform_device = type { i32 }
%struct.snd_soc_dai = type { i32 }

@au1xpsc_i2s_workdata = common dso_local global %struct.TYPE_6__* null, align 8
@PSC_CTRL_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.snd_soc_dai*)* @au1xpsc_i2s_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xpsc_i2s_remove(%struct.platform_device* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @au1xpsc_i2s_workdata, align 8
  %6 = call i32 @I2S_CFG(%struct.TYPE_6__* %5)
  %7 = call i32 @au_writel(i32 0, i32 %6)
  %8 = call i32 (...) @au_sync()
  %9 = load i32, i32* @PSC_CTRL_DISABLE, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @au1xpsc_i2s_workdata, align 8
  %11 = call i32 @PSC_CTRL(%struct.TYPE_6__* %10)
  %12 = call i32 @au_writel(i32 %9, i32 %11)
  %13 = call i32 (...) @au_sync()
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @au1xpsc_i2s_workdata, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @iounmap(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @au1xpsc_i2s_workdata, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = call i32 @release_resource(%struct.TYPE_6__* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @au1xpsc_i2s_workdata, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = call i32 @kfree(%struct.TYPE_6__* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @au1xpsc_i2s_workdata, align 8
  %27 = call i32 @kfree(%struct.TYPE_6__* %26)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @au1xpsc_i2s_workdata, align 8
  ret void
}

declare dso_local i32 @au_writel(i32, i32) #1

declare dso_local i32 @I2S_CFG(%struct.TYPE_6__*) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @PSC_CTRL(%struct.TYPE_6__*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_resource(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
