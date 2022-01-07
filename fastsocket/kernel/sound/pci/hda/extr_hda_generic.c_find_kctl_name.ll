; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_find_kctl_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_generic.c_find_kctl_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i8*, i32)* @find_kctl_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_kctl_name(%struct.hda_codec* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_gen_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_kcontrol_new*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %12 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %11, i32 0, i32 0
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %12, align 8
  store %struct.hda_gen_spec* %13, %struct.hda_gen_spec** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %40, %3
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %17 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %14
  %22 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %8, align 8
  %23 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %22, i32 0, i32 0
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.snd_kcontrol_new* @snd_array_elem(%struct.TYPE_2__* %23, i32 %24)
  store %struct.snd_kcontrol_new* %25, %struct.snd_kcontrol_new** %10, align 8
  %26 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %10, align 8
  %27 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strcmp(i32 %28, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %21
  %33 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %10, align 8
  %34 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %44

39:                                               ; preds = %32, %21
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %14

43:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.snd_kcontrol_new* @snd_array_elem(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
