; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart_hwdep.c_snd_mixart_setup_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart_hwdep.c_snd_mixart_setup_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixart_mgr = type { %struct.TYPE_4__**, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_hwdep = type { i32, i32, %struct.TYPE_3__, %struct.mixart_mgr*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@SND_MIXART_HWDEP_ID = common dso_local global i8* null, align 8
@SNDRV_HWDEP_IFACE_MIXART = common dso_local global i32 0, align 4
@mixart_hwdep_dsp_status = common dso_local global i32 0, align 4
@mixart_hwdep_dsp_load = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_mixart_setup_firmware(%struct.mixart_mgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mixart_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_hwdep*, align 8
  store %struct.mixart_mgr* %0, %struct.mixart_mgr** %3, align 8
  %6 = load %struct.mixart_mgr*, %struct.mixart_mgr** %3, align 8
  %7 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %8, i64 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** @SND_MIXART_HWDEP_ID, align 8
  %14 = call i32 @snd_hwdep_new(i32 %12, i8* %13, i32 0, %struct.snd_hwdep** %5)
  store i32 %14, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %50

18:                                               ; preds = %1
  %19 = load i32, i32* @SNDRV_HWDEP_IFACE_MIXART, align 4
  %20 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %21 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.mixart_mgr*, %struct.mixart_mgr** %3, align 8
  %23 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %24 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %23, i32 0, i32 3
  store %struct.mixart_mgr* %22, %struct.mixart_mgr** %24, align 8
  %25 = load i32, i32* @mixart_hwdep_dsp_status, align 4
  %26 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %27 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @mixart_hwdep_dsp_load, align 4
  %30 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %31 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %34 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %36 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** @SND_MIXART_HWDEP_ID, align 8
  %39 = call i32 @sprintf(i32 %37, i8* %38)
  %40 = load %struct.mixart_mgr*, %struct.mixart_mgr** %3, align 8
  %41 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.mixart_mgr*, %struct.mixart_mgr** %3, align 8
  %43 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @snd_card_register(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %18, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @snd_hwdep_new(i32, i8*, i32, %struct.snd_hwdep**) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @snd_card_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
