; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_ad1988_add_spdif_mux_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_analog.c_ad1988_add_spdif_mux_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nid_path = type { i32, i32, i32, i32, i32 }
%struct.hda_codec = type { %struct.TYPE_5__, %struct.ad198x_spec* }
%struct.TYPE_5__ = type { i32 }
%struct.ad198x_spec = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ad1988_add_spdif_mux_ctl.fake_paths = internal global [4 x %struct.nid_path] [%struct.nid_path { i32 3, i32 0, i32 0, i32 0, i32 2 }, %struct.nid_path { i32 4, i32 0, i32 0, i32 0, i32 8 }, %struct.nid_path { i32 4, i32 0, i32 0, i32 0, i32 9 }, %struct.nid_path { i32 4, i32 0, i32 0, i32 0, i32 15 }], align 16
@AC_WID_AUD_MIX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ad1988_auto_smux_mixer = common dso_local global i32 0, align 4
@ad1988_auto_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @ad1988_add_spdif_mux_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1988_add_spdif_mux_ctl(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.ad198x_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nid_path*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 1
  %10 = load %struct.ad198x_spec*, %struct.ad198x_spec** %9, align 8
  store %struct.ad198x_spec* %10, %struct.ad198x_spec** %4, align 8
  %11 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %12 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %19 = call i32 @get_wcaps(%struct.hda_codec* %18, i32 29)
  %20 = call i64 @get_wcaps_type(i32 %19)
  %21 = load i64, i64* @AC_WID_AUD_MIX, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %1
  store i32 0, i32* %2, align 4
  br label %87

24:                                               ; preds = %17
  %25 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %26 = call i32 @snd_hda_get_num_conns(%struct.hda_codec* %25, i32 11)
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 3
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 4
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %87

34:                                               ; preds = %30, %24
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %71, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %74

39:                                               ; preds = %35
  %40 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %41 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = call %struct.nid_path* @snd_array_new(i32* %42)
  store %struct.nid_path* %43, %struct.nid_path** %7, align 8
  %44 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %45 = icmp ne %struct.nid_path* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %87

49:                                               ; preds = %39
  %50 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x %struct.nid_path], [4 x %struct.nid_path]* @ad1988_add_spdif_mux_ctl.fake_paths, i64 0, i64 %52
  %54 = bitcast %struct.nid_path* %50 to i8*
  %55 = bitcast %struct.nid_path* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 20, i1 false)
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %49
  %59 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %60 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %49
  %62 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %63 = load %struct.nid_path*, %struct.nid_path** %7, align 8
  %64 = call i32 @snd_hda_get_path_idx(%struct.hda_codec* %62, %struct.nid_path* %63)
  %65 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %66 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %35

74:                                               ; preds = %35
  %75 = load %struct.ad198x_spec*, %struct.ad198x_spec** %4, align 8
  %76 = getelementptr inbounds %struct.ad198x_spec, %struct.ad198x_spec* %75, i32 0, i32 0
  %77 = call i32 @snd_hda_gen_add_kctl(%struct.TYPE_6__* %76, i32* null, i32* @ad1988_auto_smux_mixer)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %87

82:                                               ; preds = %74
  %83 = load i32, i32* @ad1988_auto_init, align 4
  %84 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %85 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 8
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %82, %79, %46, %33, %23
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i64 @get_wcaps_type(i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_get_num_conns(%struct.hda_codec*, i32) #1

declare dso_local %struct.nid_path* @snd_array_new(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_hda_get_path_idx(%struct.hda_codec*, %struct.nid_path*) #1

declare dso_local i32 @snd_hda_gen_add_kctl(%struct.TYPE_6__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
