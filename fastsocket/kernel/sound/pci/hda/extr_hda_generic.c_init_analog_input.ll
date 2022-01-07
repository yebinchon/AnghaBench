; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_init_analog_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_init_analog_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32*, i64, %struct.auto_pin_cfg }
%struct.auto_pin_cfg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @init_analog_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_analog_input(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  %4 = alloca %struct.auto_pin_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 0
  %9 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  store %struct.hda_gen_spec* %9, %struct.hda_gen_spec** %3, align 8
  %10 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %11 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %10, i32 0, i32 3
  store %struct.auto_pin_cfg* %11, %struct.auto_pin_cfg** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %56, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %15 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %12
  %19 = load %struct.auto_pin_cfg*, %struct.auto_pin_cfg** %4, align 8
  %20 = getelementptr inbounds %struct.auto_pin_cfg, %struct.auto_pin_cfg* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @is_input_pin(%struct.hda_codec* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @restore_pin_ctl(%struct.hda_codec* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %18
  %36 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %37 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %42 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %43 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @resume_path_from_idx(%struct.hda_codec* %41, i32 %48)
  %50 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %51 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %52 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @resume_path_from_idx(%struct.hda_codec* %50, i32 %53)
  br label %55

55:                                               ; preds = %40, %35
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %12

59:                                               ; preds = %12
  ret void
}

declare dso_local i64 @is_input_pin(%struct.hda_codec*, i32) #1

declare dso_local i32 @restore_pin_ctl(%struct.hda_codec*, i32) #1

declare dso_local i32 @resume_path_from_idx(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
