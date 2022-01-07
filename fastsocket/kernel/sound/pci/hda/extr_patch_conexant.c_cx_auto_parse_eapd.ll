; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cx_auto_parse_eapd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_conexant.c_cx_auto_parse_eapd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i64, i64, %struct.conexant_spec* }
%struct.conexant_spec = type { i32, i32, i64* }

@AC_WID_PIN = common dso_local global i64 0, align 8
@AC_PINCAP_EAPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @cx_auto_parse_eapd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx_auto_parse_eapd(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.conexant_spec*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 2
  %8 = load %struct.conexant_spec*, %struct.conexant_spec** %7, align 8
  store %struct.conexant_spec* %8, %struct.conexant_spec** %3, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  store i64 %15, i64* %5, align 8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %60, %1
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %19
  %24 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @get_wcaps(%struct.hda_codec* %24, i64 %25)
  %27 = call i64 @get_wcaps_type(i32 %26)
  %28 = load i64, i64* @AC_WID_PIN, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %60

31:                                               ; preds = %23
  %32 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @snd_hda_query_pin_caps(%struct.hda_codec* %32, i64 %33)
  %35 = load i32, i32* @AC_PINCAP_EAPD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %60

39:                                               ; preds = %31
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %42 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %45 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i64, i64* %43, i64 %48
  store i64 %40, i64* %49, align 8
  %50 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %51 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %54 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = call i32 @ARRAY_SIZE(i64* %55)
  %57 = icmp sge i32 %52, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %39
  br label %63

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %38, %30
  %61 = load i64, i64* %4, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %4, align 8
  br label %19

63:                                               ; preds = %58, %19
  %64 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %65 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 2
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.conexant_spec*, %struct.conexant_spec** %3, align 8
  %70 = getelementptr inbounds %struct.conexant_spec, %struct.conexant_spec* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %63
  ret void
}

declare dso_local i64 @get_wcaps_type(i32) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i64) #1

declare dso_local i32 @snd_hda_query_pin_caps(%struct.hda_codec*, i64) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
