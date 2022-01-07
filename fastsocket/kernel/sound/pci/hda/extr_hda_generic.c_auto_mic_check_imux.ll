; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_auto_mic_check_imux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_auto_mic_check_imux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, %struct.TYPE_2__*, i32, %struct.hda_input_mux }
%struct.TYPE_2__ = type { i64, i32 }
%struct.hda_input_mux = type { i32 }

@HDA_GEN_MIC_EVENT = common dso_local global i32 0, align 4
@call_mic_autoswitch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @auto_mic_check_imux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auto_mic_check_imux(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_gen_spec*, align 8
  %5 = alloca %struct.hda_input_mux*, align 8
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  store %struct.hda_gen_spec* %9, %struct.hda_gen_spec** %4, align 8
  %10 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %11 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %10, i32 0, i32 3
  store %struct.hda_input_mux* %11, %struct.hda_input_mux** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %52, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %15 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %12
  %19 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %20 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %28 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.hda_input_mux*, %struct.hda_input_mux** %5, align 8
  %31 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @find_idx_in_nid_list(i32 %26, i32 %29, i32 %32)
  %34 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %35 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 %33, i64* %40, align 8
  %41 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %42 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %79

51:                                               ; preds = %18
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %12

55:                                               ; preds = %12
  store i32 1, i32* %6, align 4
  br label %56

56:                                               ; preds = %75, %55
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %59 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %56
  %63 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %64 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %65 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @HDA_GEN_MIC_EVENT, align 4
  %73 = load i32, i32* @call_mic_autoswitch, align 4
  %74 = call i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec* %63, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %56

78:                                               ; preds = %56
  store i32 1, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %50
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @find_idx_in_nid_list(i32, i32, i32) #1

declare dso_local i32 @snd_hda_jack_detect_enable_callback(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
