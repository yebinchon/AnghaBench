; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_add_controls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_add_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_codec = type { i32, i32, %struct.snd_card* }
%struct.snd_card = type { i32 }
%struct.snd_kcontrol_new = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s: Failed to add %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_add_controls(%struct.snd_soc_codec* %0, %struct.snd_kcontrol_new* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_codec*, align 8
  %6 = alloca %struct.snd_kcontrol_new*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_kcontrol_new*, align 8
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %5, align 8
  store %struct.snd_kcontrol_new* %1, %struct.snd_kcontrol_new** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %12, i32 0, i32 2
  %14 = load %struct.snd_card*, %struct.snd_card** %13, align 8
  store %struct.snd_card* %14, %struct.snd_card** %8, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %44, %3
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %20, i64 %22
  store %struct.snd_kcontrol_new* %23, %struct.snd_kcontrol_new** %11, align 8
  %24 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %25 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %11, align 8
  %26 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %27 = call i32 @snd_soc_cnew(%struct.snd_kcontrol_new* %25, %struct.snd_soc_codec* %26, i32* null)
  %28 = call i32 @snd_ctl_add(%struct.snd_card* %24, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %19
  %32 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %33 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %36 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %11, align 8
  %39 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %48

43:                                               ; preds = %19
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %15

47:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_soc_cnew(%struct.snd_kcontrol_new*, %struct.snd_soc_codec*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
