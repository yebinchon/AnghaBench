; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_disable_spdif_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_disable_spdif_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@DSP_SPDIF_STATUS_PLAYBACK_OPEN = common dso_local global i32 0, align 4
@DSP_SPDIF_STATUS_OUTPUT_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SPDIFO_IP_OUTPUT_BUFFER1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_dsp_disable_spdif_out(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca %struct.dsp_spos_instance*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  %5 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %6 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %5, i32 0, i32 0
  %7 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  store %struct.dsp_spos_instance* %7, %struct.dsp_spos_instance** %4, align 8
  %8 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %9 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @DSP_SPDIF_STATUS_PLAYBACK_OPEN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load i32, i32* @DSP_SPDIF_STATUS_OUTPUT_ENABLED, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %18 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %103

23:                                               ; preds = %1
  %24 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %25 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @snd_BUG_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %103

35:                                               ; preds = %23
  %36 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %37 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @snd_BUG_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %103

47:                                               ; preds = %35
  %48 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %49 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %54 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp ne %struct.TYPE_4__* %52, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @snd_BUG_ON(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %103

63:                                               ; preds = %47
  %64 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %65 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %70 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %69, i32 0, i32 3
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = icmp ne %struct.TYPE_3__* %68, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @snd_BUG_ON(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %63
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %103

79:                                               ; preds = %63
  %80 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %81 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %82 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = call i32 @cs46xx_dsp_remove_scb(%struct.snd_cs46xx* %80, %struct.TYPE_4__* %83)
  %85 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %86 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %87 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = call i32 @cs46xx_dsp_remove_scb(%struct.snd_cs46xx* %85, %struct.TYPE_4__* %88)
  %90 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %91 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %90, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %91, align 8
  %92 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %93 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %92, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %93, align 8
  %94 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %95 = load i32, i32* @SPDIFO_IP_OUTPUT_BUFFER1, align 4
  %96 = call i32 @_dsp_clear_sample_buffer(%struct.snd_cs46xx* %94, i32 %95, i32 256)
  %97 = load i32, i32* @DSP_SPDIF_STATUS_OUTPUT_ENABLED, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %100 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %79, %76, %60, %44, %32, %14
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @cs46xx_dsp_remove_scb(%struct.snd_cs46xx*, %struct.TYPE_4__*) #1

declare dso_local i32 @_dsp_clear_sample_buffer(%struct.snd_cs46xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
