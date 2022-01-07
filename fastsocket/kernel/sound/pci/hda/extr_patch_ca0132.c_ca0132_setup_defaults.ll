; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_setup_defaults.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_ca0132_setup_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32* }
%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i64 }

@DSP_DOWNLOADED = common dso_local global i64 0, align 8
@OUT_EFFECTS_COUNT = common dso_local global i32 0, align 4
@IN_EFFECTS_COUNT = common dso_local global i32 0, align 4
@ca0132_effects = common dso_local global %struct.TYPE_2__* null, align 8
@FLOAT_ZERO = common dso_local global i32 0, align 4
@FLOAT_ONE = common dso_local global i32 0, align 4
@FLOAT_TWO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ca0132_setup_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_setup_defaults(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 0
  %10 = load %struct.ca0132_spec*, %struct.ca0132_spec** %9, align 8
  store %struct.ca0132_spec* %10, %struct.ca0132_spec** %3, align 8
  %11 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %12 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DSP_DOWNLOADED, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %95

17:                                               ; preds = %1
  %18 = load i32, i32* @OUT_EFFECTS_COUNT, align 4
  %19 = load i32, i32* @IN_EFFECTS_COUNT, align 4
  %20 = add nsw i32 %18, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %69, %17
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %65, %26
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sle i32 %28, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %27
  %37 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca0132_effects, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dspio_set_uint_param(%struct.hda_codec* %37, i32 %43, i32 %53, i32 %63)
  br label %65

65:                                               ; preds = %36
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %27

68:                                               ; preds = %27
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %22

72:                                               ; preds = %22
  %73 = load i32, i32* @FLOAT_ZERO, align 4
  store i32 %73, i32* %4, align 4
  %74 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @dspio_set_uint_param(%struct.hda_codec* %74, i32 150, i32 60, i32 %75)
  %77 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @dspio_set_uint_param(%struct.hda_codec* %77, i32 143, i32 1, i32 %78)
  %80 = load i32, i32* @FLOAT_ONE, align 4
  store i32 %80, i32* %4, align 4
  %81 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @dspio_set_uint_param(%struct.hda_codec* %81, i32 128, i32 0, i32 %82)
  %84 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @dspio_set_uint_param(%struct.hda_codec* %84, i32 128, i32 1, i32 %85)
  %87 = load i32, i32* @FLOAT_ONE, align 4
  store i32 %87, i32* %4, align 4
  %88 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @dspio_set_uint_param(%struct.hda_codec* %88, i32 128, i32 5, i32 %89)
  %91 = load i32, i32* @FLOAT_TWO, align 4
  store i32 %91, i32* %4, align 4
  %92 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @dspio_set_uint_param(%struct.hda_codec* %92, i32 49, i32 0, i32 %93)
  br label %95

95:                                               ; preds = %72, %16
  ret void
}

declare dso_local i32 @dspio_set_uint_param(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
