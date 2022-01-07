; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_assign_out_path_ctls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_assign_out_path_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.nid_path = type { i32* }

@BAD_SHARED_VOL = common dso_local global i32 0, align 4
@NID_PATH_VOL_CTL = common dso_local global i64 0, align 8
@NID_PATH_MUTE_CTL = common dso_local global i64 0, align 8
@HDA_OUTPUT = common dso_local global i32 0, align 4
@AC_WID_PIN = common dso_local global i32 0, align 4
@AC_WID_AUD_OUT = common dso_local global i32 0, align 4
@HDA_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, %struct.nid_path*)* @assign_out_path_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_out_path_ctls(%struct.hda_codec* %0, %struct.nid_path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca %struct.nid_path*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store %struct.nid_path* %1, %struct.nid_path** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %11 = icmp ne %struct.nid_path* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @BAD_SHARED_VOL, align 4
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %3, align 4
  br label %119

15:                                               ; preds = %2
  %16 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %17 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @NID_PATH_VOL_CTL, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %15
  %24 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %25 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @NID_PATH_MUTE_CTL, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23, %15
  store i32 0, i32* %3, align 4
  br label %119

32:                                               ; preds = %23
  %33 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %34 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %35 = call i64 @look_for_out_vol_nid(%struct.hda_codec* %33, %struct.nid_path* %34)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %32
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* @HDA_OUTPUT, align 4
  %41 = call i32 @HDA_COMPOSE_AMP_VAL(i64 %39, i32 3, i32 0, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* @NID_PATH_VOL_CTL, align 8
  %45 = call i64 @is_ctl_used(%struct.hda_codec* %42, i32 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32, i32* @BAD_SHARED_VOL, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %58

51:                                               ; preds = %38
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %54 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @NID_PATH_VOL_CTL, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %52, i32* %57, align 4
  br label %58

58:                                               ; preds = %51, %47
  br label %63

59:                                               ; preds = %32
  %60 = load i32, i32* @BAD_SHARED_VOL, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %59, %58
  %64 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %65 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %66 = call i64 @look_for_out_mute_nid(%struct.hda_codec* %64, %struct.nid_path* %65)
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %113

69:                                               ; preds = %63
  %70 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @get_wcaps(%struct.hda_codec* %70, i64 %71)
  %73 = call i32 @get_wcaps_type(i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @AC_WID_PIN, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %87, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @AC_WID_AUD_OUT, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  %82 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i32, i32* @HDA_OUTPUT, align 4
  %85 = call i64 @nid_has_mute(%struct.hda_codec* %82, i64 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81, %77, %69
  %88 = load i64, i64* %6, align 8
  %89 = load i32, i32* @HDA_OUTPUT, align 4
  %90 = call i32 @HDA_COMPOSE_AMP_VAL(i64 %88, i32 3, i32 0, i32 %89)
  store i32 %90, i32* %7, align 4
  br label %95

91:                                               ; preds = %81
  %92 = load i64, i64* %6, align 8
  %93 = load i32, i32* @HDA_INPUT, align 4
  %94 = call i32 @HDA_COMPOSE_AMP_VAL(i64 %92, i32 3, i32 0, i32 %93)
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %91, %87
  %96 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i64, i64* @NID_PATH_MUTE_CTL, align 8
  %99 = call i64 @is_ctl_used(%struct.hda_codec* %96, i32 %97, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* @BAD_SHARED_VOL, align 4
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %8, align 4
  br label %112

105:                                              ; preds = %95
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.nid_path*, %struct.nid_path** %5, align 8
  %108 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @NID_PATH_MUTE_CTL, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %106, i32* %111, align 4
  br label %112

112:                                              ; preds = %105, %101
  br label %117

113:                                              ; preds = %63
  %114 = load i32, i32* @BAD_SHARED_VOL, align 4
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %113, %112
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %31, %12
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i64 @look_for_out_vol_nid(%struct.hda_codec*, %struct.nid_path*) #1

declare dso_local i32 @HDA_COMPOSE_AMP_VAL(i64, i32, i32, i32) #1

declare dso_local i64 @is_ctl_used(%struct.hda_codec*, i32, i64) #1

declare dso_local i64 @look_for_out_mute_nid(%struct.hda_codec*, %struct.nid_path*) #1

declare dso_local i32 @get_wcaps_type(i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i64) #1

declare dso_local i64 @nid_has_mute(%struct.hda_codec*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
