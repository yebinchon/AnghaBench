; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_probe_continue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_probe_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@model = common dso_local global i32* null, align 8
@probe_only = common dso_local global i32* null, align 8
@beep_mode = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*)* @azx_probe_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_probe_continue(%struct.azx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.azx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %3, align 8
  %6 = load %struct.azx*, %struct.azx** %3, align 8
  %7 = getelementptr inbounds %struct.azx, %struct.azx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.azx*, %struct.azx** %3, align 8
  %10 = load i32*, i32** @model, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @azx_codec_create(%struct.azx* %9, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %65

19:                                               ; preds = %1
  %20 = load i32*, i32** @probe_only, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.azx*, %struct.azx** %3, align 8
  %29 = call i32 @azx_codec_configure(%struct.azx* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %65

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %19
  %35 = load %struct.azx*, %struct.azx** %3, align 8
  %36 = getelementptr inbounds %struct.azx, %struct.azx* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @snd_hda_build_pcms(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %65

42:                                               ; preds = %34
  %43 = load %struct.azx*, %struct.azx** %3, align 8
  %44 = call i32 @azx_mixer_create(%struct.azx* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %65

48:                                               ; preds = %42
  %49 = load %struct.azx*, %struct.azx** %3, align 8
  %50 = getelementptr inbounds %struct.azx, %struct.azx* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @snd_card_register(i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %65

56:                                               ; preds = %48
  %57 = load %struct.azx*, %struct.azx** %3, align 8
  %58 = getelementptr inbounds %struct.azx, %struct.azx* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load %struct.azx*, %struct.azx** %3, align 8
  %60 = call i32 @power_down_all_codecs(%struct.azx* %59)
  %61 = load %struct.azx*, %struct.azx** %3, align 8
  %62 = call i32 @azx_notifier_register(%struct.azx* %61)
  %63 = load %struct.azx*, %struct.azx** %3, align 8
  %64 = call i32 @azx_add_card_list(%struct.azx* %63)
  store i32 0, i32* %2, align 4
  br label %69

65:                                               ; preds = %55, %47, %41, %32, %18
  %66 = load %struct.azx*, %struct.azx** %3, align 8
  %67 = getelementptr inbounds %struct.azx, %struct.azx* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %56
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @azx_codec_create(%struct.azx*, i32) #1

declare dso_local i32 @azx_codec_configure(%struct.azx*) #1

declare dso_local i32 @snd_hda_build_pcms(i32) #1

declare dso_local i32 @azx_mixer_create(%struct.azx*) #1

declare dso_local i32 @snd_card_register(i32) #1

declare dso_local i32 @power_down_all_codecs(%struct.azx*) #1

declare dso_local i32 @azx_notifier_register(%struct.azx*) #1

declare dso_local i32 @azx_add_card_list(%struct.azx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
