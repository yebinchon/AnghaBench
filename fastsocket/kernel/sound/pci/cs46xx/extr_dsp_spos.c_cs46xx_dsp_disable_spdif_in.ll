; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_disable_spdif_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_disable_spdif_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)*, i32, %struct.dsp_spos_instance* }
%struct.dsp_spos_instance = type { i64, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs46xx_dsp_disable_spdif_in(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca %struct.dsp_spos_instance*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  %5 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %6 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %5, i32 0, i32 3
  %7 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %6, align 8
  store %struct.dsp_spos_instance* %7, %struct.dsp_spos_instance** %4, align 8
  %8 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %9 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @snd_BUG_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %62

19:                                               ; preds = %1
  %20 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %21 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @snd_BUG_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %62

31:                                               ; preds = %19
  %32 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %33 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %32, i32 0, i32 2
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %36 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %37 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @cs46xx_dsp_remove_scb(%struct.snd_cs46xx* %35, i32* %38)
  %40 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %41 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  %42 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %43 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %44 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @cs46xx_src_unlink(%struct.snd_cs46xx* %42, i32 %45)
  %47 = load %struct.dsp_spos_instance*, %struct.dsp_spos_instance** %4, align 8
  %48 = getelementptr inbounds %struct.dsp_spos_instance, %struct.dsp_spos_instance* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %50 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %49, i32 0, i32 2
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %53 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %52, i32 0, i32 1
  %54 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %53, align 8
  %55 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %56 = call i32 %54(%struct.snd_cs46xx* %55, i32 -1)
  %57 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %58 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %57, i32 0, i32 0
  %59 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %58, align 8
  %60 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %61 = call i32 %59(%struct.snd_cs46xx* %60, i32 -1)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %31, %28, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cs46xx_dsp_remove_scb(%struct.snd_cs46xx*, i32*) #1

declare dso_local i32 @cs46xx_src_unlink(%struct.snd_cs46xx*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
