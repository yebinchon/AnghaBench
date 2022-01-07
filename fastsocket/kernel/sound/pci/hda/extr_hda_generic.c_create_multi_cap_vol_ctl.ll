; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_create_multi_cap_vol_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_create_multi_cap_vol_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32*, i32*, i32*, %struct.TYPE_4__, %struct.hda_input_mux }
%struct.TYPE_4__ = type { i32 }
%struct.hda_input_mux = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @create_multi_cap_vol_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_multi_cap_vol_ctl(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hda_gen_spec*, align 8
  %5 = alloca %struct.hda_input_mux*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %12, align 8
  store %struct.hda_gen_spec* %13, %struct.hda_gen_spec** %4, align 8
  %14 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %15 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %14, i32 0, i32 4
  store %struct.hda_input_mux* %15, %struct.hda_input_mux** %5, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %83, %1
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.hda_input_mux*, %struct.hda_input_mux** %5, align 8
  %19 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %86

22:                                               ; preds = %16
  %23 = load %struct.hda_input_mux*, %struct.hda_input_mux** %5, align 8
  %24 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %33 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %83

38:                                               ; preds = %22
  %39 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %40 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %41 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @is_inv_dmic_pin(%struct.hda_codec* %39, i32 %46)
  store i32 %47, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %79, %38
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %82

51:                                               ; preds = %48
  %52 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %53 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %54 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %4, align 8
  %61 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @get_first_cap_ctl(%struct.hda_codec* %68, i32 %69, i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @add_single_cap_ctl(%struct.hda_codec* %52, i32 %59, i32 %66, i32 %67, i32 %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %51
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %87

78:                                               ; preds = %51
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %48

82:                                               ; preds = %48
  br label %83

83:                                               ; preds = %82, %37
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %16

86:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %76
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @is_inv_dmic_pin(%struct.hda_codec*, i32) #1

declare dso_local i32 @add_single_cap_ctl(%struct.hda_codec*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_first_cap_ctl(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
