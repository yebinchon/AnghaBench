; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_patch_generic_hdmi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_patch_generic_hdmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.hda_codec = type { i32, %struct.TYPE_2__, %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@generic_hdmi_patch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@haswell_set_power_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_generic_hdmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_generic_hdmi(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hdmi_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.hdmi_spec* @kzalloc(i32 4, i32 %5)
  store %struct.hdmi_spec* %6, %struct.hdmi_spec** %4, align 8
  %7 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %8 = icmp eq %struct.hdmi_spec* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %14 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %15 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %14, i32 0, i32 2
  store %struct.hdmi_spec* %13, %struct.hdmi_spec** %15, align 8
  %16 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %17 = call i32 @hdmi_array_init(%struct.hdmi_spec* %16, i32 4)
  %18 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, -2138691577
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %24 = call i32 @intel_haswell_enable_all_pins(%struct.hda_codec* %23, i32 1)
  %25 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %26 = call i32 @intel_haswell_fixup_enable_dp12(%struct.hda_codec* %25)
  br label %27

27:                                               ; preds = %22, %12
  %28 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %29 = call i64 @hdmi_parse_codec(%struct.hda_codec* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %33 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %32, i32 0, i32 2
  store %struct.hdmi_spec* null, %struct.hdmi_spec** %33, align 8
  %34 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %35 = call i32 @kfree(%struct.hdmi_spec* %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %55

38:                                               ; preds = %27
  %39 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %40 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %39, i32 0, i32 1
  %41 = bitcast %struct.TYPE_2__* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 bitcast (%struct.TYPE_2__* @generic_hdmi_patch_ops to i8*), i64 4, i1 false)
  %42 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %43 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, -2138691577
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i32, i32* @haswell_set_power_state, align 4
  %48 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %49 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %38
  %52 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %53 = call i32 @generic_hdmi_init_per_pins(%struct.hda_codec* %52)
  %54 = call i32 (...) @init_channel_allocations()
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %31, %9
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.hdmi_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @hdmi_array_init(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @intel_haswell_enable_all_pins(%struct.hda_codec*, i32) #1

declare dso_local i32 @intel_haswell_fixup_enable_dp12(%struct.hda_codec*) #1

declare dso_local i64 @hdmi_parse_codec(%struct.hda_codec*) #1

declare dso_local i32 @kfree(%struct.hdmi_spec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @generic_hdmi_init_per_pins(%struct.hda_codec*) #1

declare dso_local i32 @init_channel_allocations(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
