; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_cirrus.c_cs_alloc_spec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_cirrus.c_cs_alloc_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_spec = type { i32, i32 }
%struct.hda_codec = type { %struct.cs_spec* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cs_spec* (%struct.hda_codec*, i32)* @cs_alloc_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cs_spec* @cs_alloc_spec(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.cs_spec*, align 8
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.cs_spec* @kzalloc(i32 8, i32 %7)
  store %struct.cs_spec* %8, %struct.cs_spec** %6, align 8
  %9 = load %struct.cs_spec*, %struct.cs_spec** %6, align 8
  %10 = icmp ne %struct.cs_spec* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.cs_spec* null, %struct.cs_spec** %3, align 8
  br label %23

12:                                               ; preds = %2
  %13 = load %struct.cs_spec*, %struct.cs_spec** %6, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 0
  store %struct.cs_spec* %13, %struct.cs_spec** %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.cs_spec*, %struct.cs_spec** %6, align 8
  %18 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.cs_spec*, %struct.cs_spec** %6, align 8
  %20 = getelementptr inbounds %struct.cs_spec, %struct.cs_spec* %19, i32 0, i32 1
  %21 = call i32 @snd_hda_gen_spec_init(i32* %20)
  %22 = load %struct.cs_spec*, %struct.cs_spec** %6, align 8
  store %struct.cs_spec* %22, %struct.cs_spec** %3, align 8
  br label %23

23:                                               ; preds = %12, %11
  %24 = load %struct.cs_spec*, %struct.cs_spec** %3, align 8
  ret %struct.cs_spec* %24
}

declare dso_local %struct.cs_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_hda_gen_spec_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
