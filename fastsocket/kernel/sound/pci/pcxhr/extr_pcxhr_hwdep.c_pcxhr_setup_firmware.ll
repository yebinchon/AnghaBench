; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_hwdep.c_pcxhr_setup_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_hwdep.c_pcxhr_setup_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { %struct.TYPE_4__**, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.snd_hwdep = type { i32, i32, i32, %struct.TYPE_3__, %struct.pcxhr_mgr*, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@PCXHR_HWDEP_ID = common dso_local global i8* null, align 8
@SNDRV_HWDEP_IFACE_PCXHR = common dso_local global i32 0, align 4
@pcxhr_hwdep_dsp_status = common dso_local global i32 0, align 4
@pcxhr_hwdep_dsp_load = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcxhr_setup_firmware(%struct.pcxhr_mgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcxhr_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_hwdep*, align 8
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %3, align 8
  %6 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %7 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %8, i64 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** @PCXHR_HWDEP_ID, align 8
  %14 = call i32 @snd_hwdep_new(i32 %12, i8* %13, i32 0, %struct.snd_hwdep** %5)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %64

19:                                               ; preds = %1
  %20 = load i32, i32* @SNDRV_HWDEP_IFACE_PCXHR, align 4
  %21 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %22 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %24 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %25 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %24, i32 0, i32 4
  store %struct.pcxhr_mgr* %23, %struct.pcxhr_mgr** %25, align 8
  %26 = load i32, i32* @pcxhr_hwdep_dsp_status, align 4
  %27 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %28 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @pcxhr_hwdep_dsp_load, align 4
  %31 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %32 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %35 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %37 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  %42 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %43 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %45 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.snd_hwdep*, %struct.snd_hwdep** %5, align 8
  %47 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** @PCXHR_HWDEP_ID, align 8
  %50 = call i32 @sprintf(i32 %48, i8* %49)
  %51 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %52 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i64 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @snd_card_register(i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %19
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %64

63:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %61, %17
  %65 = load i32, i32* %2, align 4
  ret i32 %65
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
