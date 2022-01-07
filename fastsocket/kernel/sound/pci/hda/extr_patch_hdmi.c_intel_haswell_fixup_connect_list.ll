; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_intel_haswell_fixup_connect_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_intel_haswell_fixup_connect_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"hdmi: haswell: override pin connection 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*, i32)* @intel_haswell_fixup_connect_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_haswell_fixup_connect_list(%struct.hda_codec* %0, i32 %1) #0 {
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi_spec*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.hdmi_spec*, %struct.hdmi_spec** %9, align 8
  store %struct.hdmi_spec* %10, %struct.hdmi_spec** %5, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = call i32 @snd_hda_get_connections(%struct.hda_codec* %11, i32 %12, i32* %13, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.hdmi_spec*, %struct.hdmi_spec** %5, align 8
  %19 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %24 = load %struct.hdmi_spec*, %struct.hdmi_spec** %5, align 8
  %25 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hdmi_spec*, %struct.hdmi_spec** %5, align 8
  %28 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memcmp(i32* %23, i32 %26, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %22
  br label %48

36:                                               ; preds = %22, %2
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @snd_printdd(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.hdmi_spec*, %struct.hdmi_spec** %5, align 8
  %42 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hdmi_spec*, %struct.hdmi_spec** %5, align 8
  %45 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @snd_hda_override_conn_list(%struct.hda_codec* %39, i32 %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %36, %35
  ret void
}

declare dso_local i32 @snd_hda_get_connections(%struct.hda_codec*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @snd_printdd(i8*, i32) #1

declare dso_local i32 @snd_hda_override_conn_list(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
