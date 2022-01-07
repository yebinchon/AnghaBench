; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap3pandora.c_omap3pandora_out_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap3pandora.c_omap3pandora_out_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"OUTL\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"OUTR\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"EARPIECE\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"PREDRIVEL\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"PREDRIVER\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HSOL\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"HSOR\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"CARKITL\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"CARKITR\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"HFL\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"HFR\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"VIBRA\00", align 1
@omap3pandora_out_dapm_widgets = common dso_local global i32 0, align 4
@omap3pandora_out_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @omap3pandora_out_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3pandora_out_init(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  %5 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %6 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %8 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %10 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %11 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %12 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %14 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %16 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %17 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %18 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %20 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %22 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %24 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %26 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %27 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %28 = call i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %30 = load i32, i32* @omap3pandora_out_dapm_widgets, align 4
  %31 = load i32, i32* @omap3pandora_out_dapm_widgets, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec* %29, i32 %30, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %46

38:                                               ; preds = %1
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %40 = load i32, i32* @omap3pandora_out_map, align 4
  %41 = load i32, i32* @omap3pandora_out_map, align 4
  %42 = call i32 @ARRAY_SIZE(i32 %41)
  %43 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec* %39, i32 %40, i32 %42)
  %44 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %45 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_codec* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %38, %36
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @snd_soc_dapm_nc_pin(%struct.snd_soc_codec*, i8*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_codec*, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
