; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_sigmatel.c_stac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.sigmatel_spec* }
%struct.sigmatel_spec = type { i32, i32, i32, %struct.TYPE_2__, i64, i32, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@AC_VERB_IDT_SET_POWER_MAP = common dso_local global i32 0, align 4
@AC_VERB_SET_POWER_STATE = common dso_local global i32 0, align 4
@AC_PWRST_D3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @stac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stac_init(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.sigmatel_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 1
  %8 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %7, align 8
  store %struct.sigmatel_spec* %8, %struct.sigmatel_spec** %3, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = call i32 @stac_store_hints(%struct.hda_codec* %9)
  %11 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %12 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %15 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %20 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %26 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %27 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %30 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @stac_gpio_set(%struct.hda_codec* %25, i32 %28, i32 %31, i32 %32)
  %34 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %35 = call i32 @snd_hda_gen_init(%struct.hda_codec* %34)
  %36 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %37 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %24
  %41 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AC_VERB_IDT_SET_POWER_MAP, align 4
  %46 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %47 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @snd_hda_codec_write(%struct.hda_codec* %41, i32 %44, i32 0, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %40, %24
  %51 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %52 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %89

55:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %85, %55
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %59 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %56
  %64 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %65 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = shl i32 1, %67
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %85

72:                                               ; preds = %63
  %73 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %74 = load %struct.sigmatel_spec*, %struct.sigmatel_spec** %3, align 8
  %75 = getelementptr inbounds %struct.sigmatel_spec, %struct.sigmatel_spec* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @AC_VERB_SET_POWER_STATE, align 4
  %83 = load i32, i32* @AC_PWRST_D3, align 4
  %84 = call i32 @snd_hda_codec_write(%struct.hda_codec* %73, i32 %81, i32 0, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %72, %71
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %56

88:                                               ; preds = %56
  br label %89

89:                                               ; preds = %88, %50
  ret i32 0
}

declare dso_local i32 @stac_store_hints(%struct.hda_codec*) #1

declare dso_local i32 @stac_gpio_set(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_gen_init(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
