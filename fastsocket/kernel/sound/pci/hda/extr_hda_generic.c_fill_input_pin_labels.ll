; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_fill_input_pin_labels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_fill_input_pin_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i8**, i32*, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @fill_input_pin_labels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_input_pin_labels(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  %4 = alloca %struct.auto_pin_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %10 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %11 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %10, i32 0, i32 0
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %11, align 8
  store %struct.hda_gen_spec* %12, %struct.hda_gen_spec** %3, align 8
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %14 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %13, i32 0, i32 2
  store %struct.auto_pin_cfg* %14, %struct.auto_pin_cfg** %4, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %93, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %18 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %96

21:                                               ; preds = %15
  %22 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %23 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @is_input_pin(%struct.hda_codec* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  br label %93

35:                                               ; preds = %21
  %36 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %37 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i8* @hda_get_autocfg_input_label(%struct.hda_codec* %36, %struct.auto_pin_cfg* %37, i32 %38)
  store i8* %39, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %75, %35
  %43 = load i32, i32* %8, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %78

45:                                               ; preds = %42
  %46 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %47 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %74

54:                                               ; preds = %45
  %55 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %56 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @strcmp(i8* %61, i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %54
  %66 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %67 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %78

74:                                               ; preds = %54, %45
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %8, align 4
  br label %42

78:                                               ; preds = %65, %42
  %79 = load i8*, i8** %7, align 8
  %80 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %81 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  store i8* %79, i8** %85, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %88 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %78, %34
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %15

96:                                               ; preds = %15
  ret i32 0
}

declare dso_local i32 @is_input_pin(%struct.hda_codec*, i32) #1

declare dso_local i8* @hda_get_autocfg_input_label(%struct.hda_codec*, %struct.auto_pin_cfg*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
