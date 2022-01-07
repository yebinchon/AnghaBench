; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_patch_vt1708.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_patch_vt1708.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.hda_codec = type { i64, %struct.TYPE_4__ }
%struct.via_spec = type { i32, i32, i32*, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@VT1708_HP_PIN_NID = common dso_local global i32 0, align 4
@VT1708_CD_PIN_NID = common dso_local global i32 0, align 4
@vt1708_jack_detect_ctl = common dso_local global i32 0, align 4
@vt1708_init_verbs = common dso_local global i32 0, align 4
@via_patch_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@vt1708_build_controls = common dso_local global i32 0, align 4
@vt1708_build_pcms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_vt1708 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_vt1708(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.via_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %7 = call %struct.via_spec* @via_new_spec(%struct.hda_codec* %6)
  store %struct.via_spec* %7, %struct.via_spec** %4, align 8
  %8 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %9 = icmp eq %struct.via_spec* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %76

13:                                               ; preds = %1
  %14 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %15 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 23, i32* %16, align 8
  %17 = call i64 @msecs_to_jiffies(i32 100)
  %18 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %19 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %21 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %23 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %26 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32 1, i32* %27, align 8
  %28 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %29 = load i32, i32* @VT1708_HP_PIN_NID, align 4
  %30 = call i32 @vt1708_set_pinconfig_connect(%struct.hda_codec* %28, i32 %29)
  %31 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %32 = load i32, i32* @VT1708_CD_PIN_NID, align 4
  %33 = call i32 @vt1708_set_pinconfig_connect(%struct.hda_codec* %31, i32 %32)
  %34 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %35 = call i32 @via_parse_auto_config(%struct.hda_codec* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %13
  %39 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %40 = call i32 @via_free(%struct.hda_codec* %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %76

42:                                               ; preds = %13
  %43 = load i32, i32* @vt1708_jack_detect_ctl, align 4
  %44 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %45 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %48 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  store i32 %43, i32* %52, align 4
  %53 = load i32, i32* @vt1708_init_verbs, align 4
  %54 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %55 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %58 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  store i32 %53, i32* %62, align 4
  %63 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %64 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %63, i32 0, i32 1
  %65 = bitcast %struct.TYPE_4__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 4 bitcast (%struct.TYPE_4__* @via_patch_ops to i8*), i64 8, i1 false)
  %66 = load i32, i32* @vt1708_build_controls, align 4
  %67 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %68 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @vt1708_build_pcms, align 4
  %71 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %72 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %75 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %42, %38, %10
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.via_spec* @via_new_spec(%struct.hda_codec*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @vt1708_set_pinconfig_connect(%struct.hda_codec*, i32) #1

declare dso_local i32 @via_parse_auto_config(%struct.hda_codec*) #1

declare dso_local i32 @via_free(%struct.hda_codec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
