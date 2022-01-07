; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_add_loopback_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_add_loopback_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_gen_spec = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hda_amp_list = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_gen_spec*, i32, i32)* @add_loopback_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_loopback_list(%struct.hda_gen_spec* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_gen_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_amp_list*, align 8
  store %struct.hda_gen_spec* %0, %struct.hda_gen_spec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %10 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %9, i32 0, i32 0
  %11 = call %struct.hda_amp_list* @snd_array_new(%struct.TYPE_4__* %10)
  store %struct.hda_amp_list* %11, %struct.hda_amp_list** %8, align 8
  %12 = load %struct.hda_amp_list*, %struct.hda_amp_list** %8, align 8
  %13 = icmp ne %struct.hda_amp_list* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %34

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.hda_amp_list*, %struct.hda_amp_list** %8, align 8
  %20 = getelementptr inbounds %struct.hda_amp_list, %struct.hda_amp_list* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @HDA_INPUT, align 4
  %22 = load %struct.hda_amp_list*, %struct.hda_amp_list** %8, align 8
  %23 = getelementptr inbounds %struct.hda_amp_list, %struct.hda_amp_list* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.hda_amp_list*, %struct.hda_amp_list** %8, align 8
  %26 = getelementptr inbounds %struct.hda_amp_list, %struct.hda_amp_list* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %28 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  %32 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %17, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.hda_amp_list* @snd_array_new(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
