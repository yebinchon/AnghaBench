; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_choose_cvt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_hdmi.c_hdmi_choose_cvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.hdmi_spec_per_pin = type { i32, i64* }
%struct.hdmi_spec_per_cvt = type { i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32*, i32*)* @hdmi_choose_cvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_choose_cvt(%struct.hda_codec* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hda_codec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hdmi_spec*, align 8
  %11 = alloca %struct.hdmi_spec_per_pin*, align 8
  %12 = alloca %struct.hdmi_spec_per_cvt*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.hda_codec*, %struct.hda_codec** %6, align 8
  %16 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %15, i32 0, i32 0
  %17 = load %struct.hdmi_spec*, %struct.hdmi_spec** %16, align 8
  store %struct.hdmi_spec* %17, %struct.hdmi_spec** %10, align 8
  store %struct.hdmi_spec_per_cvt* null, %struct.hdmi_spec_per_cvt** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.hdmi_spec*, %struct.hdmi_spec** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec* %18, i32 %19)
  store %struct.hdmi_spec_per_pin* %20, %struct.hdmi_spec_per_pin** %11, align 8
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %68, %4
  %22 = load i32, i32* %13, align 4
  %23 = load %struct.hdmi_spec*, %struct.hdmi_spec** %10, align 8
  %24 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %71

27:                                               ; preds = %21
  %28 = load %struct.hdmi_spec*, %struct.hdmi_spec** %10, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec* %28, i32 %29)
  store %struct.hdmi_spec_per_cvt* %30, %struct.hdmi_spec_per_cvt** %12, align 8
  %31 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %12, align 8
  %32 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %68

36:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %57, %36
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %11, align 8
  %40 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %11, align 8
  %45 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.hdmi_spec_per_cvt*, %struct.hdmi_spec_per_cvt** %12, align 8
  %52 = getelementptr inbounds %struct.hdmi_spec_per_cvt, %struct.hdmi_spec_per_cvt* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %60

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %14, align 4
  br label %37

60:                                               ; preds = %55, %37
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.hdmi_spec_per_pin*, %struct.hdmi_spec_per_pin** %11, align 8
  %63 = getelementptr inbounds %struct.hdmi_spec_per_pin, %struct.hdmi_spec_per_pin* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %68

67:                                               ; preds = %60
  br label %71

68:                                               ; preds = %66, %35
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %21

71:                                               ; preds = %67, %21
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.hdmi_spec*, %struct.hdmi_spec** %10, align 8
  %74 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %93

80:                                               ; preds = %71
  %81 = load i32*, i32** %8, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %13, align 4
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32*, i32** %9, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %14, align 4
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %86
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %77
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.hdmi_spec_per_pin* @get_pin(%struct.hdmi_spec*, i32) #1

declare dso_local %struct.hdmi_spec_per_cvt* @get_cvt(%struct.hdmi_spec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
