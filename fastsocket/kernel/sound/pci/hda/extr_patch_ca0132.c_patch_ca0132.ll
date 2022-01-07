; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_patch_ca0132.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_patch_ca0132.c_patch_ca0132.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32, %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32, i32, i32, i32, i32*, i32, i32, i32*, %struct.hda_codec* }

@.str = private unnamed_addr constant [14 x i8] c"patch_ca0132\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ca0132_mixer = common dso_local global i32 0, align 4
@ca0132_base_init_verbs = common dso_local global i32 0, align 4
@ca0132_base_exit_verbs = common dso_local global i32 0, align 4
@ca0132_init_verbs0 = common dso_local global i32 0, align 4
@ca0132_init_verbs1 = common dso_local global i32 0, align 4
@ca0132_unsol_hp_delayed = common dso_local global i32 0, align 4
@ca0132_patch_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @patch_ca0132 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_ca0132(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.ca0132_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = call i32 @snd_printdd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ca0132_spec* @kzalloc(i32 48, i32 %7)
  store %struct.ca0132_spec* %8, %struct.ca0132_spec** %4, align 8
  %9 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %10 = icmp ne %struct.ca0132_spec* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %66

14:                                               ; preds = %1
  %15 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 1
  store %struct.ca0132_spec* %15, %struct.ca0132_spec** %17, align 8
  %18 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %19 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %20 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %19, i32 0, i32 8
  store %struct.hda_codec* %18, %struct.hda_codec** %20, align 8
  %21 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %22 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* @ca0132_mixer, align 4
  %24 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %25 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @ca0132_base_init_verbs, align 4
  %29 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %30 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @ca0132_base_exit_verbs, align 4
  %32 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %33 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @ca0132_init_verbs0, align 4
  %35 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %36 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* @ca0132_init_verbs1, align 4
  %40 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %41 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %39, i32* %43, align 4
  %44 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %45 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %44, i32 0, i32 1
  store i32 2, i32* %45, align 4
  %46 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %47 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %46, i32 0, i32 3
  %48 = load i32, i32* @ca0132_unsol_hp_delayed, align 4
  %49 = call i32 @INIT_DELAYED_WORK(i32* %47, i32 %48)
  %50 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %51 = call i32 @ca0132_init_chip(%struct.hda_codec* %50)
  %52 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %53 = call i32 @ca0132_config(%struct.hda_codec* %52)
  %54 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %55 = load %struct.ca0132_spec*, %struct.ca0132_spec** %4, align 8
  %56 = getelementptr inbounds %struct.ca0132_spec, %struct.ca0132_spec* %55, i32 0, i32 2
  %57 = call i32 @snd_hda_parse_pin_def_config(%struct.hda_codec* %54, i32* %56, i32* null)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %14
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %66

62:                                               ; preds = %14
  %63 = load i32, i32* @ca0132_patch_ops, align 4
  %64 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %65 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %60, %11
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @snd_printdd(i8*) #1

declare dso_local %struct.ca0132_spec* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @ca0132_init_chip(%struct.hda_codec*) #1

declare dso_local i32 @ca0132_config(%struct.hda_codec*) #1

declare dso_local i32 @snd_hda_parse_pin_def_config(%struct.hda_codec*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
