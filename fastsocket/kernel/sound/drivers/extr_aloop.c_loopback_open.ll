; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_aloop.c_loopback_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_aloop.c_loopback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i64, %struct.loopback*, %struct.snd_pcm_runtime* }
%struct.loopback = type { i32, %struct.loopback_cable*** }
%struct.loopback_cable = type { i8*, %struct.loopback_pcm**, i32 }
%struct.loopback_pcm = type { %struct.loopback_cable*, i32, %struct.snd_pcm_substream*, %struct.loopback* }
%struct.snd_pcm_runtime = type { i8*, i32, %struct.loopback_pcm* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@loopback_timer_function = common dso_local global i32 0, align 4
@loopback_pcm_hardware = common dso_local global i8* null, align 8
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@rule_format = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@rule_rate = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@rule_channels = common dso_local global i32 0, align 4
@loopback_runtime_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @loopback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.loopback*, align 8
  %5 = alloca %struct.loopback_pcm*, align 8
  %6 = alloca %struct.loopback_cable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 3
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %3, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 2
  %14 = load %struct.loopback*, %struct.loopback** %13, align 8
  store %struct.loopback* %14, %struct.loopback** %4, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = call i32 @get_cable_index(%struct.snd_pcm_substream* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.loopback*, %struct.loopback** %4, align 8
  %18 = getelementptr inbounds %struct.loopback, %struct.loopback* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i32 32, i32 %20)
  %22 = bitcast i8* %21 to %struct.loopback_pcm*
  store %struct.loopback_pcm* %22, %struct.loopback_pcm** %5, align 8
  %23 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %24 = icmp ne %struct.loopback_pcm* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %153

28:                                               ; preds = %1
  %29 = load %struct.loopback*, %struct.loopback** %4, align 8
  %30 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %31 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %30, i32 0, i32 3
  store %struct.loopback* %29, %struct.loopback** %31, align 8
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %33 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %34 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %33, i32 0, i32 2
  store %struct.snd_pcm_substream* %32, %struct.snd_pcm_substream** %34, align 8
  %35 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %36 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %35, i32 0, i32 1
  %37 = load i32, i32* @loopback_timer_function, align 4
  %38 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %39 = ptrtoint %struct.loopback_pcm* %38 to i64
  %40 = call i32 @setup_timer(i32* %36, i32 %37, i64 %39)
  %41 = load %struct.loopback*, %struct.loopback** %4, align 8
  %42 = getelementptr inbounds %struct.loopback, %struct.loopback* %41, i32 0, i32 1
  %43 = load %struct.loopback_cable***, %struct.loopback_cable**** %42, align 8
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.loopback_cable**, %struct.loopback_cable*** %43, i64 %46
  %48 = load %struct.loopback_cable**, %struct.loopback_cable*** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.loopback_cable*, %struct.loopback_cable** %48, i64 %50
  %52 = load %struct.loopback_cable*, %struct.loopback_cable** %51, align 8
  store %struct.loopback_cable* %52, %struct.loopback_cable** %6, align 8
  %53 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %54 = icmp ne %struct.loopback_cable* %53, null
  br i1 %54, label %85, label %55

55:                                               ; preds = %28
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @kzalloc(i32 24, i32 %56)
  %58 = bitcast i8* %57 to %struct.loopback_cable*
  store %struct.loopback_cable* %58, %struct.loopback_cable** %6, align 8
  %59 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %60 = icmp ne %struct.loopback_cable* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %63 = call i32 @kfree(%struct.loopback_pcm* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %153

66:                                               ; preds = %55
  %67 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %68 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %67, i32 0, i32 2
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load i8*, i8** @loopback_pcm_hardware, align 8
  %71 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %72 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %74 = load %struct.loopback*, %struct.loopback** %4, align 8
  %75 = getelementptr inbounds %struct.loopback, %struct.loopback* %74, i32 0, i32 1
  %76 = load %struct.loopback_cable***, %struct.loopback_cable**** %75, align 8
  %77 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %78 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.loopback_cable**, %struct.loopback_cable*** %76, i64 %79
  %81 = load %struct.loopback_cable**, %struct.loopback_cable*** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.loopback_cable*, %struct.loopback_cable** %81, i64 %83
  store %struct.loopback_cable* %73, %struct.loopback_cable** %84, align 8
  br label %85

85:                                               ; preds = %66, %28
  %86 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %87 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %88 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %87, i32 0, i32 0
  store %struct.loopback_cable* %86, %struct.loopback_cable** %88, align 8
  %89 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %90 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %91 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %90, i32 0, i32 1
  %92 = load %struct.loopback_pcm**, %struct.loopback_pcm*** %91, align 8
  %93 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %94 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.loopback_pcm*, %struct.loopback_pcm** %92, i64 %95
  store %struct.loopback_pcm* %89, %struct.loopback_pcm** %96, align 8
  %97 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %98 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %99 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %97, i32 %98)
  %100 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %101 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %102 = load i32, i32* @rule_format, align 4
  %103 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %104 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %103, i32 0, i32 0
  %105 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %106 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %100, i32 0, i32 %101, i32 %102, i8** %104, i32 %105, i32 -1)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %85
  br label %153

110:                                              ; preds = %85
  %111 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %112 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %113 = load i32, i32* @rule_rate, align 4
  %114 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %115 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %114, i32 0, i32 0
  %116 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %117 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %111, i32 0, i32 %112, i32 %113, i8** %115, i32 %116, i32 -1)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  br label %153

121:                                              ; preds = %110
  %122 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %123 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %124 = load i32, i32* @rule_channels, align 4
  %125 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %126 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %125, i32 0, i32 0
  %127 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %128 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %122, i32 0, i32 %123, i32 %124, i8** %126, i32 %127, i32 -1)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  br label %153

132:                                              ; preds = %121
  %133 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %134 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %135 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %134, i32 0, i32 2
  store %struct.loopback_pcm* %133, %struct.loopback_pcm** %135, align 8
  %136 = load i32, i32* @loopback_runtime_free, align 4
  %137 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %138 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %140 = call i64 @get_notify(%struct.loopback_pcm* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %132
  %143 = load i8*, i8** @loopback_pcm_hardware, align 8
  %144 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %145 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %144, i32 0, i32 0
  store i8* %143, i8** %145, align 8
  br label %152

146:                                              ; preds = %132
  %147 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %148 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %151 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  br label %152

152:                                              ; preds = %146, %142
  br label %153

153:                                              ; preds = %152, %131, %120, %109, %61, %25
  %154 = load %struct.loopback*, %struct.loopback** %4, align 8
  %155 = getelementptr inbounds %struct.loopback, %struct.loopback* %154, i32 0, i32 0
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load i32, i32* %7, align 4
  ret i32 %157
}

declare dso_local i32 @get_cable_index(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @kfree(%struct.loopback_pcm*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, i8**, i32, i32) #1

declare dso_local i64 @get_notify(%struct.loopback_pcm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
