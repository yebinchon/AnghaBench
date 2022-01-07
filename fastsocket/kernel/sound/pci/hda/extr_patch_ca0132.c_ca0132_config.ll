; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32*, i32, i32*, i32, i32, i32*, i32, i32*, i32, i32, %struct.TYPE_2__, %struct.auto_pin_cfg }
%struct.TYPE_2__ = type { i32*, i32, i32, i32 }
%struct.auto_pin_cfg = type { i32*, i32, i32, i8*, i8** }

@HDA_PCM_TYPE_SPDIF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ca0132_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_config(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca %struct.auto_pin_cfg*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.ca0132_spec*, %struct.ca0132_spec** %6, align 8
  store %struct.ca0132_spec* %7, %struct.ca0132_spec** %3, align 8
  %8 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %9 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %8, i32 0, i32 11
  store %struct.auto_pin_cfg* %9, %struct.auto_pin_cfg** %4, align 8
  %10 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %11 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 2, i32* %13, align 4
  %14 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %15 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 3, i32* %17, align 4
  %18 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %19 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 4, i32* %21, align 4
  %22 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %23 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %26 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %25, i32 0, i32 10
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* %24, i32** %27, align 8
  %28 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %29 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %28, i32 0, i32 10
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 3, i32* %30, align 8
  %31 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %32 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %31, i32 0, i32 10
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i32 2, i32* %33, align 4
  %34 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %35 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %34, i32 0, i32 1
  store i32 2, i32* %35, align 8
  %36 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %37 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 11, i32* %39, align 4
  %40 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %41 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 16, i32* %43, align 4
  %44 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %45 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %44, i32 0, i32 3
  store i32 2, i32* %45, align 8
  %46 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %47 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %46, i32 0, i32 4
  store i32 3, i32* %47, align 4
  %48 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %49 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 7, i32* %51, align 4
  %52 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %53 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 8, i32* %55, align 4
  %56 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %57 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 10, i32* %59, align 4
  %60 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %61 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %60, i32 0, i32 6
  store i32 7, i32* %61, align 8
  %62 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %63 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %62, i32 0, i32 7
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 18, i32* %65, align 4
  %66 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %67 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %66, i32 0, i32 7
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 17, i32* %69, align 4
  %70 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %71 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %70, i32 0, i32 7
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 19, i32* %73, align 4
  %74 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %75 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %74, i32 0, i32 8
  store i32 5, i32* %75, align 8
  %76 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %77 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %80 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %79, i32 0, i32 10
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 3
  store i32 %78, i32* %81, align 8
  %82 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %83 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 12, i32* %85, align 4
  %86 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %87 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %86, i32 0, i32 1
  store i32 1, i32* %87, align 8
  %88 = load i8*, i8** @HDA_PCM_TYPE_SPDIF, align 8
  %89 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %90 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %89, i32 0, i32 4
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  store i8* %88, i8** %92, align 8
  %93 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %94 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %93, i32 0, i32 9
  store i32 9, i32* %94, align 4
  %95 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %96 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %95, i32 0, i32 2
  store i32 14, i32* %96, align 4
  %97 = load i8*, i8** @HDA_PCM_TYPE_SPDIF, align 8
  %98 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %99 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
