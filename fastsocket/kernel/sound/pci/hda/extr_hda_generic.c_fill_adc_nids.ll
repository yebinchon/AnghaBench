; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_fill_adc_nids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_fill_adc_nids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, i64, %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32, i64*, i32 }

@AC_WID_AUD_IN = common dso_local global i32 0, align 4
@AC_WCAP_DIGITAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @fill_adc_nids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_adc_nids(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 2
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %12, align 8
  store %struct.hda_gen_spec* %13, %struct.hda_gen_spec** %3, align 8
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %15 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %14, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  store i64* %16, i64** %5, align 8
  %17 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %18 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %17, i32 0, i32 2
  %19 = load i64*, i64** %18, align 8
  %20 = call i32 @ARRAY_SIZE(i64* %19)
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %22 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %57, %1
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %27 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %24
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @get_wcaps(%struct.hda_codec* %31, i64 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @get_wcaps_type(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @AC_WID_AUD_IN, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @AC_WCAP_DIGITAL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %30
  br label %57

45:                                               ; preds = %39
  %46 = load i64, i64* %4, align 8
  %47 = load i64*, i64** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 %46, i64* %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %62

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %44
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = load i64, i64* %4, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %4, align 8
  br label %24

62:                                               ; preds = %55, %24
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %65 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %68 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %70 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %73 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memcpy(i32 %71, i64* %74, i32 %78)
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @get_wcaps(%struct.hda_codec*, i64) #1

declare dso_local i32 @get_wcaps_type(i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
