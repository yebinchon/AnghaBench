; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_enable_spdif_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_enable_spdif_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32, i32, i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)*, %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DSP_SPDIF_STATUS_INPUT_CTRL_ENABLED = common dso_local global i32 0, align 4
@SP_ASER_COUNTDOWN = common dso_local global i32 0, align 4
@SP_SPDIN_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"AsynchFGRxSCB\00", align 1
@ASYNCRX_SCB_ADDR = common dso_local global i32 0, align 4
@SPDIFI_SCB_INST = common dso_local global i32 0, align 4
@SPDIFI_IP_OUTPUT_BUFFER1 = common dso_local global i32 0, align 4
@SCB_ON_PARENT_SUBLIST_SCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_dsp_enable_spdif_in(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca %struct.dsp_spos_instance*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  %5 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %6 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %5, i32 0, i32 4
  %7 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  store %struct.dsp_spos_instance* %7, %struct.dsp_spos_instance** %4, align 8
  %8 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %9 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %8, i32 0, i32 3
  %10 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %9, align 8
  %11 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %12 = call i32 %10(%struct.snd_cs46xx* %11, i32 1)
  %13 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %14 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %13, i32 0, i32 2
  %15 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %14, align 8
  %16 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %17 = call i32 %15(%struct.snd_cs46xx* %16, i32 1)
  %18 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %19 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @snd_BUG_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %93

26:                                               ; preds = %1
  %27 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %28 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @snd_BUG_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %93

38:                                               ; preds = %26
  %39 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %40 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %43 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DSP_SPDIF_STATUS_INPUT_CTRL_ENABLED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %38
  %49 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %50 = load i32, i32* @SP_ASER_COUNTDOWN, align 4
  %51 = call i32 @cs46xx_poke_via_dsp(%struct.snd_cs46xx* %49, i32 %50, i32 -2147483643)
  %52 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %53 = load i32, i32* @SP_SPDIN_CONTROL, align 4
  %54 = call i32 @cs46xx_poke_via_dsp(%struct.snd_cs46xx* %52, i32 %53, i32 -2147482625)
  %55 = load i32, i32* @DSP_SPDIF_STATUS_INPUT_CTRL_ENABLED, align 4
  %56 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %57 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %48, %38
  %61 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %62 = load i32, i32* @ASYNCRX_SCB_ADDR, align 4
  %63 = load i32, i32* @SPDIFI_SCB_INST, align 4
  %64 = load i32, i32* @SPDIFI_IP_OUTPUT_BUFFER1, align 4
  %65 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %66 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SCB_ON_PARENT_SUBLIST_SCB, align 4
  %69 = call i32 @cs46xx_dsp_create_asynch_fg_rx_scb(%struct.snd_cs46xx* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i32 %64, i32 %67, i32 %68)
  %70 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %71 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %73 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %72, i32 0, i32 1
  %74 = call i32 @spin_lock_irq(i32* %73)
  %75 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %76 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %77 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cs46xx_src_link(%struct.snd_cs46xx* %75, i32 %78)
  %80 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %81 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %82 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @cs46xx_dsp_scb_set_volume(%struct.snd_cs46xx* %80, i32 %83, i32 32767, i32 32767)
  %85 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %86 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %85, i32 0, i32 1
  %87 = call i32 @spin_unlock_irq(i32* %86)
  %88 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %89 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %88, i32 0, i32 2
  store i32 1, i32* %89, align 4
  %90 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %91 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %60, %35, %23
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cs46xx_poke_via_dsp(%struct.snd_cs46xx*, i32, i32) #1

declare dso_local i32 @cs46xx_dsp_create_asynch_fg_rx_scb(%struct.snd_cs46xx*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cs46xx_src_link(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @cs46xx_dsp_scb_set_volume(%struct.snd_cs46xx*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
