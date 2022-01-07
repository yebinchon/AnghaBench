; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_add_secret_dac_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_via.c_add_secret_dac_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i64, %struct.via_spec* }
%struct.via_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AC_WID_AUD_OUT = common dso_local global i64 0, align 8
@AC_WCAP_DIGITAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @add_secret_dac_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_secret_dac_path(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.via_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i64], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 2
  %12 = load %struct.via_spec*, %struct.via_spec** %11, align 8
  store %struct.via_spec* %12, %struct.via_spec** %4, align 8
  %13 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %14 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

19:                                               ; preds = %1
  %20 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %21 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %22 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 0
  %26 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 0
  %27 = call i64 @ARRAY_SIZE(i64* %26)
  %28 = sub nsw i64 %27, 1
  %29 = call i32 @snd_hda_get_connections(%struct.hda_codec* %20, i32 %24, i64* %25, i64 %28)
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %46, %19
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @get_wcaps(%struct.hda_codec* %35, i64 %39)
  %41 = call i64 @get_wcaps_type(i32 %40)
  %42 = load i64, i64* @AC_WID_AUD_OUT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %93

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %51 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %87, %49
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %56 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %53
  %60 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @get_wcaps(%struct.hda_codec* %60, i64 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i64 @get_wcaps_type(i32 %63)
  %65 = load i64, i64* @AC_WID_AUD_OUT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %59
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @AC_WCAP_DIGITAL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %67
  %73 = load i64, i64* %8, align 8
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 %76
  store i64 %73, i64* %77, align 8
  %78 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %79 = load %struct.via_spec*, %struct.via_spec** %4, align 8
  %80 = getelementptr inbounds %struct.via_spec, %struct.via_spec* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = getelementptr inbounds [8 x i64], [8 x i64]* %7, i64 0, i64 0
  %85 = call i32 @snd_hda_override_conn_list(%struct.hda_codec* %78, i32 %82, i32 %83, i64* %84)
  store i32 %85, i32* %2, align 4
  br label %93

86:                                               ; preds = %67, %59
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  %90 = load i64, i64* %8, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %8, align 8
  br label %53

92:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %72, %44, %18
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @snd_hda_get_connections(%struct.hda_codec*, i32, i64*, i64) #1

declare dso_local i64 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @get_wcaps_type(i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_override_conn_list(%struct.hda_codec*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
