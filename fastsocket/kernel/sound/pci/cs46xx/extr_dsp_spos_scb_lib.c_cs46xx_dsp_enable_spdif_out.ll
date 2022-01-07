; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_enable_spdif_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos_scb_lib.c_cs46xx_dsp_enable_spdif_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { i32, i32, i64, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@DSP_SPDIF_STATUS_HW_ENABLED = common dso_local global i32 0, align 4
@DSP_SPDIF_STATUS_PLAYBACK_OPEN = common dso_local global i32 0, align 4
@DSP_SPDIF_STATUS_OUTPUT_ENABLED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OUTPUT_SNOOP_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"AsynchFGTxSCB\00", align 1
@ASYNCTX_SCB_ADDR = common dso_local global i32 0, align 4
@SPDIFO_SCB_INST = common dso_local global i32 0, align 4
@SPDIFO_IP_OUTPUT_BUFFER1 = common dso_local global i32 0, align 4
@SCB_ON_PARENT_NEXT_SCB = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"PCMSerialInput_II\00", align 1
@PCMSERIALINII_SCB_ADDR = common dso_local global i32 0, align 4
@SCB_ON_PARENT_SUBLIST_SCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_dsp_enable_spdif_out(%struct.snd_cs46xx* %0) #0 {
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
  %11 = load i32, i32* @DSP_SPDIF_STATUS_HW_ENABLED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %16 = call i32 @cs46xx_dsp_enable_spdif_hw(%struct.snd_cs46xx* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %19 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DSP_SPDIF_STATUS_PLAYBACK_OPEN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load i32, i32* @DSP_SPDIF_STATUS_OUTPUT_ENABLED, align 4
  %26 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %27 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %114

32:                                               ; preds = %17
  %33 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %34 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @snd_BUG_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %114

41:                                               ; preds = %32
  %42 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %43 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %42, i32 0, i32 5
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %48 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @snd_BUG_ON(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %114

57:                                               ; preds = %41
  %58 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %59 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %60 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %59, i32 0, i32 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 2
  %65 = shl i32 %64, 2
  %66 = load i32, i32* @OUTPUT_SNOOP_BUFFER, align 4
  %67 = add nsw i32 %66, 16
  %68 = shl i32 %67, 16
  %69 = call i32 @snd_cs46xx_poke(%struct.snd_cs46xx* %58, i32 %65, i32 %68)
  %70 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %71 = load i32, i32* @ASYNCTX_SCB_ADDR, align 4
  %72 = load i32, i32* @SPDIFO_SCB_INST, align 4
  %73 = load i32, i32* @SPDIFO_IP_OUTPUT_BUFFER1, align 4
  %74 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %75 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %74, i32 0, i32 5
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* @SCB_ON_PARENT_NEXT_SCB, align 4
  %78 = call i32 @cs46xx_dsp_create_asynch_fg_tx_scb(%struct.snd_cs46xx* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72, i32 %73, %struct.TYPE_4__* %76, i32 %77)
  %79 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %80 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %82 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %57
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %114

88:                                               ; preds = %57
  %89 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %90 = load i32, i32* @PCMSERIALINII_SCB_ADDR, align 4
  %91 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %92 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %91, i32 0, i32 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %95 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SCB_ON_PARENT_SUBLIST_SCB, align 4
  %98 = call i32 @cs46xx_dsp_create_pcm_serial_input_scb(%struct.snd_cs46xx* %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %90, %struct.TYPE_3__* %93, i32 %96, i32 %97)
  %99 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %100 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 8
  %101 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %102 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %88
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %114

108:                                              ; preds = %88
  %109 = load i32, i32* @DSP_SPDIF_STATUS_OUTPUT_ENABLED, align 4
  %110 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %111 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %108, %105, %85, %54, %38, %24
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @cs46xx_dsp_enable_spdif_hw(%struct.snd_cs46xx*) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_cs46xx_poke(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @cs46xx_dsp_create_asynch_fg_tx_scb(%struct.snd_cs46xx*, i8*, i32, i32, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @cs46xx_dsp_create_pcm_serial_input_scb(%struct.snd_cs46xx*, i8*, i32, %struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
